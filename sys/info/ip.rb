#!/usr/bin/ruby

require 'socket'
require 'resolv'

# InternetChecker is a utility class for checking internet connectivity and retrieving IP addresses.
class InternetChecker
  # Checks the availability of an internet connection.
  #
  # @return [Boolean] `true` if an internet connection is available, `false` otherwise.
  def self.check_internet_connection
    dns_resolv = Resolv::DNS.new

    begin
      dns_resolv.getaddress('icann.org')
      true
    rescue Resolv::ResolvError
      false
    end
  end

  # Retrieves the public IP address of the machine.
  #
  # @return [String] The public IP address.
  def self.get_public_ip
    `dig +short myip.opendns.com @resolver1.opendns.com`.chomp
  end

  # Retrieves the private IP address of the machine.
  #
  # @return [String] The private IP address.
  def self.get_private_ip
    Socket.ip_address_list.detect(&:ipv4_private?).ip_address
  end
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('IP');"`
end

if InternetChecker.check_internet_connection
  public_ip = InternetChecker.get_public_ip
  puts "Your public IP: #{public_ip}"
  sleep 0.5

  private_ip = InternetChecker.get_private_ip
  puts "Your private IP: #{private_ip}"
  sleep 0.5
else
  puts "No internet connection!\nUnable to get IP.\n"
end
