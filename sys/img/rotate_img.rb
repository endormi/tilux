#!/usr/bin/ruby

require 'mini_magick'
require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Rotate img');"`
end

print 'What is the image you want to rotate? '
img = $stdin.gets.chomp.to_s
empty_input?(img) if ARGV[0] == 'tilux'
unless File.file?(img)
  puts "File doesn't exist."
  exit
end
# TODO: Error message if not image
image = MiniMagick::Image.new(img)
print 'Rotate (for example. -90): '
rotate = $stdin.gets.chomp.to_s
empty_input?(rotate) if ARGV[0] == 'tilux'
image.rotate rotate
puts 'Done!'
