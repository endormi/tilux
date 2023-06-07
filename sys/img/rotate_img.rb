#!/usr/bin/ruby

require 'mini_magick'

# RotateImage is a utility class that provides a method for rotating an image.
class RotateImage
  # Rotates the specified image by the given angle.
  #
  # @param image [MiniMagick::Image] The image to rotate.
  # @param angle [Float, Integer] The angle of rotation in degrees.
  def self.rotate_image(image, angle)
    image.rotate(angle)
    puts 'Done!'
  end
end

def get_rotation_angle
  print 'Rotate (for example, -90): '
  ImageValidator.get_user_input('Rotate (for example, -90): ')
end

if ARGV[0] == 'tilux'
  require_relative 'image_validator'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Rotate img');"`
end

image_path = ImageValidator.get_user_input('What is the image you want to rotate? ')
ImageValidator.check_image_existence(image_path)
image = MiniMagick::Image.new(image_path)
rotation_angle = get_rotation_angle
RotateImage.rotate_image(image, rotation_angle)
