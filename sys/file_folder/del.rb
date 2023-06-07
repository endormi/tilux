#!/usr/bin/ruby

require 'fileutils'
require 'io/console'

# FileRemover provides methods for removing files and folders from the system.
class FileRemover
  # Asks for user confirmation to remove an item.
  #
  # @param item [String] the item to be removed.
  # @return [Boolean] true if the user confirms removal, false otherwise.
  def self.confirm_removal(item)
    print "Are you sure you want to remove the #{item}? (Y/n) "
    yn = $stdin.gets.chomp.downcase
    empty_input?(yn) if ARGV[0] == 'tilux'
    %w[y yes].include?(yn)
  end

  # Removes an existing file from the system.
  #
  # @param path [String] the path of the file to be removed.
  def self.remove_existing_file(path)
    puts "\nRemoving file..."
    sleep 1
    File.delete(path)
    puts "File #{path} has been deleted."
  end

  # Removes a folder and its contents from the system.
  #
  # @param path [String] the path of the folder to be removed.
  def self.remove_folder(path)
    puts "\nRemoving folder..."
    sleep 1
    FileUtils.remove_dir(path)
    puts "Folder #{path} has been deleted."
  end
end

def exiting
  puts "\nExiting..."
  sleep 1
end

def remove_file(path)
  if File.file?(path)
    if FileRemover.confirm_removal('file')
      FileRemover.remove_existing_file(path)
    else
      exiting
    end
  else
    puts "#{path} doesn't exist or is not a file."
  end
end


def remove_directory(path)
  if File.directory?(path)
    if FileRemover.confirm_removal('folder')
      FileRemover.remove_folder(path)
    else
      exiting
    end
  else
    puts "#{path} doesn't exist or is not a directory."
  end
end

def get_user_choice(choices)
  puts "Choices: #{choices}"
  print 'Choice: '
  choice = $stdin.gets.chomp.downcase
  empty_input?(choice) if ARGV[0] == 'tilux'

  choice
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Del');"`
end

choices = 'file or directory'
user_choice = get_user_choice(choices)

if %w[file f].include?(user_choice)
  print 'Path to file: '
  file_path = $stdin.gets.chomp.strip
  empty_input?(file_path) if ARGV[0] == 'tilux'

  remove_file(file_path)
elsif %w[dir directory d].include?(user_choice)
  print 'Path to directory: '
  dir_path = $stdin.gets.chomp.strip
  empty_input?(dir_path) if ARGV[0] == 'tilux'

  remove_directory(dir_path)
else
  puts 'Invalid choice!'
  puts "Use #{choices}"
end
