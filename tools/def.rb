#!/usr/bin/ruby

# I'm using the same options, when running interactively and by using arguments
# The only difference is case so I included the functions here
# and then to make it functional, using sys_options(input)

### Cryptography options
def ccrypt_options(choice)
  case choice
  when '1', '-e', '--e'
    sys('./cryptography/ccrypt/ccrypt_encryption.sh')
  when '2', '-d', '--d'
    sys('./cryptography/ccrypt/ccrypt_decryption.sh')
  else
    # TODO
    puts 'Invalid choice!'
  end
end

def gpg_options(choice)
  case choice
  when '1', '-e', '--e'
    sys('./cryptography/gpg/gpg_encryption.sh')
  when '2', '-d', '--d'
    sys('./cryptography/gpg/gpg_decryption.sh')
  else
    # TODO
    puts 'Invalid choice!'
  end
end

def pyca_options(choice)
  case choice
  when '1', '-e', '--e'
    sys('./cryptography/pyca/encrypt.py')
  when '2', '-d', '--d'
    sys('./cryptography/pyca/decrypt.py')
  else
    # TODO
    puts 'Invalid choice!'
  end
end

def zip_options(choice)
  case choice
  when '1', '-e', '--e'
    sys('./cryptography/zip/zip_encryption.sh')
  when '2', '-d', '--d'
    sys('./cryptography/zip/zip_decryption.sh')
  else
    # TODO
    puts 'Invalid choice!'
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
  when '1', '-c', '--c'
    system('clear')
    system('./monitoring/cpu_monitoring.sh')
  when '2', '-m', '--m'
    system('clear')
    system('./monitoring/mem_monitoring.sh')
  when '3', '-w', '--w'
    system('clear')
    system('./monitoring/website_monitoring.py')
  else
    # TODO
    puts 'Invalid choice'
  end
end

def networking_options(choice)
  case choice
  when '1', '-i', '--i'
    sys('./networking/ip_pinging.py')
  when '2', '-s', '--s'
    sys('./networking/server_pinging.py')
  else
    # TODO
    puts 'Invalid choice'
  end
end

def sys_options(choice)
  case choice
  when '-a', '--a'
    sys('./sys/add_alias.sh')
  when '-bf', '--bf'
    sys('./sys/bf.sh')
  when '-b', '--b'
    sys('./sys/bit.sh')
  when '-c', '--c'
    sys('./sys/clean.sh')
  when '-cpu', '--cpu'
    sys('./sys/cpu_name.sh')
  when '-d', '--d'
    sys('./sys/del.rb')
  when '-di', '--di'
    sys('./sys/distro.sh')
  when '-e', '--e'
    sys('./sys/exists.rb')
  when '-f', '--f'
    sys('./sys/fd.rb')
  when '-fl', '--fl'
    sys('./sys/file_updated.rb')
  when '-fp', '--fp'
    sys('./sys/force_poweroff.sh')
  when '-fr', '--fr'
    sys('./sys/force_reboot.sh')
  when '-fs', '--fs'
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('FS');"`
    system('./fs.o')
  when '-g', '--g'
    sys('./sys/git_config.sh')
  when '-gpu', '--gpu'
    sys('./sys/gpu_name.sh')
  when '-h', '--h'
    sys('./sys/hostname.rb')
  when '-i', '--i'
    sys('./sys/ip.rb')
  when '-k', '--k'
    sys('./sys/kernel_version.sh')
  when '-l', '--l'
    sys('./sys/last_updated.sh')
  when '-o', '--o'
    sys('./sys/os.rb')
  when '-p', '--p'
    sys('./sys/parse_date.rb')
  when '-prv', '--prv'
    sys('./sys/prv.sh')
  when '-rt', '--rt'
    sys('./sys/resize_terminal.sh')
  when '-r', '--r'
    sys('./sys/root.rb')
  when '-s', '--s'
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Space');"`
    system('./space.o')
  else
    # TODO
    puts 'Invalid choice'
  end
end
