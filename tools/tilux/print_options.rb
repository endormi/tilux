#!/usr/bin/ruby

require 'io/console'

### Cryptography options
def cryptography_print
  puts '-e: Encrypt'
  puts "-d: Decrypt\n"
end

def tilux_print
  puts '  {1} -- 4 choices for encryption and decryption'
  puts '  {2} -- Monitoring different processes'
  puts '  {3} -- Pinging networks'
  puts '  {4} -- System scripts'
  puts "  --help -- How to use Tilux?\n"
end

def crypto_print
  puts '-cc: CCRYPT'
  puts '-op: Openssl'
  puts '-pc: Pyca'
  puts "-zp: Zip\n"
end

def monitoring_print
  puts '-c: cpu_monitoring'
  puts '-m: mem_monitoring'
  puts "-w: website_monitoring\n"
end

def net_print
  puts '-i: ip_pinging'
  puts "-s: server_pinging\n"
end

def system_print
  puts '-c:   config'
  puts '-f:   files and folders'
  puts '-img: image'
  puts '-i:   info'
  puts '-o:   other'
  puts '-p:   processors'
  puts "-s:   shutdown\n"
end

def systemc_print
  puts '::CONFIG::'
  puts '-gc:  configure git'
  puts '-gtd: gnome terminal profile dump'
  puts "-gtl: gnome terminal profile load\n"
end

def systemf_print
  puts '::FF::'
  puts '-bf:  bf (backup folder)'
  puts '-c:   clean (clean system of logs and trash)'
  puts '-del: del (delete file or directory)'
  puts '-e:   exists (file or directory)'
  puts '-ext: check file extensions inside a folder'
  puts '-fd:  fd (number of files and folders)'
  puts '-fl:  file updated'
  puts '-fs:  file size'
  puts '-k:   search files by keyword'
  puts "-l:   last updated (file)\n"
end

def systemi_print
  puts '::IMG::'
  puts '-ci: convert image'
  puts '-i:  image info'
  puts '-ri: resize image'
  puts "-ro: rotate image\n"
end

def systemin_print
  puts '::INFO::'
  puts '-bit: computer bit system'
  puts '-ip:  IP address'
  puts '-k:   kernel and distro version'
  puts '-os:  check OS'
  puts '-prv: python and ruby version'
  puts '-r:   root (check if you are root or not)'
  puts "-s:   display computer space, uptime and number of processes running\n"
end

def systemo_print
  puts '::OTHER::'
  puts '-a:   add alias'
  puts '-b:   print text in ASCII art (submodule)'
  puts '-cdp: convert doc to pdf'
  puts '-def: default web browser'
  puts '-p:   parse date'
  puts '-rl:  remove line from file matching text'
  puts '-rt:  resize terminal'
  puts "-s:   search specific command\n"
end

def systemp_print
  puts '-cpu: CPU name'
  puts '-mc:  multi-core process time'
  puts '-oc:  single core process time'
  puts "-ps:  list active processes\n"
end

def systems_print
  puts '-fp: force poweroff'
  puts "-fr: force reboot\n"
end

def help_print
  puts 'Interactive:'
  puts "Running the files interactively ./tilux and then follow the choices\n"
  puts 'Args:'
  puts "Running the files with args ./tilux (and then the argument e.g. 1 -c -e)\n\n"

  puts '1 -cc: ccrypt -e (for encryption) or -d (for decryption)'
  puts '1 -op: Openssl -e (for encryption) or -d (for decryption)'
  puts '1 -pc: Pyca -e (for encryption) or -d (for decryption)'
  puts '1 -zp: Zip -e (for encryption) or -d (for decryption)'
  puts '2 -c: monitoring cpu processes'
  puts '2 -m: monitoring memory consumption'
  puts "2 -w: monitoring website (if it's up and if not it sends an email)"
  puts '3 -i: IP pinging'
  puts '3 -s: server pinging'
  puts '4 -c -gc:   configure git'
  puts '4 -c -gtd:  gnome terminal profile dump'
  puts '4 -c -gtl:  gnome terminal profile load'
  puts '4 -f -bf:   bf (backup folder)'
  puts '4 -f -c:    clean (clean system of logs and trash)'
  puts '4 -f -del:  del (delete file or directory)'
  puts '4 -f -e:    exists (check if file or dir exists)'
  puts '4 -f -ext:  check file extensions inside a folder'
  puts '4 -f -fd:   fd (number of files and folders)'
  puts '4 -f -fl:   file updated'
  puts '4 -f -fs:   file size'
  puts '4 -f -k:    search files by keyword'
  puts '4 -f -l:    last updated (file)'
  puts '4 -img -ci: convert image'
  puts '4 -img -i:  image info'
  puts '4 -img -ri: resize image'
  puts '4 -img -ro: rotate image'
  puts '4 -i -bit:  computer bit system'
  puts '4 -i -ip:   IP address'
  puts '4 -i -k:    kernel and distro version'
  puts '4 -i -os:   check OS'
  puts '4 -i -prv:  python and ruby version'
  puts '4 -i -r:    root (check if you are root or not)'
  puts '4 -i -s:    display computer space, uptime and number of processes running'
  puts '4 -o -a:    add alias'
  puts '4 -o -b:    print text in ASCII art (submodule)'
  puts '4 -o -cdp:  convert doc to pdf'
  puts '4 -o -def:  default web browser'
  puts '4 -o -p:    parse date'
  puts '4 -o -rl:   remove line'
  puts '4 -o -rt:   resize terminal'
  puts '4 -o -s:    search specific command'
  puts '4 -p -cpu:  CPU name'
  puts '4 -p -mc:   multi-core process time'
  puts '4 -p -oc:   single core process time'
  puts '4 -p -ps:   list active processes'
  puts '4 -s -fp:   force poweroff'
  puts '4 -s -fr:   force reboot'
  puts 'Press [ENTER] to continue...'
  $stdin.getch
end
