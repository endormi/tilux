#!/usr/bin/ruby

require_relative "tools/col"
require_relative "tools/def"
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
print "version #{version}".light_yellow
print " by Endormi ".white
link="\e]8;;https://github.com/endormi/tilux\a(github.com/endormi/tilux)\e]8;;\a"
puts link.white

sleep 1

prompt="tilux~# ".green


def sys(file)
  system("clear")
  system(file)
end

def func_to_run(func)
  system("clear")
  system(func)
end


if (ARGV.empty?)
  puts "\nWhat script do you want to run?\n\n".white
  system("bash tools/funcs info")
  system("bash tools/funcs cryptography")
  system("bash tools/funcs monitoring")
  system("bash tools/funcs networking")
  system("bash tools/funcs sys")
  #system("bash tools/funcs misc")
  system("bash tools/funcs help2")

  list_of_commands="Info, Cryptography, Monitoring, Networking, Sys && --help"

  puts "Choices: #{list_of_commands}"
  print "#{prompt} "
  c = gets.chomp.to_s.downcase

  case c
    when "info"
      sys("./info.rb")

    when "cryptography", "crypto"
      func_to_run("bash tools/funcs cryptography")
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      case input
        when "1", "-c", "--c", "-C", "--C"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          ccrypt_options(i)

        when "2", "-g", "--g", "-G", "--G"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          gpg_options(i)

        when "3", "-o", "--o", "-O", "--O"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          openssl_options(i)

        when "4", "-p", "--p", "-P", "--P"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          pyca_options(i)

        when "5", "-z", "--z", "-Z", "--Z"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          zip_options(i)

        else
          # TODO
          puts "Invalid choice"
        end

    when "monitoring"
      func_to_run("bash tools/funcs monitoring")
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      monitoring_options(input)

    when "networking", "net"
      func_to_run("bash tools/funcs networking")
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      networking_options(input)

    when "sys", "system"
      func_to_run("bash tools/funcs sys")
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      sys_options(input)

    #when "misc"
    #  puts "misc"

    when "help", "--help", "--h"
      system("bash tools/funcs help")
    else
      puts("\nNot a valid choice!")
      puts "Use #{list_of_commands}"
  end

else
  case ARGV[0]
    when "info"
        sys("./info.rb")

    when "cryptography", "crypto"
      case ARGV[1]
        when "1", "-c", "--c", "-C", "--C"
          ccrypt_options(ARGV[2])

        when "2", "-g", "--g", "-G", "--G"
          gpg_options(ARGV[2])

        when "3", "-o", "--o", "-O", "--O"
          openssl_options(ARGV[2])

        when "4", "-p", "--p", "-P", "--P"
          pyca_options(ARGV[2])

        when "5", "-z", "--z", "-Z", "--Z"
          zip_options(ARGV[2])
        else
          # TODO
          puts "Invalid choice"
      end

    when "monitoring"
      monitoring_options(ARGV[1])

    when "networking", "net"
      networking_options(ARGV[1])

    when "sys", "system"
      sys_options(ARGV[1])

    #when "misc"
    #  puts("misc")

    when "help", "--help", "--h"
      system("bash tools/funcs help")
    else
      puts("Not a valid choice!")
  end
end
