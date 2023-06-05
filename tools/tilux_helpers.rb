#!/usr/bin/ruby

# Helper class for Tilux-related methods
class TiluxHelpers
  # Load the version from a file
  def self.load_version
    File.open('.version') { |file| file.read.strip }
  end

  # Generate the prompt for Tilux
  def self.prompt
    "\ntilux~# ".light_yellow
  end

  # Clear the screen and execute a system command
  def self.sys(file)
    system('clear')
    system(file)
  end

  # Execute a command with arguments
  def self.execute_args(*args)
    args
  end

  # Execute a command, either as a callable object or with arguments
  def self.execute_command(command)
    case command
    when Proc
      command.call
    else
      execute_args(command)
    end
  end
end
