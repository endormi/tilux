#!/usr/bin/ruby

require "rubypython"
require_relative "../tools/catch_exception"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append("./tools")
  lg = RubyPython.import("logos")
  lg.Logo("Exists")

RubyPython.stop


choice = "file or directory"
puts "Choices: #{choice}"
print "Choice: "
fd = gets.chomp.to_s.downcase

if (fd == "file" || fd == "f")
  print "Path to file: "
  f = gets.chomp.to_s.strip
  res = File.file?(f) == true ? "#{f} exists" : "#{f} doesn't exist"
  puts "\n#{res}"

elsif (fd == "dir" || fd == "directory" || fd == "d")
  print "Path to directory: "
  d = gets.chomp.to_s.strip
  res = File.directory?(d) == true ? "#{d} exists" : "#{d} doesn't exist"
  puts "\n#{res}"
else
  puts "\nWrong choice!"
  puts "Use #{choice}"
end
