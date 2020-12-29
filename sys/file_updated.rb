#!/usr/bin/ruby

require "rubypython"
require_relative "../tools/catch_exception"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append("./tools")
  lg = RubyPython.import("logos")
  lg.Logo("File updated")

RubyPython.stop


print "Filename: "
f = gets.chomp.to_s

if (File.file?(f) == true)
  ft = File.mtime("#{f}").strftime("%d/%m/%Y %H:%M")
  puts "File updated: #{ft}"
else
  puts "#{f} doesn't exist."
end
