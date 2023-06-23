# Commands

- [Commands to use](#commands)
- [Run from any folder](#run-from-any-folder)
- [Running with Docker](#running-with-docker)
- [Download script or scripts](#download-script-or-scripts)

## Commands

> Every command can be run interactively or by using arguments.

Here is an example command:

```
./tilux 1 -cc -e
```

> **NOTE**: If you have executed the `scripts/add_project_to_path` or
`scripts/add_alias` script, you can use the `tilux` command
without the ./ prefix when running commands.

All of the available commands:

> System and cryptography commands have an extra argument,
for example, `-c` and `-f`, to separate scripts into folders.

```
1 -cc: ccrypt -e (for encryption) or -d (for decryption)
1 -op: Openssl -e (for encryption) or -d (for decryption)
1 -pc: Pyca -e (for encryption) or -d (for decryption)
1 -zp: Zip -e (for encryption) or -d (for decryption)
2 -c: monitoring cpu processes
2 -m: monitoring memory consumption
2 -w: monitoring website (if it's up and if not it sends an email)
3 -i: IP pinging
3 -s: server pinging
4 -c -gc:   configure git
4 -c -gtd:  gnome terminal profile dump
4 -c -gtl:  gnome terminal profile load
4 -f -bf:   bf (backup folder)
4 -f -c:    clean (clean system of logs and trash)
4 -f -d:    check for duplicate files
4 -f -del:  del (delete file or directory)
4 -f -dir:  directory size calculator
4 -f -e:    exists (check if file or dir exists)
4 -f -ext:  check file extensions inside a folder
4 -f -f:    check file permissions
4 -f -fd:   fd (number of files and folders)
4 -f -fl:   file updated
4 -f -fs:   file size
4 -f -k:    search files by keyword
4 -f -l:    last updated (file)
4 -img -ci: convert image
4 -img -i:  image info
4 -img -ri: resize image
4 -img -ro: rotate image
4 -i -bit:  computer bit system
4 -i -ip:   IP address
4 -i -k:    kernel and distro version
4 -i -os:   check OS
4 -i -prv:  python and ruby version
4 -i -r:    root (check if you are root or not)
4 -i -s:    display computer space, uptime and number of processes running
4 -o -a:    add alias
4 -o -b:    print text in ASCII art (submodule)
4 -o -cdp:  convert doc to pdf
4 -o -def:  default web browser
4 -o -p:    parse date
4 -o -rl:   remove line
4 -o -rt:   resize terminal
4 -o -s:    search specific command
4 -p -cpu:  CPU name
4 -p -mc:   multi-core process time
4 -p -oc:   single core process time
4 -p -ps:   list active processes
4 -s -fp:   force poweroff
4 -s -fr:   force reboot
```

Help command:

```
./tilux --help
```

## Running Individual Scripts

**NOTE**: While you can run Tilux from any folder, you also have the option to
run included scripts individually.

For example, you can directly execute the following scripts
from the current folder (not inside Tilux):

> You can also execute individual scripts directly by using the . (dot) notation.

```
ruby tilux/sys/info/os.rb

bash tilux/sys/file_folder/last_updated.sh

python3 tilux/monitoring/website_monitoring.py

# C
tilux/sys/file_folder/fs.o
```

If you prefer running specific scripts without launching Tilux itself,
you can execute them individually as shown above. Additionally, if you frequently
use certain scripts, you can add them to your alias for easier access.
To do this, you can use the `sys/other/add_alias` script.

## Running with Docker

To run Tilux with Docker, make sure you have: [Docker](https://docker.com) and
[Docker-compose](https://docs.docker.com/compose/) installed.

> If you encounter permission issues when running `docker-compose`,
you can use `sudo docker-compose`.

### Build

```
docker-compose build
```

### Up

```
docker-compose up -d
```

### Execute

```
docker-compose exec tilux tilux
```

### Down

```
docker-compose down
```

## Download Script or Scripts

Instead of building and installing everything,
you can choose to download and install individual scripts.

To download a specific script (e.g., the computer bit system script),
use the following command:

> **NOTE**: Without running the `build`, there is a possibility that the
required packages, classes, and modules have not been installed or loaded.
To ensure the smooth operation of the scripts, it is recommended to run the
`build` and ensure all dependencies are properly set up. If you're downloading image
scripts, you also need to download `image_validator.rb`.

```
# Example

wget https://raw.githubusercontent.com/endormi/tilux/master/sys/info/bit.sh
```

Make the script executable:

```
# Example

chmod +x bit.sh
```

Run the script:

```
# Example

./bit.sh
```

You can also directly download multiple scripts that are
considered to be the most useful:

> Checks for ruby.

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download/download_scripts | bash
```

After downloading the scripts, you can add them to your `dotfiles` or
any other desired location.
