#!/usr/bin/ruby

require "rubypython"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append(".")
  lg = RubyPython.import("logos")
  lg.Logo("File updated")

RubyPython.stop


print "Filename: "
f = gets.chomp.to_s

ft = File.mtime("#{f}").strftime("%d/%m/%Y %H:%M")
puts "File updated: #{ft}"
