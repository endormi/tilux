require 'io/console'

# ImageValidator is responsible for validating the existence of an image file.
class ImageValidator
  # Prompts the user with the given text and retrieves the user-provided input. It returns the input as a string.
  # If running in a specific context (e.g., 'tilux'), it performs optional validation for empty input.
  #
  # @param text [String] The text prompt to display to the user.
  # @return [String] The user-provided input.
  def self.get_user_input(text)
    print text
    input = $stdin.gets.chomp.to_s
    empty_input?(input) if ARGV[0] == 'tilux'
    input
  end

  # Checks if the specified image file exists.
  #
  # @param img [String] The path to the image file.
  def self.check_image_existence(img)
    [puts("File doesn't exist."), exit] unless File.file?(img)
  end
end
