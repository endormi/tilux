#!/usr/bin/ruby

########################################
#
# Still a WIP
# I will be refactoring code quite a bit
#
########################################

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
print "version #{version}".light_yellow
print " by Endormi "
link="\e]8;;https://github.com/endormi/tilux\a(github.com/endormi/tilux)\e]8;;\a"
puts link

sleep 1

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
      system("clear")
      system("./info.rb")

    when "cryptography", "crypto"
      # TODO
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      case input
        when "1", "-c", "--c", "-C", "--C"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          case i
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/ccrypt/ccrypt_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/ccrypt/ccrypt_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
            end

        when "2", "-g", "--g", "-G", "--G"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          case i
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/gpg/gpg_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/gpg/gpg_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "3", "-o", "--o", "-O", "--O"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          case i
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/openssl/openssl_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/openssl/openssl_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "4", "-p", "--p", "-P", "--P"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          case i
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/pyca/encrypt.py")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/pyca/decrypt.py")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "5", "-z", "--z", "-Z", "--Z"
          # TODO
          print "#{prompt} "
          i = gets.chomp.to_s.downcase

          case i
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/zip/zip_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/zip/zip_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end

        else
          # TODO
          puts "Invalid choice"
        end

    when "monitoring"
      # TODO
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      case input
        when "1", "-c", "--c", "-C", "--C"
          system("clear")
          system("./monitoring/cpu_monitoring.sh")
        when "2", "-m", "--m", "-M", "--M"
          system("clear")
          system("./monitoring/mem_monitoring.sh")
        when "3", "-w", "--w", "-W", "--W"
          system("clear")
          system("./monitoring/website_monitoring.py")
        else
          # TODO
          puts "Invalid choice"
      end

    when "networking", "net"
      # TODO
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      case input
        when "1", "-i", "--i", "-I", "--I"
          system("clear")
          system("./networking/ip_pinging.py")
        when "1", "-s", "--s", "-S", "--S"
          system("clear")
          system("./networking/server_pinging.py")
        else
          # TODO
          puts "Invalid choice"
      end

    when "sys", "system"
      # TODO
      print "#{prompt} "
      input = gets.chomp.to_s.downcase

      case input
        when "1", "-b", "--b", "-B", "--B"
          system("clear")
          system("./sys/bf.sh")
        when "2", "-c", "--c", "-C", "--C"
          system("clear")
          system("./sys/clean.rb")
        when "3", "-d", "--d", "-D", "--D"
          system("clear")
          system("./sys/del.rb")
        when "4", "-e", "--e", "-E", "--E"
          system("clear")
          system("./sys/exists.rb")
        when "5", "-f", "--f", "-F", "--F"
          system("clear")
          system("./sys/fd.rb")
        when "6", "-fl", "--fl", "-Fl", "--Fl", "-FL", "--FL"
          system("clear")
          system("./sys/file_updated.rb")
        when "7", "-fs", "--fs", "-Fs", "--Fs", "-FS", "--FS"
          system("clear")
          # TODO
          system("./fs")
        when "8", "-l", "--l", "-L", "--L"
          system("clear")
          system("./sys/last_updated.sh")
        when "9", "-p", "--p", "-P", "--P"
          system("clear")
          system("./sys/parse_date.rb")
        when "10", "-r", "--r", "-R", "--R"
          system("clear")
          system("./sys/root.rb")
        else
          # TODO
          puts "Invalid choice"
      end

    #when "misc"
    #  puts "misc"

    when "help", "--help", "--h"
      puts("no help")
    else
      puts("\nNot a valid choice!")
      puts "Use #{list_of_commands}"
  end

else
  case ARGV[0]
    when "info"
        system("clear")
        system("./info.rb")

    when "cryptography", "crypto"
      case ARGV[1]
        when "1", "-c", "--c", "-C", "--C"
          case ARGV[2]
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/ccrypt/ccrypt_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/ccrypt/ccrypt_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "2", "-g", "--g", "-G", "--G"
          case ARGV[2]
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/gpg/gpg_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/gpg/gpg_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "3", "-o", "--o", "-O", "--O"
          case ARGV[2]
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/openssl/openssl_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/openssl/openssl_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "4", "-p", "--p", "-P", "--P"
          case ARGV[2]
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/pyca/encrypt.py")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/pyca/decrypt.py")
            else
              # TODO
              puts "Invalid choice!"
          end

        when "5", "-z", "--z", "-Z", "--Z"
          case ARGV[2]
            when "1", "-e", "--e", "-E", "--E"
              system("clear")
              system("./cryptography/zip/zip_encryption.sh")
            when "2", "-d", "--d", "-D", "--D"
              system("clear")
              system("./cryptography/zip/zip_decryption.sh")
            else
              # TODO
              puts "Invalid choice!"
          end
        else
          # TODO
          puts "Invalid choice"
      end

    when "monitoring"
      case ARGV[1]
        when "1", "-c", "--c", "-C", "--C"
          system("clear")
          system("./monitoring/cpu_monitoring.sh")
        when "2", "-m", "--m", "-M", "--M"
          system("clear")
          system("./monitoring/mem_monitoring.sh")
        when "3", "-w", "--w", "-W", "--W"
          system("clear")
          system("./monitoring/website_monitoring.py")
        else
          # TODO
          puts "Invalid choice"
      end

    when "networking", "net"
      case ARGV[1]
        when "1", "-i", "--i", "-I", "--I"
          system("clear")
          system("./networking/ip_pinging.py")
        when "1", "-s", "--s", "-S", "--S"
          system("clear")
          system("./networking/server_pinging.py")
        else
          # TODO
          puts "Invalid choice"
      end

    when "sys", "system"
      case ARGV[1]
        when "1", "-b", "--b", "-B", "--B"
          system("clear")
          system("./sys/bf.sh")
        when "2", "-c", "--c", "-C", "--C"
          system("clear")
          system("./sys/clean.rb")
        when "3", "-d", "--d", "-D", "--D"
          system("clear")
          system("./sys/del.rb")
        when "4", "-e", "--e", "-E", "--E"
          system("clear")
          system("./sys/exists.rb")
        when "5", "-f", "--f", "-F", "--F"
          system("clear")
          system("./sys/fd.rb")
        when "6", "-fl", "--fl", "-Fl", "--Fl", "-FL", "--FL"
          system("clear")
          system("./sys/file_updated.rb")
        when "7", "-fs", "--fs", "-Fs", "--Fs", "-FS", "--FS"
          system("clear")
          # TODO
          system("./fs")
        when "8", "-l", "--l", "-L", "--L"
          system("clear")
          system("./sys/last_updated.sh")
        when "9", "-p", "--p", "-P", "--P"
          system("clear")
          system("./sys/parse_date.rb")
        when "10", "-r", "--r", "-R", "--R"
          system("clear")
          system("./sys/root.rb")
        else
          # TODO
          puts "Invalid choice"
      end

    #when "misc"
    #  puts("misc")

    when "help", "--help", "--h"
      puts("no help yet")
    else
      puts("Not a valid choice!")
  end
end
