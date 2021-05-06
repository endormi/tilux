#!/usr/bin/ruby

require 'socket'
require_relative '../tools/catch_exception'

print `python3 -c "from tools.logos import Logo; Logo('Hostname');"` if ARGV[0] == 'tilux'

sleep 0.5
host = Socket.gethostname
puts "Hostname: #{host}"
