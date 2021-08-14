#!/usr/bin/ruby

require 'rbconfig'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('OS');"`
end

sleep 0.5
os = RbConfig::CONFIG['host_os']
puts "OS: #{os}"
