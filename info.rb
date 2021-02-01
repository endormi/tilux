#!/usr/bin/ruby

require 'rbconfig'
# require "rubypython"
require 'socket'
require 'resolv'
require 'net/http'

require_relative 'tools/catch_exception'

# RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("Host")

# RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('Host');"`

os = RbConfig::CONFIG['host_os']
puts "OS: #{os}"
sleep 0.5
host = Socket.gethostname
puts "Hostname: #{host}"
sleep 0.5

# description of Linux distro
print `lsb_release -d`
sleep 0.5
# codename
print `lsb_release -c`
sleep 0.5
print 'Kernel version: ', `uname -srm`
sleep 0.5

# Should work with ruby version 1.8.6+
# Check internet connection
dns_resolv = Resolv::DNS.new

begin
  dns_resolv.getaddress('icann.org')
  # I was unable to get public ip from socket
  ip = `dig +short myip.opendns.com @resolver1.opendns.com`
  puts "Your public IP: #{ip}"
  sleep 0.5
  # another way to get public IP
  # resp = Net::HTTP.get URI.parse('http://checkip.dyndns.org')
  # puts "Your IP: #{resp.match( /(?:Address: )([\d\.]+)/)[1]}"

  p_ip = Socket.ip_address_list.detect(&:ipv4_private?).ip_address
  puts "Your private IP: #{p_ip}"
  sleep 0.5
rescue Resolv::ResolvError
  puts "\nNo internet connection!\nUnable to get IP.\n\n"
end

print 'Python3 version: ', `python3 -V`
sleep 0.5
print 'Ruby version: ', `ruby -v`, "\n"

print 'Display computer specs? (Y/n): '
c = gets.chomp.to_s.downcase

if %w[yes y].include?(c)
  # TODO: Update the script
  # TODO: Only works on x86 platform
  system("if [ `uname -m | grep 'x86_64'` != 0 ]; then echo 'System: 64-bit'; else echo 'System: 32-bit'; fi")
  # system("cat /proc/cpuinfo | grep 'vendor' | uniq")
  system("cat /proc/cpuinfo | grep 'model name' | uniq")
  system("glxinfo | grep 'Device'")
  system('./space')
else
  puts
  system('exit')
end
