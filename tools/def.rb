#!/usr/bin/ruby

# I'm using the same options, when running interactively and by using arguments
# The only difference is case so I included the functions here
# and then to make it functional, using sys_options(input)

### Cryptography options
def ccrypt_options(c)
  case c
    when "1", "-e", "--e", "-E", "--E"
      sys("./cryptography/ccrypt/ccrypt_encryption.sh")
    when "2", "-d", "--d", "-D", "--D"
      sys("./cryptography/ccrypt/ccrypt_decryption.sh")
    else
      # TODO
      puts "Invalid choice!"
    end
end

def gpg_options(c)
  case c
    when "1", "-e", "--e", "-E", "--E"
      sys("./cryptography/gpg/gpg_encryption.sh")
    when "2", "-d", "--d", "-D", "--D"
      sys("./cryptography/gpg/gpg_decryption.sh")
    else
      # TODO
      puts "Invalid choice!"
  end
end

def openssl_options(c)
  case c
    when "1", "-e", "--e", "-E", "--E"
      sys("./cryptography/openssl/openssl_encryption.sh")
    when "2", "-d", "--d", "-D", "--D"
      sys("./cryptography/openssl/openssl_decryption.sh")
    else
      # TODO
      puts "Invalid choice!"
  end
end

def pyca_options(c)
  case c
    when "1", "-e", "--e", "-E", "--E"
      sys("./cryptography/pyca/encrypt.py")
    when "2", "-d", "--d", "-D", "--D"
      sys("./cryptography/pyca/decrypt.py")
    else
      # TODO
      puts "Invalid choice!"
  end
end

def zip_options(c)
  case c
    when "1", "-e", "--e", "-E", "--E"
      sys("./cryptography/zip/zip_encryption.sh")
    when "2", "-d", "--d", "-D", "--D"
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
    when "1", "-c", "--c", "-C", "--C"
      system("clear")
      system("./monitoring/cpu_monitoring.sh")
    when "2", "-m", "--m", "-M", "--M"
      system("clear")
      system("./monitoring/mem_monitoring.sh")
    when "3", "-w", "--w", "-W", "--W"
      system("clear")
      system("./monitoring/website_monitoring.py")
    else
      # TODO
      puts "Invalid choice"
  end
end

def networking_options(c)
  case c
    when "1", "-i", "--i", "-I", "--I"
      sys("./networking/ip_pinging.py")
    when "1", "-s", "--s", "-S", "--S"
      sys("./networking/server_pinging.py")
    else
      # TODO
      puts "Invalid choice"
  end
end

def sys_options(c)
  case c
    when "1", "-b", "--b", "-B", "--B"
      sys("./sys/bf.sh")
    when "2", "-c", "--c", "-C", "--C"
      sys("./sys/clean.rb")
    when "3", "-d", "--d", "-D", "--D"
      sys("./sys/del.rb")
    when "4", "-e", "--e", "-E", "--E"
      sys("./sys/exists.rb")
    when "5", "-f", "--f", "-F", "--F"
      sys("./sys/fd.rb")
    when "6", "-fl", "--fl", "-Fl", "--Fl", "-FL", "--FL"
      sys("./sys/file_updated.rb")
    when "7", "-fs", "--fs", "-Fs", "--Fs", "-FS", "--FS"
      system("clear")
      print `python3 -c "from tools.logos import Logo; Logo('FS');"`
      system("./fs")
    when "8", "-l", "--l", "-L", "--L"
      sys("./sys/last_updated.sh")
    when "9", "-p", "--p", "-P", "--P"
      sys("./sys/parse_date.rb")
    when "10", "-r", "--r", "-R", "--R"
      sys("./sys/root.rb")
    else
      # TODO
      puts "Invalid choice"
  end
end
