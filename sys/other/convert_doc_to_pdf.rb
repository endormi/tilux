#!/usr/bin/ruby

require 'libreconv'
require 'io/console'

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Convert doc to pdf');"`
end

# File extension is not required, because
# you can have doc files without file extensions.

# You can also convert .txt, .jpg etc. files.
print 'What is the file you want to convert? '
doc = $stdin.gets.chomp.to_s
empty_input?(doc) if ARGV[0] == 'tilux'
unless File.file?(doc)
  puts "File doesn't exist."
  exit
end
print 'What is the name you want to save it as (remember to add .pdf)? '
pdf = $stdin.gets.chomp.to_s
empty_input?(pdf) if ARGV[0] == 'tilux'
if File.file?(pdf)
  puts 'File already exists.'
  exit
end
# .pdf is required for conversion
unless pdf.include? '.pdf'
  puts 'Remember to add .pdf'
  exit
end

Libreconv.convert(doc, pdf)
puts 'Done!'
