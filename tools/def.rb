#!/usr/bin/ruby

# I'm using the same options, when running interactively and by using arguments
# The only difference is case so I included the functions here
# and then to make it functional, using sys_options(input)

### Cryptography options
def cryptography_encryption
  puts '-e: Encryption'
  puts "-d: Decrypt\n"
  puts
end

$ccrypt_options = {
  '-e' => -> { sys('./cryptography/ccrypt/ccrypt_encryption.sh tilux') },
  '-d' => -> { sys('./cryptography/ccrypt/ccrypt_decryption.sh tilux') }
}
$ccrypt_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$gpg_options = {
  '-e' => -> { sys('./cryptography/gpg/gpg_encryption.sh tilux') },
  '-d' => -> { sys('./cryptography/gpg/gpg_decryption.sh tilux') }
}
$gpg_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$openssl_options = {
  '-e' => -> { sys('./cryptography/openssl/openssl_encryption.sh tilux') },
  '-d' => -> { sys('./cryptography/openssl/openssl_decryption.sh tilux') }
}
$openssl_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$pyca_options = {
  '-e' => -> { sys('./cryptography/pyca/encrypt.py tilux') },
  '-d' => -> { sys('./cryptography/pyca/decrypt.py tilux') }
}
$pyca_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$zip_options = {
  '-e' => -> { sys('./cryptography/zip/zip_encryption.sh tilux') },
  '-d' => -> { sys('./cryptography/zip/zip_decryption.sh tilux') }
}
$zip_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

### End cryptography

$monitoring_options = {
  '-c' => -> { sys('./monitoring/cpu_monitoring.sh tilux') },
  '-m' => -> { sys('./monitoring/mem_monitoring.sh tilux') },
  '-w' => -> { sys('./monitoring/website_monitoring.py tilux') }
}
$monitoring_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$networking_options = {
  '-i' => -> { sys('./networking/ip_pinging.py tilux') },
  '-s' => -> { sys('./networking/server_pinging.py tilux') }
}
$networking_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$conf_options = {
  '-gc'  => -> { sys('./sys/config/git_config.sh tilux') },
  '-gtd' => -> { sys('./sys/config/gnome_term_profile_dump.sh tilux') },
  '-gtl' => -> { sys('./sys/config/gnome_term_profile_load.sh tilux') }
}
$conf_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$ff_options = {
  '-bf'  => -> { sys('./sys/file_folder/bf.sh tilux') },
  '-c'   => -> { sys('./sys/file_folder/clean.sh tilux') },
  '-del' => -> { sys('./sys/file_folder/del.rb tilux') },
  '-e'   => -> { sys('./sys/file_folder/exists.rb tilux') },
  '-fd'  => -> { sys('./sys/file_folder/fd.rb tilux') },
  '-fl'  => -> { sys('./sys/file_folder/file_updated.rb tilux') },
  '-fs'  => lambda {
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('FS');"`
    system('./sys/file_folder/fs.o')
  },
  '-l' => -> { sys('./sys/file_folder/last_updated.sh tilux') }
}
$ff_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$image_options = {
  '-ci' => -> { sys('./sys/img/convert_img.rb tilux') },
  '-i'  => -> { sys('./sys/img/img_info.rb tilux') },
  '-ri' => -> { sys('./sys/img/resize_img.rb tilux') },
  '-ro' => -> { sys('./sys/img/rotate_img.rb tilux') }
}
$image_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$info_options = {
  '-bit' => -> { sys('./sys/info/bit.sh tilux') },
  '-di'  => -> { sys('./sys/info/distro.sh tilux') },
  '-ip'  => -> { sys('./sys/info/ip.rb tilux') },
  '-k'   => -> { sys('./sys/info/kernel_version.sh tilux') },
  '-os'  => -> { sys('./sys/info/os.rb tilux') },
  '-prv' => -> { sys('./sys/info/prv.sh tilux') },
  '-r'   => -> { sys('./sys/info/root.rb tilux') },
  '-s'   => lambda {
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Space');"`
    system('./sys/info/space.o')
  }
}
$info_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$proc_options = {
  '-cpu' => -> { sys('./sys/proc/cpu_name.sh tilux') },
  '-oc'  => lambda {
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Single core');"`
    sleep(1)
    system('./sys/proc/one_core.o')
  },
  '-mc' => lambda {
    system('clear')
    print `python3 -c "from tools.logos import Logo; Logo('Multi-core');"`
    sleep(1)
    system('./sys/proc/multi_core.o')
  }
}
$proc_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

$shutdown_options = {
  '-fp' => -> { sys('./sys/shutdown/force_poweroff.sh tilux') },
  '-fr' => -> { sys('./sys/shutdown/force_reboot.sh tilux') }
}
$shutdown_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }

# Just for now
$sys_other_options = {
  '-a'   => -> { sys('./sys/other/add_alias.sh tilux') },
  '-cdp' => -> { sys('./sys/other/convert_doc_to_pdf.rb tilux') },
  '-def' => -> { sys('./sys/other/default_web_browser.sh tilux') },
  '-s'   => -> { sys('./sys/other/cmd_search.sh tilux') },
  '-p'   => -> { sys('./sys/other/parse_date.rb tilux') },
  '-rl'  => -> { sys('./sys/other/remove_line.sh tilux') },
  '-rt'  => -> { sys('./sys/other/resize_terminal.sh tilux') }
}
$sys_other_options.default_proc = ->(_h, k) { raise KeyError, "#{k} Invalid choice!" }
