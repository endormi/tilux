#!/usr/bin/ruby

def tilux_print
  puts '  {1} -- 4 choices for encryption and decryption'
  puts '  {2} -- Monitoring different processes'
  puts '  {3} -- Pinging networks'
  puts '  {4} -- System scripts'
  puts "  --help -- How to use Tilux?\n"
end

def crypto_print
  puts 'cryptography -c: CCRYPT'
  puts 'cryptography -o: Openssl'
  puts 'cryptography -p: Pyca'
  puts "cryptography -z: Zip\n"
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
  puts 'system -c:   config'
  puts 'system -f:   files and folders'
  puts 'system -img: image'
  puts 'system -i:   info'
  puts 'system -o:   other'
  puts 'system -p:   processors'
  puts "system -s:   shutdown\n"
end

def systemc_print
  puts '-gc:  configure git'
  puts '-gtd: gnome terminal profile dump'
  puts "-gtl: gnome terminal profile load\n"
end

def systemf_print
  puts '-bf:  bf (backup folder)'
  puts '-c:   clean (clean system of logs and trash)'
  puts '-del: del (delete file or directory)'
  puts '-e:   exists (file or directory)'
  puts '-fd:  fd (number of files and folders)'
  puts '-fl:  file updated'
  puts '-fs:  file size'
  puts "-l:   last updated (file)\n"
end

def systemi_print
  puts '-ci: convert image'
  puts '-i:  image info'
  puts '-ri: resize image'
  puts "-ro: rotate image\n"
end

def systemin_print
  puts '-bit: computer bit system'
  puts '-ip:  IP address'
  puts '-k:   kernel and distro version'
  puts '-os:  check OS'
  puts '-prv: python and ruby version'
  puts '-r:   root (check if you are root or not)'
  puts "-s:   display computer space, uptime and number of processes running\n"
end

def systemo_print
  puts '-a:   add alias'
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
  puts 'Running the files with args ./tilux (and then the argument e.g. cryptography -c -e)'
  puts "Note: The uppercase doesn't work currently with args.\n\n"

  puts 'cryptography -c: ccrypt -e (for encryption) or -d (for decryption)'
  puts 'cryptography -o: Openssl -e (for encryption) or -d (for decryption)'
  puts 'cryptography -p: Pyca -e (for encryption) or -d (for decryption)'
  puts 'cryptography -z: Zip -e (for encryption) or -d (for decryption)'
  puts 'monitoring -c: monitoring cpu processes'
  puts 'monitoring -m: monitoring memory consumption'
  puts "monitoring -w: monitoring website (if it's up and if not it sends an email)"
  puts 'networking -i: IP pinging'
  puts 'networking -s: server pinging'
  puts 'system -c -gc:   configure git'
  puts 'system -c -gtd:  gnome terminal profile dump'
  puts 'system -c -gtl:  gnome terminal profile load'
  puts 'system -f -bf:   bf (backup folder)'
  puts 'system -f -c:    clean (clean system of logs and trash)'
  puts 'system -f -del:  del (delete file or directory)'
  puts 'system -f -e:    exists (check if file or dir exists)'
  puts 'system -f -fd:   fd (number of files and folders)'
  puts 'system -f -fl:   file updated'
  puts 'system -f -fs:   file size'
  puts 'system -f -l:    last updated (file)'
  puts 'system -img -ci: convert image'
  puts 'system -img -i:  image info'
  puts 'system -img -ri: resize image'
  puts 'system -img -ro: rotate image'
  puts 'system -i -bit:  computer bit system'
  puts 'system -i -ip:   IP address'
  puts 'system -i -k:    kernel and distro version'
  puts 'system -i -os:   check OS'
  puts 'system -i -prv:  python and ruby version'
  puts 'system -i -r:    root (check if you are root or not)'
  puts 'system -i -s:    display computer space, uptime and number of processes running'
  puts 'system -o -a:    add alias'
  puts 'system -o -cdp:  convert doc to pdf'
  puts 'system -o -def:  default web browser'
  puts 'system -o -p:    parse date'
  puts 'system -o -rl:   remove line'
  puts 'system -o -rt:   resize terminal'
  puts 'system -o -s:    search specific command'
  puts 'system -p -cpu:  CPU name'
  puts 'system -p -mc:   multi-core process time'
  puts 'system -p -oc:   single core process time'
  puts 'system -p -ps:   list active processes'
  puts 'system -s -fp:   force poweroff'
  puts 'system -s -fr:   force reboot'
  puts 'Press [ENTER] to continue...'
  $stdin.getch
end
