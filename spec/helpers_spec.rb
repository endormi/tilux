require_relative '../tools/tilux/helpers'

RSpec.describe TiluxHelpers do
  describe '.load_version' do
    it 'reads the version string from the file' do
      allow(File).to receive(:open).with('.version').and_return('1.0')
      version = described_class.load_version
      expect(version).to eq('1.0')
    end
  end

  describe '.prompt' do
    it 'returns the Tilux prompt string' do
      prompt = described_class.prompt
      expect(prompt).to eq("\ntilux~# ".light_yellow)
    end
  end

  describe '.sys' do
    it 'clears the screen and executes the given system command' do
      expect(described_class).to receive(:system).with('clear')
      expect(described_class).to receive(:system).with('ls')
      described_class.sys('ls')
    end
  end

  describe '.execute_args' do
    it 'returns the command arguments' do
      args = described_class.execute_args('arg1', 'arg2', 'arg3')
      expect(args).to eq(%w[arg1 arg2 arg3])
    end
  end

  describe '.execute_command' do
    context 'when the command is a callable object' do
      it 'calls the command' do
        command = proc { puts 'Executing command...' }
        expect(command).to receive(:call)
        described_class.execute_command(command)
      end
    end

    context 'when the command is not a callable object' do
      it 'executes the command with arguments' do
        expect(described_class).to receive(:execute_args).with('command')
        described_class.execute_command('command')
      end
    end
  end

  describe '.get_user_input' do
    it 'returns the user input as a lowercase, stripped string' do
      allow(described_class).to receive(:gets).and_return("   Input  \n")
      input = described_class.get_user_input
      expect(input).to eq('input')
    end
  end

  describe '.get_argument' do
    it 'returns the argument at the specified index' do
      ARGV[0] = 'argument'
      argument = described_class.get_argument(0)
      expect(argument).to eq('argument')
    end

    it 'does not modify the ARGV array if the argument is not nil' do
      ARGV[1] = 'argument'
      described_class.get_argument(1)
      expect(ARGV).to eq(%w[argument argument])
    end

    it 'returns nil if the argument is nil' do
      ARGV[2] = nil
      argument = described_class.get_argument(2)
      expect(argument).to be_nil
    end
  end

  describe '.extract_arguments' do
    it 'returns an array containing the extracted arguments' do
      allow(described_class).to receive(:get_argument).with(0).and_return('arg1')
      allow(described_class).to receive(:get_argument).with(1).and_return('arg2')
      allow(described_class).to receive(:get_argument).with(2).and_return('arg3')

      arguments = described_class.extract_arguments
      expect(arguments).to eq(%w[arg1 arg2 arg3])
    end
  end

  describe '.determine_value' do
    context 'when arg_script is provided' do
      it 'retrieves the nested value from $opts' do
        $opts = { arg1: { arg2: { arg3: 'Value' } } }
        value = described_class.determine_value('arg1', 'arg2', 'arg3')
        expect(value).to eq('Value')
      end
    end

    context 'when arg_script is not provided' do
      it 'retrieves the value from $opts' do
        $opts = { arg1: { arg2: 'Value' } }
        value = described_class.determine_value('arg1', 'arg2', nil)
        expect(value).to eq('Value')
      end
    end
  end
end
