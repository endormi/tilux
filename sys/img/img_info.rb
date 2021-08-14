#!/usr/bin/ruby

require 'mini_magick'
require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Img info');"`
end

print 'What is the image you want to get info about? '
img = $stdin.gets.chomp.to_s
empty_input?(img) if ARGV[0] == 'tilux'
unless File.file?(img)
  puts "File doesn't exist."
  exit
end
# TODO: Error message if not image
image = MiniMagick::Image.open(img)
puts "Image type: #{image.mime_type}"
puts "Image width: #{image.width} and height: #{image.height}"
puts "Image size: #{image.size}"
puts "Colorspace: #{image.colorspace}"
puts "Image signature: #{image.signature}"
