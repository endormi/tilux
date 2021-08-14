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
system -a:   add alias
system -bf:  bf (backup folder)
system -b:   computer bit system
system -c:   clean (clean system of logs and trash)
system -cdp: convert doc to pdf
system -ci:  convert image
system -cpu: CPU name
system -d:   del (delete file or directory)
system -di:  check distro
system -e:   exists (check if file or dir exists)
system -f:   fd (number of files and folders)
system -fl:  file updated
system -fp:  force poweroff
system -fr:  force reboot
system -fs:  file size
system -g:   configure git
system -gtd: gnome terminal profile dump
system -gtl: gnome terminal profile load
system -gpu: GPU name
system -h:   check hostname
system -img: image info
system -i:   IP address
system -k:   kernel version
system -l:   last updated (file)
system -o:   check OS
system -p:   parse date
system -prv: python and ruby version
system -rl:  remove line
system -ri:  resize image
system -rt:  resize terminal
system -r:   root (check if you are root or not)
system -ro:  rotate image
system -s:   display computer space, uptime and number of processes running
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
./tilux/sys/os.rb

# Bash
./tilux/sys/last_updated.sh

# Python
./tilux/monitoring/website_monitoring.py

# C
./tilux/fs.o
```

You can add the scripts to your alias if you want by using `sys/add_alias`.

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

wget https://raw.githubusercontent.com/endormi/tilux/master/sys/bit.sh
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
