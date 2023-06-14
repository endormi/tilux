#!/usr/bin/ruby

require 'mini_magick'
require_relative 'image_validator'

# ImageFormatHandler is a utility class that provides methods for handling image formats.
class ImageFormatHandler
  # Get the image format from user input.
  #
  # @return [String] The image format provided by the user.
  def self.get_image_format
    puts 'Format: i.e. JPG, PNG, etc.'
    ImageValidator.get_user_input('What format for the image (do not add .)? ')
  end

  # Validate the image format.
  #
  # @param format [String] The image format to validate.
  def self.validate_format(format)
    return unless format.include?('.')

    puts 'Do not add .'
    exit
  end
end

def get_new_image_name
  puts "\nUse the same file extension as in the format."
  puts "Using a different file extension as format works, but it will most likely cause issues.\n\n"
  ImageValidator.get_user_input('Save image as: ')
end

def validate_new_image_name(name)
  return puts('You need to add the file extension.'), exit unless name.include?('.')
  return puts('File already exists.'), exit if File.file?(name)
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Convert img');"`
end

image_path = ImageValidator.get_user_input('What is the image you want to convert? ')
ImageValidator.check_image_existence(image_path)
image = MiniMagick::Image.open(image_path)

image_format = ImageFormatHandler.get_image_format
ImageFormatHandler.validate_format(image_format)
new_image_name = get_new_image_name
validate_new_image_name(new_image_name)
image.write(new_image_name)
puts 'Done!'
