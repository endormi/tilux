#!/usr/bin/ruby

require 'date'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Parse date');"`
end

now = DateTime.now
date = now.strftime '%d/%m/%Y'
time = now.strftime '%H:%M'

sleep 0.5
puts "Current date is: #{date}"
sleep 0.5
puts "Current time is: #{time}"
