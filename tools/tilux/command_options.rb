#!/usr/bin/ruby

require_relative 'helpers'

PATH = File.expand_path('../../', File.dirname(__FILE__))
ENV['CATCH_SCRIPT_PATH'] = File.expand_path('./tools/catch', PATH)
ENV['PYTHONPATH'] = PATH

# I'm using the same options, when running interactively and by using arguments

$opts = {
  '1': {
    '-cc': {
      '-e': -> { TiluxHelpers.sys("bash #{PATH}/cryptography/ccrypt/ccrypt_encryption.sh tilux") },
      '-d': -> { TiluxHelpers.sys("bash #{PATH}/cryptography/ccrypt/ccrypt_decryption.sh tilux") }
    },
    '-op': {
      '-e': -> { TiluxHelpers.sys("bash #{PATH}/cryptography/openssl/openssl_encryption.sh tilux") },
      '-d': -> { TiluxHelpers.sys("bash #{PATH}/cryptography/openssl/openssl_decryption.sh tilux") }
    },
    '-pc': {
      '-e': -> { TiluxHelpers.sys("python3 #{PATH}/cryptography/pyca/encrypt.py tilux") },
      '-d': -> { TiluxHelpers.sys("python3 #{PATH}/cryptography/pyca/decrypt.py tilux") }
    },
    '-zp': {
      '-e': -> { TiluxHelpers.sys("bash #{PATH}/cryptography/zip/zip_encryption.sh tilux") },
      '-d': -> { TiluxHelpers.sys("bash #{PATH}/cryptography/zip/zip_decryption.sh tilux") }
    }
  },
  '2': {
    '-c': -> { TiluxHelpers.sys("bash #{PATH}/monitoring/cpu_monitoring.sh tilux") },
    '-m': -> { TiluxHelpers.sys("bash #{PATH}/monitoring/mem_monitoring.sh tilux") },
    '-w': -> { TiluxHelpers.sys("python3 #{PATH}/monitoring/website_monitoring.py tilux") }
  },
  '3': {
    '-i': -> { TiluxHelpers.sys("python3 #{PATH}/networking/ip_pinging.py tilux") },
    '-s': -> { TiluxHelpers.sys("python3 #{PATH}/networking/server_pinging.py tilux") }
  },
  '4': {
    '-c': {
      '-gc':  -> { TiluxHelpers.sys("bash #{PATH}/sys/config/git_config.sh tilux") },
      '-gtd': -> { TiluxHelpers.sys("bash #{PATH}/sys/config/gnome_term_profile_dump.sh tilux") },
      '-gtl': -> { TiluxHelpers.sys("bash #{PATH}/sys/config/gnome_term_profile_load.sh tilux") }
    },
    '-f': {
      '-bf':     -> { TiluxHelpers.sys("bash #{PATH}/sys/file_folder/bf.sh tilux") },
      '-c':      -> { TiluxHelpers.sys("bash #{PATH}/sys/file_folder/clean.sh tilux") },
      '-del':    -> { TiluxHelpers.sys("ruby #{PATH}/sys/file_folder/del.rb tilux") },
      '-e':      -> { TiluxHelpers.sys("ruby #{PATH}/sys/file_folder/exists.rb tilux") },
      '-ext':    -> { TiluxHelpers.sys("python3 #{PATH}/sys/file_folder/extension_f.py tilux") },
      '-fd':     -> { TiluxHelpers.sys("ruby #{PATH}/sys/file_folder/fd.rb tilux") },
      '-fl':     -> { TiluxHelpers.sys("ruby #{PATH}/sys/file_folder/file_updated.rb tilux") },
      '-fs':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('FS');"`
        system("#{PATH}/sys/file_folder/fs.o")
      end,
      '-k':      -> { TiluxHelpers.sys("python3 #{PATH}/sys/file_folder/keyword.py tilux") },
      '-l':      -> { TiluxHelpers.sys("bash #{PATH}/sys/file_folder/last_updated.sh tilux") }
    },
    '-img': {
      '-ci': -> { TiluxHelpers.sys("ruby #{PATH}/sys/img/convert_img.rb tilux") },
      '-i':  -> { TiluxHelpers.sys("ruby #{PATH}/sys/img/img_info.rb tilux") },
      '-ri': -> { TiluxHelpers.sys("ruby #{PATH}/sys/img/resize_img.rb tilux") },
      '-ro': -> { TiluxHelpers.sys("ruby #{PATH}/sys/img/rotate_img.rb tilux") }
    },
    '-i': {
      '-bit':   -> { TiluxHelpers.sys("bash #{PATH}/sys/info/bit.sh tilux") },
      '-ip':    -> { TiluxHelpers.sys("ruby #{PATH}/sys/info/ip.rb tilux") },
      '-k':     -> { TiluxHelpers.sys("bash #{PATH}/sys/info/kernel_version.sh tilux") },
      '-os':    -> { TiluxHelpers.sys("ruby #{PATH}/sys/info/os.rb tilux") },
      '-prv':   -> { TiluxHelpers.sys("bash #{PATH}/sys/info/prv.sh tilux") },
      '-r':     -> { TiluxHelpers.sys("ruby #{PATH}/sys/info/root.rb tilux") },
      '-s':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Space');"`
        system("#{PATH}/sys/info/space.o")
      end
    },
    '-o': {
      '-a':     -> { TiluxHelpers.sys("bash #{PATH}/sys/other/add_alias.sh tilux") },
      '-b':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Bashcii');"`
        sleep(1)
        system("#{PATH}/sys/bashcii/bashcii")
      end,
      '-cdp':   -> { TiluxHelpers.sys("ruby #{PATH}/sys/other/convert_doc_to_pdf.rb tilux") },
      '-def':   -> { TiluxHelpers.sys("bash #{PATH}/sys/other/default_web_browser.sh tilux") },
      '-s':     -> { TiluxHelpers.sys("bash #{PATH}/sys/other/cmd_search.sh tilux") },
      '-p':     -> { TiluxHelpers.sys("ruby #{PATH}/sys/other/parse_date.rb tilux") },
      '-rl':    -> { TiluxHelpers.sys("bash #{PATH}/sys/other/remove_line.sh tilux") },
      '-rt':    -> { TiluxHelpers.sys("bash #{PATH}/sys/other/resize_terminal.sh tilux") }
    },
    '-p': {
      '-cpu':    -> { TiluxHelpers.sys("bash #{PATH}/sys/proc/cpu_name.sh tilux") },
      '-oc':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Single core');"`
        sleep(1)
        system("#{PATH}/sys/proc/one_core.o")
      end,
      '-mc':     lambda do
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Multi-core');"`
        sleep(1)
        system("#{PATH}/sys/proc/multi_core.o")
      end,
      '-ps':     -> { TiluxHelpers.sys("bash #{PATH}/sys/proc/list_active_ps.sh tilux") }
    },
    '-s': {
      '-fp' => -> { TiluxHelpers.sys("bash #{PATH}/sys/shutdown/force_poweroff.sh tilux") },
      '-fr' => -> { TiluxHelpers.sys("bash #{PATH}/sys/shutdown/force_reboot.sh tilux") }
    }
  }
}
