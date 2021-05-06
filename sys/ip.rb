#!/usr/bin/ruby

require 'socket'
require 'resolv'
require_relative '../tools/catch_exception'

print `python3 -c "from tools.logos import Logo; Logo('IP');"` if ARGV[0] == "tilux"

# Should work with ruby version 1.8.6+
# Check internet connection
dns_resolv = Resolv::DNS.new

begin
  dns_resolv.getaddress('icann.org')
  ip = `dig +short myip.opendns.com @resolver1.opendns.com`
  puts "Your public IP: #{ip}"
  sleep 0.5

  p_ip = Socket.ip_address_list.detect(&:ipv4_private?).ip_address
  puts "Your private IP: #{p_ip}"
  sleep 0.5
rescue Resolv::ResolvError
  puts "\nNo internet connection!\nUnable to get IP.\n\n"
end
