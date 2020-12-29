#!/usr/bin/ruby

require "rubypython"
require "date"
require_relative "../tools/catch_exception"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append("./tools")
  lg = RubyPython.import("logos")
  lg.Logo("Parse date")

RubyPython.stop

now = DateTime.now
date = now.strftime "%d/%m/%Y"
time = now.strftime "%H:%M"

puts "Current date is: #{date}"
puts "Current time is: #{time}"
