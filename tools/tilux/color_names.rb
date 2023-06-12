#!/usr/bin/ruby

# ANSI-Colors module for Ruby string colors
module ANSIColors
  def color(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def light_color(lcolor_code)
    "\e[1;#{lcolor_code}m#{self}\e[0m"
  end

  def red
    color(31)
  end

  def light_red
    light_color(31)
  end

  def green
    color(32)
  end

  def light_green
    light_color(32)
  end

  def yellow
    color(33)
  end

  def light_yellow
    light_color(33)
  end

  def blue
    color(34)
  end

  def light_blue
    light_color(34)
  end

  def white
    light_color(37)
  end
end

# Include ANSIColors module in the String class
String.include(ANSIColors)
