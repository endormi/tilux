#!/usr/bin/ruby

require "rubypython"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append(".")
  lg = RubyPython.import("logos")
  lg.Logo("Del")

RubyPython.stop


choice = "file or directory"
puts "Choices: #{choice}"
print "Choice: "
c = gets.chomp.to_s.downcase

if (c == "file" || c == "f")
  print "Path to file: "
  f = gets.chomp.to_s

  if File.file?(f) == true
    print "Are you sure you want to remove the file? (Y/n) "
    yn = gets.chomp.to_s.downcase

    case yn
    when "y"
      puts "\nRemoving file.."
      sleep 1
      File.delete(f)
      puts "Done!"
    else
      puts "\nExiting.."
      sleep 1
    end
  else
    puts "\n#{f} doesn't exist."
  end

elsif (c == "dir" || c == "directory" || c == "d")
  print "Path to directory: "
  d = gets.chomp.to_s

  if File.directory?(d) == true
    print "Are you sure you want to remove the folder? (Y/n) "
    yn = gets.chomp.to_s.downcase

    case yn
    when "y"
      puts "\nRemoving folder.."
      sleep 1
      Dir.delete(d)
      puts "Done!"
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
