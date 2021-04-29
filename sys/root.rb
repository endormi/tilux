#!/usr/bin/ruby

# require "rubypython"
require_relative '../tools/catch_exception'

# RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("Root")

# RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('Root');"`

sleep 0.5
if $EUID == 0
  puts 'You are root.'
else
  puts 'You are not root.'
end
