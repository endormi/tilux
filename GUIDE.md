# Guide

- [Commands to use](#commands)
- [Run from any folder](#run-from-any-folder)
- [Running with Docker](#running-with-docker)
- [Download script or scripts](#download-script-or-scripts)

## Commands

> Every command can be run interactively or by using arguments

```
# Example

./tilux 1 -cc -e
```

All of the available commands:

> System and cryptography commands have an extra argument for example `-c` and `-f`.
This is to separate scripts into folders.

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
4 -f -del:  del (delete file or directory)
4 -f -e:    exists (check if file or dir exists)
4 -f -fd:   fd (number of files and folders)
4 -f -fl:   file updated
4 -f -fs:   file size
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
tilux --help
```

## Run from any folder

**Note**: You can't run tilux from any folder, but you can run included scripts individually.

For example:

In the example below, latest updated file
runs from current folder not inside tilux, same for fs.

```
# Ruby
./tilux/sys/info/os.rb

# Bash
./tilux/sys/file_folder/last_updated.sh

# Python
./tilux/monitoring/website_monitoring.py

# C
./tilux/sys/file_folder/fs.o
```

You can add the scripts to your alias if you want by using `sys/other/add_alias`.

## Running with Docker

You need: [Docker](https://docker.com) && [Docker-compose](https://docs.docker.com/compose/)

> If you have a permission issue when running `docker-compose`,
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

## Download script or scripts

Instead of having to build everything and install everything,
you might want to just install one script (or a few).

All you have to do is:

> In this example I'm downloading the computer bit system script.

**Note**: Certain scripts might not work, because by not running the build,
you might not have the required packages installed.

```
# Example

wget https://raw.githubusercontent.com/endormi/tilux/master/sys/info/bit.sh
```

Make the script an executable:

```
# Example

chmod +x bit.sh
```

Run:

```
# Example

./bit.sh
```

You can also directly download multiple scripts that I find to be the most useful.

> Checks for ruby

```bash
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download_scripts | bash
```

You can then add the scripts to your `dotfiles`.
