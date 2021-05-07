#!/usr/bin/ruby

require 'mini_magick'
require 'io/console'
require_relative '../tools/catch_exception'

print `python3 -c "from tools.logos import Logo; Logo('Convert img');"` if ARGV[0] == 'tilux'

# You need ImageMagick or GraphicsMagick CLI tool installed.
puts "Note: This makes a copy of the original image.\nIt doesn't overwrite.\n\n"

print 'What is the image you want to convert? '
img = $stdin.gets.chomp.to_s
empty_input?(img)
unless File.file?(img)
  puts "File doesn't exist."
  exit
end
# TODO: Error message if not image
image = MiniMagick::Image.open(img)
puts 'Format: i.e. JPG, PNG etc.'
print 'What format for the image (do not add .)? '
format = $stdin.gets.chomp.to_s
empty_input?(format)
if format.include? '.'
  puts 'Do not add .'
  exit
end
image.format format
puts "\nUse the same file extension as in format."
puts "Using a different file extension as format works, but it will most likely cause issues.\n\n"
print 'Save image as: '
name = $stdin.gets.chomp.to_s
empty_input?(name)
unless name.include? '.'
  puts 'You need to add the file extension.'
  exit
end
if File.file?(name)
  puts 'File already exists.'
  exit
end
image.write name
puts 'Done!'
