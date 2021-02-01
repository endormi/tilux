#!/usr/bin/ruby
# frozen_string_literal: true

# require "rubypython"
require_relative '../tools/catch_exception'

# RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("File updated")

# RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('File updated');"`

print 'Filename: '
f = gets.chomp.to_s.strip

empty_input?(f)

if File.file?(f) == true
  ft = File.mtime(f.to_s).strftime('%d/%m/%Y %H:%M')
  puts "File updated: #{ft}"
else
  puts "#{f} doesn't exist."
end
