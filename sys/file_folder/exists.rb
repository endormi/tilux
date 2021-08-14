#!/usr/bin/ruby

require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Exists');"`
end

choice = 'file or directory'
puts "Choices: #{choice}"
print 'Choice: '
fd = $stdin.gets.chomp.to_s.downcase

empty_input?(fd) if ARGV[0] == 'tilux'

if %w[file f].include?(fd)
  print 'Path to file: '
  f = $stdin.gets.chomp.to_s.strip
  empty_input?(f) if ARGV[0] == 'tilux'
  res = File.file?(f) == true ? "#{f} exists" : "#{f} doesn't exist"
  puts "\n#{res}"

elsif %w[dir directory d].include?(fd)
  print 'Path to directory: '
  d = $stdin.gets.chomp.to_s.strip
  empty_input?(d) if ARGV[0] == 'tilux'
  res = File.directory?(d) == true ? "#{d} exists" : "#{d} doesn't exist"
  puts "\n#{res}"
else
  puts "\nWrong choice!"
  puts "Use #{choice}"
end
