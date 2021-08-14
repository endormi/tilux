#!/usr/bin/ruby

require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Del');"`
end

choice = 'file or directory'
puts "Choices: #{choice}"
print 'Choice: '
c = $stdin.gets.chomp.to_s.downcase

empty_input?(c) if ARGV[0] == 'tilux'

if %w[file f].include?(c)
  print 'Path to file: '
  f = $stdin.gets.chomp.to_s.strip

  empty_input?(f) if ARGV[0] == 'tilux'

  if File.file?(f) == true
    print 'Are you sure you want to remove the file? (Y/n) '
    yn = $stdin.gets.chomp.to_s.downcase

    if %w[y yes].include?(yn)
      puts "\nRemoving file.."
      sleep 1
      File.delete(f)
      puts 'Done!'
    else
      puts "\nExiting.."
      sleep 1
    end
  else
    puts "\n#{f} doesn't exist."
  end

elsif %w[dir directory d].include?(c)
  print 'Path to directory: '
  d = $stdin.gets.chomp.to_s.strip

  empty_input?(d) if ARGV[0] == 'tilux'

  if File.directory?(d) == true
    print 'Are you sure you want to remove the folder? (Y/n) '
    yn = $stdin.gets.chomp.to_s.downcase

    if %w[y yes].include?(yn)
      puts "\nRemoving folder.."
      sleep 1
      Dir.delete(d)
      puts 'Done!'
    else
      puts "\nExiting.."
      sleep 1
    end
  else
    puts "\n#{d} doesn't exist."
  end

else
  puts "\nWrong choice!"
  puts "Use #{choice}"
end
