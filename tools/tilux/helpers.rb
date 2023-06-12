#!/usr/bin/ruby

require_relative 'color_names'

# Helper module for Tilux-related methods
module TiluxHelpers
  # Load the version from a file
  #
  # @return [String] The version string read from the file.
  def self.load_version
    File.open('.version') { |file| file.read.strip }
  end

  # Generate the prompt for Tilux
  #
  # @return [String] The prompt string.
  def self.prompt
    "\ntilux~# ".light_yellow
  end

  # Clear the screen and execute a system command
  #
  # @param file [String] The system command to execute.
  def self.sys(file)
    system('clear')
    system(file)
  end

  # Execute a command with arguments
  #
  # @param args [Array] The command arguments.
  # @return [Array] The command arguments.
  def self.execute_args(*args)
    args
  end

  # Execute a command, either as a callable object or with arguments
  #
  # @param command [Object] The command to execute.
  def self.execute_command(command)
    case command
    when Proc
      command.call
    else
      execute_args(command)
    end
  end

  # Gets user input from the console and returns the input as a lowercase, stripped string.
  #
  # @return [String] The user input.
  def self.get_user_input
    gets.chomp.downcase.strip
  end

  # Retrieves the argument at the specified index from the command-line arguments (ARGV) array.
  #
  # The argument is converted to lowercase and stripped before returning.
  # If the argument is not nil, it updates the ARGV array with the modified argument.
  #
  # @param index [Integer] The index of the argument in the ARGV array.
  # @return [String, nil] The argument at the specified index, or nil if it doesn't exist.
  def self.get_argument(index)
    arg = ARGV[index]&.downcase&.strip
    ARGV[index] = arg if arg
    arg
  end

  # Extracts command-line arguments from the ARGV array and returns them as an array.
  #
  # The arguments are obtained using the get_argument method.
  #
  # @return [Array<String>] An array containing the extracted arguments.
  def self.extract_arguments
    [
      get_argument(0),
      get_argument(1),
      get_argument(2)
    ]
  end

  # Determine the value based on the provided arguments.
  #
  # If `arg_script` is provided, retrieve the nested value from `$opts` using `arg_number`, `arg_option`,
  # and `arg_script` as keys. Otherwise, retrieve the value from `$opts` using `arg_number` and `arg_option` as keys.
  #
  # @return [Object] The retrieved value from `$opts` based on the provided arguments.
  def self.determine_value(arg_number, arg_option, arg_script)
    if arg_script
      $opts.dig(:"#{arg_number}", :"#{arg_option}", :"#{arg_script}")
    else
      $opts.dig(:"#{arg_number}", :"#{arg_option}")
    end
  end

  # Clear the terminal screen, print the help information and exit the program.
  def self.print_help
    sys('clear')
    help_print
    exit
  end
end
