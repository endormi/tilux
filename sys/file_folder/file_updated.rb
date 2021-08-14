#!/usr/bin/ruby

require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('File updated');"`
end

print 'Filename: '
f = $stdin.gets.chomp.to_s.strip
empty_input?(f) if ARGV[0] == 'tilux'

if File.file?(f) == true
  ft = File.mtime(f.to_s).strftime('%d/%m/%Y %H:%M')
  puts "File updated: #{ft}"
else
  puts "#{f} doesn't exist."
end
