require 'io/console'
require_relative '../tools/catch_exception'
require_relative '../tools/tilux/command_processor'
require_relative '../tools/tilux/helpers'

RSpec.describe TiluxCommandProcessor do
  let(:command_processor) { TiluxCommandProcessor.new('1.0') }

  before do
    allow(TiluxHelpers).to receive(:sys)
    allow(TiluxHelpers).to receive(:sys).with('clear').and_return(nil)
  end

  describe '#print_header' do
    it 'prints the header' do
      expect do
        command_processor.print_header
      end.to output(/.*ooooooooooooo.*ooooo.*ooooo.*ooooo.*ooooo.*ooooo.*/m).to_stdout
    end
  end

  describe '#print_option' do
    it 'executes the selected choice' do
      allow(Kernel).to receive(:system)
      cmd_hash = {
        '1' => -> { puts 'Choice 1' },
        '2' => -> { puts 'Choice 2' }
      }

      expect(TiluxHelpers).to receive(:execute_args).with(nil, nil, nil)
      expect { command_processor.print_option('1', cmd_hash) }.to output(include("Choice 1\n")).to_stdout
    end

    it 'aborts when choice is invalid' do
      allow(Kernel).to receive(:system)
      cmd_hash = {
        '1' => -> { puts 'Choice 1' },
        '2' => -> { puts 'Choice 2' }
      }

      expect(TiluxHelpers).not_to receive(:execute_args)
      # Redirect stdout and stderr to /dev/null (Unix-like systems) or NUL (Windows)
      allow($stdout).to receive(:write)
      allow($stderr).to receive(:write)
      expect { command_processor.print_option('3', cmd_hash) }.to raise_error(SystemExit, 'Invalid choice!')
    end
  end

  describe '#choices' do
    it 'executes the corresponding action' do
      allow(TiluxHelpers).to receive(:execute_command)
      allow(Kernel).to receive(:system) # Stub the system method to disable the call
      allow(command_processor).to receive(:system)
      expect(command_processor).to receive(:print_option).with('1', instance_of(Hash))
      command_processor.choices('1')
    end
  end

  describe '#nested_choices' do
    it 'executes the corresponding action' do
      allow(TiluxHelpers).to receive(:execute_command)
      allow(Kernel).to receive(:system) # Stub the system method to disable the call
      allow(command_processor).to receive(:system)
      expect(command_processor).to receive(:print_option).with('-cc', instance_of(Hash))
      command_processor.nested_choices('-cc')
    end
  end

  describe '#prompt' do
    it 'returns a formatted prompt with the correct color' do
      # Stub or set up any necessary methods or properties, including load_colors
      allow(command_processor).to receive(:load_colors).and_return({ 'prompt_color' => 'light_yellow' })
      expected_prompt = "\ntilux~# ".send(command_processor.instance_variable_get(:@all_colors)['prompt_color'])
      expect(command_processor.prompt).to eq(expected_prompt)
    end
  end

  describe '#print_script_prompt' do
    it 'prints the script prompt' do
      expect { command_processor.print_script_prompt }.to output(/.*What script do you want to run?.*/).to_stdout
    end
  end

  describe '#call_value' do
    it 'executes the value as a command' do
      expect(TiluxHelpers).to receive(:execute_command).with(instance_of(Proc))
      command_processor.call_value(-> { puts 'Value' })
    end

    it 'aborts when value is nil' do
      expect(TiluxHelpers).not_to receive(:execute_command)
      # Redirect stdout and stderr to /dev/null (Unix-like systems) or NUL (Windows)
      allow($stdout).to receive(:write)
      allow($stderr).to receive(:write)
      expect { command_processor.call_value(nil) }.to raise_error(SystemExit, 'Invalid choice!')
    end
  end

  describe '#interactive_script' do
    before do
      allow(TiluxHelpers).to receive(:get_user_input).and_return('1', '2', '1', nil)
      allow(TiluxHelpers).to receive(:determine_value).with('1', '2', anything).and_return(-> { puts 'Value' })
    end

    it 'executes the script interactively' do
      allow(TiluxHelpers).to receive(:get_user_input).and_return('1', '-cc', '1', nil)
      expect(command_processor).to receive(:print_script_prompt)
      expect(command_processor).to receive(:choices).with('1')
      expect(command_processor).to receive(:nested_choices).with('-cc')
      expect(command_processor).to receive(:call_value).with(instance_of(Proc))

      # Adjust the expectation for determine_value based on the arguments
      expect(TiluxHelpers).to receive(:determine_value).with('1', '-cc', anything).and_return(-> { puts 'Value' })
      command_processor.interactive_script
    end
  end

  describe '#execute_from_arguments' do
    it 'prints help when arg_number is --help' do
      expect(command_processor).to receive(:call_value).with(nil).once
      command_processor.execute_from_arguments
    end

    it 'executes the value based on arguments' do
      expect(TiluxHelpers).to receive(:extract_arguments).and_return(['1', '-cc', nil])
      expect(TiluxHelpers).to receive(:determine_value).with('1', '-cc', nil).and_return(-> { puts 'Value' })
      expect(command_processor).to receive(:call_value).with(instance_of(Proc))
      command_processor.execute_from_arguments
    end
  end

  describe '#run_script' do
    context 'when no command line arguments are provided' do
      before do
        allow(ARGV).to receive(:empty?).and_return(true)
      end

      it 'runs the script interactively' do
        expect(command_processor).to receive(:interactive_script)
        command_processor.run_script
      end
    end

    context 'when command line arguments are provided' do
      before do
        allow(ARGV).to receive(:empty?).and_return(false)
      end

      it 'executes the script based on the arguments' do
        expect(command_processor).to receive(:execute_from_arguments)
        command_processor.run_script
      end
    end
  end
end
