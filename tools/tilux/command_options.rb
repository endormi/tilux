#!/usr/bin/ruby

require_relative 'helpers'

# I'm using the same options, when running interactively and by using arguments

$opts = {
  '1': {
    '-cc': {
      '-e': -> { TiluxHelpers.sys('./cryptography/ccrypt/ccrypt_encryption.sh tilux') },
      '-d': -> { TiluxHelpers.sys('./cryptography/ccrypt/ccrypt_decryption.sh tilux') }
    },
    '-op': {
      '-e': -> { TiluxHelpers.sys('./cryptography/openssl/openssl_encryption.sh tilux') },
      '-d': -> { TiluxHelpers.sys('./cryptography/openssl/openssl_decryption.sh tilux') }
    },
    '-pc': {
      '-e': -> { TiluxHelpers.sys('./cryptography/pyca/encrypt.py tilux') },
      '-d': -> { TiluxHelpers.sys('./cryptography/pyca/decrypt.py tilux') }
    },
    '-zp': {
      '-e': -> { TiluxHelpers.sys('./cryptography/zip/zip_encryption.sh tilux') },
      '-d': -> { TiluxHelpers.sys('./cryptography/zip/zip_decryption.sh tilux') }
    }
  },
  '2': {
    '-c': -> { TiluxHelpers.sys('./monitoring/cpu_monitoring.sh tilux') },
    '-m': -> { TiluxHelpers.sys('./monitoring/mem_monitoring.sh tilux') },
    '-w': -> { TiluxHelpers.sys('./monitoring/website_monitoring.py tilux') }
  },
  '3': {
    '-i': -> { TiluxHelpers.sys('./networking/ip_pinging.py tilux') },
    '-s': -> { TiluxHelpers.sys('./networking/server_pinging.py tilux') }
  },
  '4': {
    '-c': {
      '-gc':  -> { TiluxHelpers.sys('./sys/config/git_config.sh tilux') },
      '-gtd': -> { TiluxHelpers.sys('./sys/config/gnome_term_profile_dump.sh tilux') },
      '-gtl': -> { TiluxHelpers.sys('./sys/config/gnome_term_profile_load.sh tilux') }
    },
    '-f': {
      '-bf':     -> { TiluxHelpers.sys('./sys/file_folder/bf.sh tilux') },
      '-c':      -> { TiluxHelpers.sys('./sys/file_folder/clean.sh tilux') },
      '-del':    -> { TiluxHelpers.sys('./sys/file_folder/del.rb tilux') },
      '-e':      -> { TiluxHelpers.sys('./sys/file_folder/exists.rb tilux') },
      '-fd':     -> { TiluxHelpers.sys('./sys/file_folder/fd.rb tilux') },
      '-fl':     -> { TiluxHelpers.sys('./sys/file_folder/file_updated.rb tilux') },
      '-fs':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('FS');"`
        system('./sys/file_folder/fs.o')
      end,
      '-l':      -> { TiluxHelpers.sys('./sys/file_folder/last_updated.sh tilux') }
    },
    '-img': {
      '-ci': -> { TiluxHelpers.sys('./sys/img/convert_img.rb tilux') },
      '-i':  -> { TiluxHelpers.sys('./sys/img/img_info.rb tilux') },
      '-ri': -> { TiluxHelpers.sys('./sys/img/resize_img.rb tilux') },
      '-ro': -> { TiluxHelpers.sys('./sys/img/rotate_img.rb tilux') }
    },
    '-i': {
      '-bit':   -> { TiluxHelpers.sys('./sys/info/bit.sh tilux') },
      '-ip':    -> { TiluxHelpers.sys('./sys/info/ip.rb tilux') },
      '-k':     -> { TiluxHelpers.sys('./sys/info/kernel_version.sh tilux') },
      '-os':    -> { TiluxHelpers.sys('./sys/info/os.rb tilux') },
      '-prv':   -> { TiluxHelpers.sys('./sys/info/prv.sh tilux') },
      '-r':     -> { TiluxHelpers.sys('./sys/info/root.rb tilux') },
      '-s':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Space');"`
        system('./sys/info/space.o')
      end
    },
    '-o': {
      '-a':     -> { TiluxHelpers.sys('./sys/other/add_alias.sh tilux') },
      '-b':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Bashcii');"`
        sleep(1)
        system('./sys/bashcii/bashcii')
      end,
      '-cdp':   -> { TiluxHelpers.sys('./sys/other/convert_doc_to_pdf.rb tilux') },
      '-def':   -> { TiluxHelpers.sys('./sys/other/default_web_browser.sh tilux') },
      '-s':     -> { TiluxHelpers.sys('./sys/other/cmd_search.sh tilux') },
      '-p':     -> { TiluxHelpers.sys('./sys/other/parse_date.rb tilux') },
      '-rl':    -> { TiluxHelpers.sys('./sys/other/remove_line.sh tilux') },
      '-rt':    -> { TiluxHelpers.sys('./sys/other/resize_terminal.sh tilux') }
    },
    '-p': {
      '-cpu':    -> { TiluxHelpers.sys('./sys/proc/cpu_name.sh tilux') },
      '-oc':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Single core');"`
        sleep(1)
        system('./sys/proc/one_core.o')
      end,
      '-mc':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Multi-core');"`
        sleep(1)
        system('./sys/proc/multi_core.o')
      end,
      '-ps':     -> { TiluxHelpers.sys('./sys/proc/list_active_ps.sh tilux') }
    },
    '-s': {
      '-fp' => -> { TiluxHelpers.sys('./sys/shutdown/force_poweroff.sh tilux') },
      '-fr' => -> { TiluxHelpers.sys('./sys/shutdown/force_reboot.sh tilux') }
    }
  }
}
