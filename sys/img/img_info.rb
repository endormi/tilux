#!/usr/bin/ruby

require 'mini_magick'
require_relative 'image_validator'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Img info');"`
end

image_path = ImageValidator.get_user_input('What is the image you want to get info about? ')
ImageValidator.check_image_existence(image_path)
image = MiniMagick::Image.open(image_path)
puts "Image type: #{image.mime_type}"
puts "Image width: #{image.width} and height: #{image.height}"
puts "Image size: #{image.size}"
puts "Colorspace: #{image.colorspace}"
puts "Image signature: #{image.signature}"
