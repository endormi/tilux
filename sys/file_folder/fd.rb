#!/usr/bin/ruby

require 'io/console'

# FileCounter is a utility class responsible for counting files and folders in a directory.
class FileCounter
  # Counts the number of files in the specified directory.
  #
  # @param directory [String] The path to the directory.
  # @return [Integer] The number of files in the directory.
  def self.count_files(directory)
    Dir.glob(File.join(directory, '*')).count { |file| File.file?(file) }
  end

  # Counts the number of files, including subdirectories, in the specified directory.
  #
  # @param directory [String] The path to the directory.
  # @return [Integer] The number of files, including subdirectories, in the directory.
  def self.count_files_with_subdirectories(directory)
    Dir.glob(File.join(directory, '**', '*')).count { |file| File.file?(file) }
  end

  # Counts the number of folders, including subdirectories, in the specified directory.
  #
  # @param directory [String] The path to the directory.
  # @return [Integer] The number of folders, including subdirectories, in the directory.
  def self.count_folders(directory)
    Dir.glob(File.join(directory, '**', '*')).count { |file| File.directory?(file) }
  end
end

def get_directory_path
  print 'Path to directory: '
  dir = $stdin.gets.chomp.to_s.strip
  empty_input?(dir) if ARGV[0] == 'tilux'
  dir
end

def check_directory_existence(dir)
  unless File.directory?(dir)
    puts "#{dir} doesn't exist."
    exit
  end
end

def retrieve_user_input
  print 'Choice: '
  choice = $stdin.gets.chomp.to_s.downcase
  empty_input?(choice) if ARGV[0] == 'tilux'
  choice
end

def get_user_choice(choices)
  puts "\nNOTE: This is for files only for now and not dirs.."
  puts "Choices: #{choices}"
  retrieve_user_input
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('FD');"`
end

directory_path = get_directory_path
check_directory_existence(directory_path)

choices = 'ns (no subdirectories) or s (subdirectories)'
user_choice = get_user_choice(choices)

file_count = case user_choice
             when '1', 'ns', '-ns', '--ns'
               FileCounter.count_files(directory_path)
             when '2', 's', '-s', '--s'
               FileCounter.count_files_with_subdirectories(directory_path)
             else
               puts 'Invalid choice!'
               exit
             end

folder_count = FileCounter.count_folders(directory_path)

puts "Found files: #{file_count}"
puts "Found folders: #{folder_count}"
