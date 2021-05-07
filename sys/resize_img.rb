#!/usr/bin/ruby

require 'mini_magick'
require 'io/console'
require_relative '../tools/catch_exception'

print `python3 -c "from tools.logos import Logo; Logo('Resize img');"` if ARGV[0] == 'tilux'

# You need ImageMagick or GraphicsMagick CLI tool installed.
print 'What is the image you want to resize? '
img = $stdin.gets.chomp.to_s
empty_input?(img)
unless File.file?(img)
  puts "File doesn't exist."
  exit
end
# TODO: Error message if not image
image = MiniMagick::Image.new(img)
print 'What size (follow the format 50x50)? '
size = $stdin.gets.chomp.to_s
empty_input?(size)
unless size.include? 'x'
  puts 'You need to follow the format WIDTHxHEIGHT.'
  exit
end
image.resize size
puts 'Done!'
