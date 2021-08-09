#!/usr/bin/ruby

# I'm using the same options, when running interactively and by using arguments
# The only difference is case so I included the functions here
# and then to make it functional, using sys_options(input)

### Cryptography options
def ccrypt_options(choice)
  case choice
  when '-e', '--e' then sys('./cryptography/ccrypt/ccrypt_encryption.sh tilux')
  when '-d', '--d' then sys('./cryptography/ccrypt/ccrypt_decryption.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def gpg_options(choice)
  case choice
  when '-e', '--e' then sys('./cryptography/gpg/gpg_encryption.sh tilux')
  when '-d', '--d' then sys('./cryptography/gpg/gpg_decryption.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def openssl_options(choice)
  case choice
  when '-e', '--e' then sys('./cryptography/openssl/openssl_encryption.sh tilux')
  when '-d', '--d' then sys('./cryptography/openssl/openssl_decryption.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def pyca_options(choice)
  case choice
  when '-e', '--e' then sys('./cryptography/pyca/encrypt.py tilux')
  when '-d', '--d' then sys('./cryptography/pyca/decrypt.py tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def zip_options(choice)
  case choice
  when '-e', '--e' then sys('./cryptography/zip/zip_encryption.sh tilux')
  when '-d', '--d' then sys('./cryptography/zip/zip_decryption.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def cryptography_encryption
  puts '-e: Encryption'
  puts "-d: Decrypt\n"
  puts
end

### End cryptography

def monitoring_options(choice)
  case choice
  when '-c', '--c' then system('clear'); system('./monitoring/cpu_monitoring.sh tilux')
  when '-m', '--m' then system('clear'); system('./monitoring/mem_monitoring.sh tilux')
  when '-w', '--w' then system('clear'); system('./monitoring/website_monitoring.py tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def networking_options(choice)
  case choice
  when '-i', '--i' then sys('./networking/ip_pinging.py tilux')
  when '-s', '--s' then sys('./networking/server_pinging.py tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def sys_options(choice)
  case choice
  when '-a', '--a' then sys('./sys/add_alias.sh tilux')
  when '-bf', '--bf' then sys('./sys/bf.sh tilux')
  when '-b', '--b' then sys('./sys/bit.sh tilux')
  when '-c', '--c' then sys('./sys/clean.sh tilux')
  when '-cdp', '--cdp' then sys('./sys/convert_doc_to_pdf.rb tilux')
  when '-ci', '--ci' then sys('./sys/convert_img.rb tilux')
  when '-cpu', '--cpu' then sys('./sys/cpu_name.sh tilux')
  when '-d', '--d' then sys('./sys/del.rb tilux')
  when '-di', '--di' then sys('./sys/distro.sh tilux')
  when '-e', '--e' then sys('./sys/exists.rb tilux')
  when '-f', '--f' then sys('./sys/fd.rb tilux')
  when '-fl', '--fl' then sys('./sys/file_updated.rb tilux')
  when '-fp', '--fp' then sys('./sys/force_poweroff.sh tilux')
  when '-fr', '--fr' then sys('./sys/force_reboot.sh tilux')
  when '-fs', '--fs' then
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('FS');"`
    system('./fs.o')
  when '-g', '--g' then sys('./sys/git_config.sh tilux')
  when '-gtd', '--gtd' then sys('./sys/gnome_term_profile_dump.sh tilux')
  when '-gtl', '--gtl' then sys('./sys/gnome_term_profile_load.sh tilux')
  when '-gpu', '--gpu' then sys('./sys/gpu_name.sh tilux')
  when '-h', '--h' then sys('./sys/hostname.rb tilux')
  when '-img', '--img' then sys('./sys/img_info.rb tilux')
  when '-i', '--i' then sys('./sys/ip.rb tilux')
  when '-k', '--k' then sys('./sys/kernel_version.sh tilux')
  when '-l', '--l' then sys('./sys/last_updated.sh tilux')
  when '-o', '--o' then sys('./sys/os.rb tilux')
  when '-p', '--p' then sys('./sys/parse_date.rb tilux')
  when '-prv', '--prv' then sys('./sys/prv.sh tilux')
  when '-rl', '--rl' then sys('./sys/remove_line.sh tilux')
  when '-ri', '--ri' then sys('./sys/resize_img.rb tilux')
  when '-rt', '--rt' then sys('./sys/resize_terminal.sh tilux')
  when '-r', '--r' then sys('./sys/root.rb tilux')
  when '-ro', '--ro' then sys('./sys/rotate_img.rb tilux')
  when '-s', '--s'
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Space');"`
    system('./space.o')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end
