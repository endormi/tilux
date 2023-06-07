#!/usr/bin/ruby

require 'libreconv'
require 'io/console'

# Class responsible for converting documents to PDF.
class DocumentConverter
  def self.validate_pdf_extension(pdf)
    unless pdf.end_with?('.pdf')
      puts 'Remember to add .pdf.'
      exit
    end
  end

  def self.convert_to_pdf(doc, pdf)
      Libreconv.convert(doc, pdf)
    end
end

def get_file_path(message)
  print message
  path = $stdin.gets.chomp.to_s
  empty_input?(path) if ARGV[0] == 'tilux'
  path
end

def check_doc_existence(doc)
  unless File.file?(doc)
    puts "File doesn't exist."
    exit
  end
end

def file_exists?(path)
  if File.file?(path)
    puts 'File already exists.'
    exit
  end
end

if ARGV[0] == 'tilux'
  require_relative '../../tools/catch_exception'
  print `python3 -c "from tools.logos import Logo; Logo('Convert doc to pdf');"`
end

doc = get_file_path('What is the file you want to convert? ')
check_doc_existence(doc)

pdf = get_file_path('What is the name you want to save it as (remember to add .pdf)? ')
file_exists?(pdf)
DocumentConverter.validate_pdf_extension(pdf)

DocumentConverter.convert_to_pdf(doc, pdf)
puts 'Done!'
