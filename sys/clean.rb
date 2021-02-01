#!/usr/bin/ruby
# frozen_string_literal: true

# require "rubypython"
require_relative '../tools/catch_exception'

# RubyPython.start

#  sys = RubyPython.import("sys")
#  sys.path.append("./tools")
#  lg = RubyPython.import("logos")
#  lg.Logo("Clean")

# RubyPython.stop

print `python3 -c "from tools.logos import Logo; Logo('Clean');"`

if $EUID == 0
  log_dir = '/var/log'
  cmd = "cd '#{log_dir}'"
  puts 'Truncating logs...'
  sleep 1
  cmd = `for i in $(find #{log_dir} -type f); do cat /dev/null > $i; done`
  puts 'Done!'
else
  puts 'Unable to truncate logs.'
  puts "You are not root.\n\n\n"
end

trash_dir = '~/.local/share/Trash/*'
puts 'Empty the trash:'
choice = '1 or all'
puts "Choices: #{choice} (1 means going through files one by one and all means, well you know..)"
print 'Choice: '
c = gets.chomp.to_s.downcase

empty_input?(c)

if c == '1'
  cmd = `rm -rf -i #{trash_dir}`
elsif ['2', 'all', '-a', '--a', 'a'].include?(c)
  # files = Dir.glob("#{trash_dir}")
  # puts files
  puts "\nEmptying the trash..."
  sleep 1
  cmd = `rm -rf #{trash_dir}`
  puts 'Done!'
else
  puts "\nWrong choice"
  puts "Use #{choice}"
end
