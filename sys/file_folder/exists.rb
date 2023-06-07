#!/usr/bin/ruby

require 'io/console'

# FileExistenceChecker is responsible for checking the existence of files and directories.
class FileExistenceChecker
  # Checks if the specified file exists.
  #
  # @param path [String] The path to the file.
  def self.check_file_exists(path)
    exists = File.file?(path)
    result = exists ? "#{path} exists." : "#{path} doesn't exist."
    puts result
  end

  # Checks if the specified directory exists.
  #
  # @param path [String] The path to the directory.
  def self.check_directory_exists(path)
    exists = File.directory?(path)
    result = exists ? "#{path} exists." : "#{path} doesn't exist."
    puts result
  end
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Exists');"`
end

choices = 'file or directory'
puts "Choices: #{choices}"
print 'Choice: '
choice_input = $stdin.gets.chomp.to_s.downcase
empty_input?(choice_input) if ARGV[0] == 'tilux'

if %w[file f].include?(choice_input)
  print 'Path to file: '
  file_path = $stdin.gets.chomp.to_s.strip
  empty_input?(file_path) if ARGV[0] == 'tilux'

  FileExistenceChecker.check_file_exists(file_path)
elsif %w[dir directory d].include?(choice_input)
  print 'Path to directory: '
  dir_path = $stdin.gets.chomp.to_s.strip
  empty_input?(dir_path) if ARGV[0] == 'tilux'

  FileExistenceChecker.check_directory_exists(dir_path)
else
  puts 'Invalid choice!'
  puts "Use #{choices}"
end
