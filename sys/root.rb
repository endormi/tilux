#!/usr/bin/ruby

require "rubypython"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append(".")
  lg = RubyPython.import("logos")
  lg.Logo("Root")

RubyPython.stop

if ($EUID == 0)
  puts "You are root."
else
  puts "You are not root."
end