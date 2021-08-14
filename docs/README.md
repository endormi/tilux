# Guide

- [Commands to use](#commands)
- [Run from any folder](#run-from-any-folder)
- [Running with Docker](#running-with-docker)
- [Download a specific script](#download-a-specific-script)

## Commands

> Every command can be run interactively or by using arguments

```bash
# Example

./tilux cryptography -o -e
```

All of the available commands:

> System and cryptography commands have an extra argument for example `-c` and `-f`. This is to separate scripts into folders.

```
cryptography -c: ccrypt -e (for encryption) or -d (for decryption)
cryptography -o: Openssl -e (for encryption) or -d (for decryption)
cryptography -p: Pyca -e (for encryption) or -d (for decryption)
cryptography -z: Zip -e (for encryption) or -d (for decryption)
monitoring -c: monitoring cpu processes
monitoring -m: monitoring memory consumption
monitoring -w: monitoring website (if it's up and if not it sends an email)
networking -i: IP pinging
networking -s: server pinging
system -c -g:    configure git
system -c -gtd:  gnome terminal profile dump
system -c -gtl:  gnome terminal profile load
system -f -bf:   bf (backup folder)
system -f -d:    del (delete file or directory)
system -f -e:    exists (check if file or dir exists)
system -f -fd:   fd (number of files and folders)
system -f -fl:   file updated
system -f -fs:   file size
system -f -l:    last updated (file)
system -img -ci: convert image
system -img -i:  image info
system -img -ri: resize image
system -img -ro: rotate image
system -i -b:    computer bit system
system -i -di:   check distro
system -i -ip:   IP address
system -i -k:    kernel version
system -i -o:    check OS
system -i -prv:  python and ruby version
system -i -r:    root (check if you are root or not)
system -i -s:    display computer space, uptime and number of processes running
system -o -a:    add alias
system -o -c:    clean (clean system of logs and trash)
system -o -cdp:  convert doc to pdf
system -o -p:    parse date
system -o -rl:   remove line
system -o -rt:   resize terminal
system -p -cpu:  CPU name
system -p -gpu:  GPU name
system -s -fp:   force poweroff
system -s -fr:   force reboot
```

Help command:

```
tilux --help
```

## Run from any folder

**Note**: You can't run tilux from any folder, but you can run included scripts individually.

For example:

In the example below, latest updated file runs from current folder not inside tilux, same for fs.

```bash
# Ruby
./tilux/sys/info/os.rb

# Bash
./tilux/sys/file_folder/last_updated.sh

# Python
./tilux/monitoring/website_monitoring.py

# C
./tilux/fs.o
```

You can add the scripts to your alias if you want by using `sys/other/add_alias`.

## Running with Docker:

> It's still a bit buggy.

You need:
[Docker](https://docker.com) && [Docker-compose](https://docs.docker.com/compose/)

> If you have a permission issue when running `docker-compose`, you can use `sudo docker-compose`.

#### Build:

```
docker-compose build
```

#### Up:

```
docker-compose up -d
```

#### Execute:

```
docker-compose exec tilux tilux
```

#### Down:

```
docker-compose down
```

## Download a specific script

Instead of having to build everything and install everything, you might want to just install one script (or a few).

All you have to do is:

> In this example I'm downloading the computer bit system script.

**Note**: Certain scripts might not work, because by not running the build, you might not have the required packages installed.

```bash
# Example

wget https://raw.githubusercontent.com/endormi/tilux/master/sys/info/bit.sh
```

Make the script an executable:

```bash
# Example

chmod +x bit.sh
```

Run:

```bash
# Example

./bit.sh
```
