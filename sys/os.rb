#!/usr/bin/ruby

require 'rbconfig'
require_relative '../tools/catch_exception'

print `python3 -c "from tools.logos import Logo; Logo('OS');"` if ARGV[0] == 'tilux'

sleep 0.5
os = RbConfig::CONFIG['host_os']
puts "OS: #{os}"
