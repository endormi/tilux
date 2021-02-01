#!/usr/bin/ruby
# frozen_string_literal: true

# require "rubypython"
require_relative '../tools/catch_exception'

# RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("Exists")

# RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('Exists');"`

choice = 'file or directory'
puts "Choices: #{choice}"
print 'Choice: '
fd = gets.chomp.to_s.downcase

empty_input?(fd)

if %w[file f].include?(fd)
  print 'Path to file: '
  f = gets.chomp.to_s.strip
  empty_input?(f)
  res = File.file?(f) == true ? "#{f} exists" : "#{f} doesn't exist"
  puts "\n#{res}"

elsif %w[file f file f dir directory d].include?(fd)
  print 'Path to directory: '
  d = gets.chomp.to_s.strip
  empty_input?(d)
  res = File.directory?(d) == true ? "#{d} exists" : "#{d} doesn't exist"
  puts "\n#{res}"
else
  puts "\nWrong choice!"
  puts "Use #{choice}"
end
