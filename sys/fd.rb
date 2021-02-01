#!/usr/bin/ruby

#require "rubypython"
require_relative "../tools/catch_exception"


#RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("FD")

#RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('FD');"`


print "Path to directory: "
dir = gets.chomp.to_s.strip

empty_input?(dir)

if (File.directory?(dir) == false)
  puts "\n#{dir} doesn't exist."
  exit
end

puts "\nNOTE: This is for files only for now and not dirs.."
choice = "ns (no subdirectories) or s (subdirectories)"
puts "Choices: #{choice}"
print "Choice: "
c = gets.chomp.to_s.downcase
puts

empty_input?(c)

case c
when "1", "ns", "-ns", "--ns"
  count = `find #{dir} -maxdepth 1 -type f | wc -l`.to_i

  unless count != 0
    puts "No files found!"
  else
    puts "Found files: #{count}"
  end

when "2", "s", "-s", "--s"
  files = Dir.glob(File.join(dir, '**', '*')).select { |file| File.file?(file) }.count

  unless files != 0
    puts "No files found!"
  else
    puts "Found files: #{files}"
  end

else
  puts "Not a correct choice!"
  puts "Use #{choice}"
end

folders = `find #{dir} -mindepth 1 -type d | wc -l`.to_i
if (folders == 0)
  puts "No folders found!"
else
  puts "Found folders: #{folders}"
end
