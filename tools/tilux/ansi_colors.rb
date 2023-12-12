#!/usr/bin/ruby

# ANSI-Colors module for Ruby string colors
module ANSIColors
  COLOR_CODES = {
    'black' => 30,
    'red' => 31,
    'green' => 32,
    'yellow' => 33,
    'blue' => 34,
    'purple' => 35,
    'cyan' => 36,
    'white' => 37,
  }.freeze

  def color(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def light_color(lcolor_code)
    "\e[1;#{lcolor_code}m#{self}\e[0m"
  end

  COLOR_CODES.each do |color_name, color_code|
    define_method(color_name) { color(color_code.to_s) }
    define_method("light_#{color_name}") { light_color(color_code.to_s) }
  end
end

# Include ANSIColors module in the String class
String.include(ANSIColors)
