#!/usr/bin/ruby

###############################
#
# => Starting point
# WIP code
# Still need to implement everything :D
#
###############################

require_relative "tools/col"
require_relative "tools/catch_exception"


version="v.0.2.5"
puts "
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o
".green
print "version #{version}".yellow
print " by Endormi "
link="\e]8;;https://github.com/endormi/tilux\a(github.com/endormi/tilux)\e]8;;\a"
puts link

prompt="tilux~# ".green


if (ARGV.empty?)
  puts "\nWhat script do you want to run?\n"
  puts "How to use Tilux?\n"
  list_of_commands="Info, Cryptography, Monitoring, Networking, Sys && --help"

  puts "Choices: #{list_of_commands}"
  print "#{prompt} "
  c = gets.chomp.to_s.downcase

  case c
    when "info"
      puts("info")
    when "cryptography", "crypto"
      puts("cryptography")
    when "monitoring"
      puts("monitoring")
    when "networking", "net"
      puts("networking")
    when "sys", "system"
      puts("system")
    #when "misc"
    #  puts "misc"
    when "help", "--help", "--h"
      puts("help")
    else
      puts("\nNot a valid choice!")
      puts "Use #{list_of_commands}"
  end


else
  case ARGV[0]
    when "info"
      puts("info")
    when "cryptography", "crypto"
      puts("cryptography")
    when "monitoring"
      puts("monitoring")
    when "networking", "net"
      puts("networking")
    when "sys", "system"
      puts("sys")
    #when "misc"
    #  puts("misc")
    when "help", "--help", "--h"
      puts("help")
    else
      puts("Not a valid choice!")
  end
end
