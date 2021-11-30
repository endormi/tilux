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

def conf(choice)
  case choice
  when '-gc', '--gc' then sys('./sys/config/git_config.sh tilux')
  when '-gtd', '--gtd' then sys('./sys/config/gnome_term_profile_dump.sh tilux')
  when '-gtl', '--gtl' then sys('./sys/config/gnome_term_profile_load.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def ff(choice)
  case choice
  when '-bf', '--bf' then sys('./sys/file_folder/bf.sh tilux')
  when '-c', '--c' then sys('./sys/file_folder/clean.sh tilux')
  when '-del', '--del' then sys('./sys/file_folder/del.rb tilux')
  when '-e', '--e' then sys('./sys/file_folder/exists.rb tilux')
  when '-fd', '--fd' then sys('./sys/file_folder/fd.rb tilux')
  when '-fl', '--fl' then sys('./sys/file_folder/file_updated.rb tilux')
  when '-fs', '--fs' then
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('FS');"`
    system('./sys/file_folder/fs.o')
  when '-l', '--l' then sys('./sys/file_folder/last_updated.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def image(choice)
  case choice
  when '-ci', '--ci' then sys('./sys/img/convert_img.rb tilux')
  when '-i', '--i' then sys('./sys/img/img_info.rb tilux')
  when '-ri', '--ri' then sys('./sys/img/resize_img.rb tilux')
  when '-ro', '--ro' then sys('./sys/img/rotate_img.rb tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def info(choice)
  case choice
  when '-bit', '--bit' then sys('./sys/info/bit.sh tilux')
  when '-di', '--di' then sys('./sys/info/distro.sh tilux')
  when '-ip', '--ip' then sys('./sys/info/ip.rb tilux')
  when '-k', '--k' then sys('./sys/info/kernel_version.sh tilux')
  when '-os', '--os' then sys('./sys/info/os.rb tilux')
  when '-prv', '--prv' then sys('./sys/info/prv.sh tilux')
  when '-r', '--r' then sys('./sys/info/root.rb tilux')
  when '-s', '--s'
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Space');"`
    system('./sys/info/space.o')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def proc(choice)
  case choice
  when '-cpu', '--cpu' then sys('./sys/proc/cpu_name.sh tilux')
  when '-gpu', '--gpu' then sys('./sys/proc/gpu_name.sh tilux')
  when '-oc', '--oc'
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Single core');"`
    sleep(1)
    system('./sys/proc/one_core.o')
  when '-mc', '--mc'
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Multi-core');"`
    sleep(1)
    system('./sys/proc/multi_core.o')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

def shutdown(choice)
  case choice
  when '-fp', '--fp' then sys('./sys/shutdown/force_poweroff.sh tilux')
  when '-fr', '--fr' then sys('./sys/shutdown/force_reboot.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end

# Just for now
def sys_other(choice)
  case choice
  when '-a', '--a' then sys('./sys/other/add_alias.sh tilux')
  when '-cdp', '--cdp' then sys('./sys/other/convert_doc_to_pdf.rb tilux')
  when '-def', '--def' then sys('./sys/other/default_web_browser.sh tilux')
  when '-s', '--s' then sys('./sys/other/cmd_search.sh tilux')
  when '-op', '--op' then sys('./sys/other/open.sh tilux')
  when '-p', '--p' then sys('./sys/other/parse_date.rb tilux')
  when '-rl', '--rl' then sys('./sys/other/remove_line.sh tilux')
  when '-rt', '--rt' then sys('./sys/other/resize_terminal.sh tilux')
  else
    # TODO
    puts "\nInvalid choice!"
  end
end
