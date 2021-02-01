#!/usr/bin/ruby

# I'm using the same options, when running interactively and by using arguments
# The only difference is case so I included the functions here
# and then to make it functional, using sys_options(input)

### Cryptography options
def ccrypt_options(c)
  case c
    when "1", "-e", "--e"
      sys("./cryptography/ccrypt/ccrypt_encryption.sh")
    when "2", "-d", "--d"
      sys("./cryptography/ccrypt/ccrypt_decryption.sh")
    else
      # TODO
      puts "Invalid choice!"
    end
end

def gpg_options(c)
  case c
    when "1", "-e", "--e"
      sys("./cryptography/gpg/gpg_encryption.sh")
    when "2", "-d", "--d"
      sys("./cryptography/gpg/gpg_decryption.sh")
    else
      # TODO
      puts "Invalid choice!"
  end
end

def pyca_options(c)
  case c
    when "1", "-e", "--e"
      sys("./cryptography/pyca/encrypt.py")
    when "2", "-d", "--d"
      sys("./cryptography/pyca/decrypt.py")
    else
      # TODO
      puts "Invalid choice!"
  end
end

def zip_options(c)
  case c
    when "1", "-e", "--e"
      sys("./cryptography/zip/zip_encryption.sh")
    when "2", "-d", "--d"
      sys("./cryptography/zip/zip_decryption.sh")
    else
      # TODO
      puts "Invalid choice!"
  end
end


def cryptography_encryption()
  puts "-e: Encryption"
  puts "-d: Decrypt\n"
  puts
end

### End cryptography

def monitoring_options(c)
  case c
    when "1", "-c", "--c"
      system("clear")
      system("./monitoring/cpu_monitoring.sh")
    when "2", "-m", "--m"
      system("clear")
      system("./monitoring/mem_monitoring.sh")
    when "3", "-w", "--w"
      system("clear")
      system("./monitoring/website_monitoring.py")
    else
      # TODO
      puts "Invalid choice"
  end
end

def networking_options(c)
  case c
    when "1", "-i", "--i"
      sys("./networking/ip_pinging.py")
    when "1", "-s", "--s"
      sys("./networking/server_pinging.py")
    else
      # TODO
      puts "Invalid choice"
  end
end

def sys_options(c)
  case c
    when "1", "-a", "--a"
      sys("./sys/add_alias.sh")
    when "2", "-b", "--b"
      sys("./sys/bf.sh")
    when "3", "-c", "--c"
      sys("./sys/clean.rb")
    when "4", "-d", "--d"
      sys("./sys/del.rb")
    when "5", "-e", "--e"
      sys("./sys/exists.rb")
    when "6", "-f", "--f"
      sys("./sys/fd.rb")
    when "7", "-fl", "--fl"
      sys("./sys/file_updated.rb")
    when "8", "-fs", "--fs"
      system("clear")
      print `python3 -c "from tools.logos import Logo; Logo('FS');"`
      system("./fs")
    when "9", "-l", "--l"
      sys("./sys/last_updated.sh")
    when "10", "-p", "--p"
      sys("./sys/parse_date.rb")
    when "11", "-rt", "--rt"
      sys("./sys/resize_terminal.sh")
    when "12", "-r", "--r"
      sys("./sys/root.rb")
    when "13", "-s", "--s"
      system("clear")
      print `python3 -c "from tools.logos import Logo; Logo('Space');"`
      system("./space")
    else
      # TODO
      puts "Invalid choice"
  end
end
