#!/usr/bin/ruby


class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  # lighter colors
  def light_color(c)
    "\e[1;#{c}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def light_green
    light_color(32)
  end

  def yellow
    colorize(33)
  end

  def light_yellow
    light_color(33)
  end

  def blue
    colorize(34)
  end
end
