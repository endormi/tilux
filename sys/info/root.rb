#!/usr/bin/ruby

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Root');"`
end

sleep 0.5
if $EUID == 0
  puts 'You are root.'
else
  puts 'You are not root.'
end
