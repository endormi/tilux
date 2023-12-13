#!/usr/bin/ruby

require_relative '../catch_exception'
require_relative 'ansi_colors'
require_relative 'color_settings'
require_relative 'command_options'
require_relative 'helpers'
require_relative 'print_options'

HEADER = "
    ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
    8    888    8  888   888          888       8    8888    d8
         888       888   888          888       8     Y888..8P
         888       888   888          888       8       8888
         888       888   888          888       8     .8PY888.
         888       888   888       o   88.    .8     d8    888b
        o888o     o888o o888ooooood8     YbodP     o888o  o88888o
".freeze

# TiluxCommandProcessor is responsible for processing user commands and executing corresponding actions.
class TiluxCommandProcessor
  def initialize(version)
    @all_colors = ColorSettings.load_colors
    @version = version
  end

  def print_header
    puts HEADER.send(@all_colors['header_color'])
    print 'version'.send(@all_colors['version_text_color']), " #{@version}".send(@all_colors['version_number_color'])
    print ' by Endormi '.send(@all_colors['author_color'])
    print "\e]8;;https://github.com/endormi/tilux\a(github.com/endormi/tilux)\e]8;;\a".send(@all_colors['link_color'])
    print "\n"
  end

  # Prints the option choices and executes the selected choice.
  #
  # @param choice [String] The user's choice.
  # @param cmd_hash [Hash] The hash containing the command options.
  def print_option(choice, cmd_hash)
    cmd = cmd_hash[choice]
    if cmd
      TiluxHelpers.execute_args(
        empty_input?(choice),
        TiluxHelpers.sys('clear'),
        cmd.call
      )
    else
      abort 'Invalid choice!'
    end
    print prompt
  end

  # Handles the main choices and executes the corresponding action.
  #
  # @param choice [String] The user's choice.
  def choices(choice)
    print_cmd = {
      '1'      => -> { crypto_print },
      '2'      => -> { monitoring_print },
      '3'      => -> { net_print },
      '4'      => -> { system_print },
      '--help' => -> { TiluxHelpers.print_help }
    }

    TiluxHelpers.execute_command(
      print_option(choice, print_cmd)
    )
  end

  # Handles the nested choices and executes the corresponding action.
  #
  # @param nested_choice [String] The user's choice.
  def nested_choices(nested_choice)
    cryptography_lambda = -> { cryptography_print }

    nested_print_cmd = {
      '-cc'  => cryptography_lambda,
      '-op'  => cryptography_lambda,
      '-pc'  => cryptography_lambda,
      '-zp'  => cryptography_lambda,
      '-c'   => -> { systemc_print },
      '-f'   => -> { systemf_print },
      '-img' => -> { systemi_print },
      '-i'   => -> { systemin_print },
      '-o'   => -> { systemo_print },
      '-p'   => -> { systemp_print },
      '-s'   => -> { systems_print }
    }

    TiluxHelpers.execute_command(
      print_option(nested_choice, nested_print_cmd)
    )
  end

  # Generate the prompt for Tilux
  #
  # @return [String] The prompt string.
  def prompt
    "\ntilux~# ".send(@all_colors['prompt_color'])
  end

  # Prints the prompt for script selection.
  def print_script_prompt
    puts "\nWhat script do you want to run?\n".send(@all_colors['prompt_text_color'])
    tilux_print
    print prompt
  end

  # Executes the specified value as a command.
  #
  # @param value [Object] The value to execute as a command.
  def call_value(value)
    abort('Invalid choice!') unless value
    TiluxHelpers.execute_command(value)
  end

  def interactive_script
    print_script_prompt
    input_number = TiluxHelpers.get_user_input
    choices(input_number)

    input_option = TiluxHelpers.get_user_input
    nested_value = $opts.dig(:"#{input_number}", :"#{input_option}")

    # Means that it has more nested hashes
    if nested_value.is_a?(Hash)
      nested_choices(input_option)
      input_script = TiluxHelpers.get_user_input
    end

    value = TiluxHelpers.determine_value(input_number, input_option, input_script)
    call_value(value)
  end

  def execute_from_arguments
    arg_number, arg_option, arg_script = TiluxHelpers.extract_arguments
    TiluxHelpers.print_help if arg_number == '--help'

    value = TiluxHelpers.determine_value(arg_number, arg_option, arg_script)
    call_value(value)
  end

  # Runs the script based on the presence of command line arguments.
  def run_script
    if ARGV.empty?
      interactive_script
    else
      execute_from_arguments
    end
  end
end
