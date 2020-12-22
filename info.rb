#!/usr/bin/ruby

require "rbconfig"
require "rubypython"
require "socket"
require "resolv"
require "net/http"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append("./tools")
  lg = RubyPython.import("logos")
  lg.Logo("Host")

RubyPython.stop


os = RbConfig::CONFIG["host_os"]
puts "OS: #{os}"
sleep 1
host = Socket.gethostname
puts "Hostname: #{host}"
sleep 1

# description of Linux distro
print `lsb_release -d`
sleep 1
# codename
print `lsb_release -c`
sleep 1
print "Kernel version: ", `uname -srm`
sleep 1


# Should work with ruby version 1.8.6+
# Check internet connection
dns_resolv = Resolv::DNS.new()

begin
  dns_resolv.getaddress("icann.org")
  # I was unable to get public ip from socket
  ip = `dig +short myip.opendns.com @resolver1.opendns.com`
  puts "Your public IP: #{ip}"
  sleep 1
  # another way to get public IP
  #resp = Net::HTTP.get URI.parse('http://checkip.dyndns.org')
  #puts "Your IP: #{resp.match( /(?:Address: )([\d\.]+)/)[1]}"

  p_ip = Socket.ip_address_list.detect{|intf| intf.ipv4_private?}.ip_address
  puts "Your private IP: #{p_ip}"
  sleep 1
rescue Resolv::ResolvError => e
  puts "\nNo internet connection!\nUnable to get IP."
  # needed because \n (new line) doesn't work when using print
  puts ""
end


print "Python3 version: ", `python3 -V`
sleep 1
print "Ruby version: ", `ruby -v`, "\n"
sleep 1


print "Do you also want to check the computer specs? (Y/n) "
choice = gets.chomp.to_s.downcase

if (choice == "y" || choice == "yes")
  print `./spec`
else
  exit
end
