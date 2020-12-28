#!/usr/bin/ruby

require "rubypython"


RubyPython.start

  sys = RubyPython.import("sys")
  sys.path.append("./tools")
  lg = RubyPython.import("logos")
  lg.Logo("Clean")

RubyPython.stop


if ($EUID == 0)
  log_dir = "/var/log"
  cmd="cd '#{log_dir}'"
  puts "Truncating logs..."
  sleep 1
  cmd=%x[for i in $(find #{log_dir} -type f); do cat /dev/null > $i; done]
  puts "Done!"
else
  puts "Unable to truncate logs."
  puts "You are not root.\n\n\n"
end

trash_dir = "~/.local/share/Trash/*"
puts "Empty the trash:"
choice = "1 or all"
puts "Choices: #{choice} (1 means going through files one by one and all means, well you know..)"
print "Choice: "
c = gets.chomp.to_s.downcase

if (c == "1")
  cmd=%x[rm -rf -i #{trash_dir}]
elsif (c == "2" || c == "all" || c == "-a" || c == "--a" || c == "a")
  #files = Dir.glob("#{trash_dir}")
  #puts files
  puts "\nEmptying the trash..."
  sleep 1
  cmd=%x[rm -rf #{trash_dir}]
  puts "Done!"
else
  puts "\nWrong choice"
  puts "Use #{choice}"
end
