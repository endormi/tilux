#!/usr/bin/ruby

# I'm using the same options, when running interactively and by using arguments

$opts = {
  :'1' =>
  {
    :'-cc' =>
    {
      :'-e' => -> { sys('./cryptography/ccrypt/ccrypt_encryption.sh tilux') },
      :'-d' => -> { sys('./cryptography/ccrypt/ccrypt_decryption.sh tilux') }
    },
    :'-op' =>
    {
      :'-e' => -> { sys('./cryptography/openssl/openssl_encryption.sh tilux') },
      :'-d' => -> { sys('./cryptography/openssl/openssl_decryption.sh tilux') }
    },
    :'-pc' =>
    {
      :'-e' => -> { sys('./cryptography/pyca/encrypt.py tilux') },
      :'-d' => -> { sys('./cryptography/pyca/decrypt.py tilux') }
    },
    :'-zp' =>
    {
      :'-e' => -> { sys('./cryptography/zip/zip_encryption.sh tilux') },
      :'-d' => -> { sys('./cryptography/zip/zip_decryption.sh tilux') }
    }
  },
  :'2' =>
  {
    :'-c' => -> { sys('./monitoring/cpu_monitoring.sh tilux') },
    :'-m' => -> { sys('./monitoring/mem_monitoring.sh tilux') },
    :'-w' => -> { sys('./monitoring/website_monitoring.py tilux') }
  },
  :'3' =>
  {
    :'-i' => -> { sys('./networking/ip_pinging.py tilux') },
    :'-s' => -> { sys('./networking/server_pinging.py tilux') }
  },
  :'4' =>
  {
    :'-c' =>
    {
      :'-gc'  => -> { sys('./sys/config/git_config.sh tilux') },
      :'-gtd' => -> { sys('./sys/config/gnome_term_profile_dump.sh tilux') },
      :'-gtl' => -> { sys('./sys/config/gnome_term_profile_load.sh tilux') }
    },
    :'-f' =>
    {
      :'-bf'  => -> { sys('./sys/file_folder/bf.sh tilux') },
      :'-c'   => -> { sys('./sys/file_folder/clean.sh tilux') },
      :'-del' => -> { sys('./sys/file_folder/del.rb tilux') },
      :'-e'   => -> { sys('./sys/file_folder/exists.rb tilux') },
      :'-fd'  => -> { sys('./sys/file_folder/fd.rb tilux') },
      :'-fl'  => -> { sys('./sys/file_folder/file_updated.rb tilux') },
      :'-fs'  => lambda {
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('FS');"`
        system('./sys/file_folder/fs.o')
      },
      :'-l' => -> { sys('./sys/file_folder/last_updated.sh tilux') }
    },
    :'-img' =>
    {
      :'-ci' => -> { sys('./sys/img/convert_img.rb tilux') },
      :'-i'  => -> { sys('./sys/img/img_info.rb tilux') },
      :'-ri' => -> { sys('./sys/img/resize_img.rb tilux') },
      :'-ro' => -> { sys('./sys/img/rotate_img.rb tilux') }
    },
    :'-i' =>
    {
      :'-bit' => -> { sys('./sys/info/bit.sh tilux') },
      :'-ip'  => -> { sys('./sys/info/ip.rb tilux') },
      :'-k'   => -> { sys('./sys/info/kernel_version.sh tilux') },
      :'-os'  => -> { sys('./sys/info/os.rb tilux') },
      :'-prv' => -> { sys('./sys/info/prv.sh tilux') },
      :'-r'   => -> { sys('./sys/info/root.rb tilux') },
      :'-s'   => lambda {
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Space');"`
        system('./sys/info/space.o')
      }
    },
    :'-o' =>
    {
      :'-a'   => -> { sys('./sys/other/add_alias.sh tilux') },
      :'-cdp' => -> { sys('./sys/other/convert_doc_to_pdf.rb tilux') },
      :'-def' => -> { sys('./sys/other/default_web_browser.sh tilux') },
      :'-s'   => -> { sys('./sys/other/cmd_search.sh tilux') },
      :'-p'   => -> { sys('./sys/other/parse_date.rb tilux') },
      :'-rl'  => -> { sys('./sys/other/remove_line.sh tilux') },
      :'-rt'  => -> { sys('./sys/other/resize_terminal.sh tilux') }
    },
    :'-p' =>
    {
      :'-cpu' => -> { sys('./sys/proc/cpu_name.sh tilux') },
      :'-oc'  => lambda {
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Single core');"`
        sleep(1)
        system('./sys/proc/one_core.o')
      },
      :'-mc' => lambda {
        system('clear')
        print `python3 -c "from tools.logos import Logo; Logo('Multi-core');"`
        sleep(1)
        system('./sys/proc/multi_core.o')
      },
      :'-ps' => -> { sys('./sys/proc/list_active_ps.sh tilux') }
    },
    :'-s' =>
    {
      '-fp' => -> { sys('./sys/shutdown/force_poweroff.sh tilux') },
      '-fr' => -> { sys('./sys/shutdown/force_reboot.sh tilux') }
    }
  },
}
