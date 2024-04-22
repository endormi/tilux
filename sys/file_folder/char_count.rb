#!/usr/bin/ruby

require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Char Count');"`
end

# FileReader is responsible for reading text from files and counting characters.
class FileReader
  # Reads text from the specified file.
  #
  # @param file_path [String] The path to the file.
  # @return [String] The text read from the file.
  def self.read_text_from_file(file_path)
    File.open(file_path, 'r') do |file|
      text = file.read
      text.gsub!(/\r\n?/, "\n")
      return text
    end
  end

  # Counts occurrences of specified characters in the given text.
  #
  # @param text [String] The text in which characters will be counted.
  # @param characters [Array<String>] The characters to be counted.
  # @return [Hash<String, Integer>] A hash containing character counts.
  def self.count_characters(text, characters)
    character_counts = {}
    characters.each do |char|
      character_counts[char] = text.count(char)
    end
    character_counts
  end
end

def count_characters_in_file(file_path, characters)
  text = FileReader.read_text_from_file(file_path)
  length = text.length
  character_counts = FileReader.count_characters(text, characters)

  puts "\n#{length} characters."
  character_counts.each do |char, count|
    puts "#{count} #{char}'s."
  end
end

print 'Choose file: '
file = $stdin.gets.chomp.to_s
empty_input?(file) if ARGV[0] == 'tilux'
unless File.file?(file)
  puts "File '#{file}' doesn't exist!"
  exit
end

puts "\n(Multiple characters are supported e.g. a b c d)"
print 'Choose character(s) (single character only): '
characters_to_count = $stdin.gets.chomp.split(' ')
empty_input?(characters_to_count) if ARGV[0] == 'tilux'
if characters_to_count.any? { |char| char.length > 1 }
  puts 'Only single characters are allowed!'
  exit
end

count_characters_in_file(file, characters_to_count)
