#!/usr/bin/ruby

#require "rubypython"
require_relative "../tools/catch_exception"


#RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("Del")

#RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('Del');"`


choice = "file or directory"
puts "Choices: #{choice}"
print "Choice: "
c = gets.chomp.to_s.downcase

empty_input?(c)

if (c == "file" || c == "f")
  print "Path to file: "
  f = gets.chomp.to_s.strip

  empty_input?(f)

  if File.file?(f) == true
    print "Are you sure you want to remove the file? (Y/n) "
    yn = gets.chomp.to_s.downcase

    if (yn == "y" || yn == "yes")
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
  d = gets.chomp.to_s.strip

  empty_input?(d)

  if File.directory?(d) == true
    print "Are you sure you want to remove the folder? (Y/n) "
    yn = gets.chomp.to_s.downcase

    if (yn == "y" || yn == "yes")
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
