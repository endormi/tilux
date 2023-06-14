#!/usr/bin/ruby

require 'mini_magick'
require_relative 'image_validator'

# ImageResizer is responsible for resizing images and validating the size format.
class ImageResizer
  # Resizes the specified image to the given size.
  #
  # @param image [MiniMagick::Image] The image object to be resized.
  # @param size [String] The size in the format WIDTHxHEIGHT.
  def self.resize_image(image, size)
    image.resize(size)
    puts 'Done!'
  end

  # Validates the format of the size string.
  #
  # @param size [String] The size string to be validated.
  # @raise [SystemExit] If the size string doesn't follow the format WIDTHxHEIGHT.
  def self.validate_size_format(size)
    return if size.include?('x')

    puts 'You need to follow the format WIDTHxHEIGHT.'
    exit
  end
end

def get_resize_dimensions
  print 'What size (follow the format 50x50)? '
  size = $stdin.gets.chomp.to_s
  empty_input?(size) if ARGV[0] == 'tilux'
  ImageResizer.validate_size_format(size)
  size
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Resize img');"`
end

image_path = ImageValidator.get_user_input('What is the image you want to resize? ')
ImageValidator.check_image_existence(image_path)
image = MiniMagick::Image.new(image_path)

resize_dimensions = get_resize_dimensions
ImageResizer.resize_image(image, resize_dimensions)
