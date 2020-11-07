#!/usr/bin/ruby

require "rubypython"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append(".")
  lg = RubyPython.import("logos")
  lg.Logo("Exists")

RubyPython.stop


choice = "file or directory"
puts "Choices: #{choice}"
print "Choice: "
fd = gets.chomp.to_s.downcase

if (fd == "file" || fd == "f")
  print "Path to file: "
  f = gets.chomp.to_s
  if File.file?(f) == true
    puts "\n#{f} exists"
  else
    puts "\n#{f} doesn't exist"
  end

elsif (fd == "dir" || fd == "directory" || fd == "d")
  print "Path to directory: "
  d = gets.chomp.to_s
  if File.directory?(d) == true
    puts "\n#{d} exists"
  else
    puts "\n#{d} doesn't exist"
  end
else
  puts "\nWrong choice!"
  puts "Use #{choice}"
end
