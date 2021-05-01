# Guide

- [Commands to use](#commands)
- [Running with Docker](#running-with-docker)

## Commands

> Every command can be run interactively or by using arguments

```bash
# Example

./tilux cryptography -g -e
```

All of the available commands:

```
cryptography -c: ccrypt -e (for encryption) or -d (for decryption)
cryptography -g: GPG -e (for encryption) or -d (for decryption)
cryptography -o: Openssl -e (for encryption) or -d (for decryption)
cryptography -p: Pyca -e (for encryption) or -d (for decryption)
cryptography -z: Zip -e (for encryption) or -d (for decryption)
monitoring -c: monitoring cpu processes
monitoring -m: monitoring memory consumption
monitoring -w: monitoring website (if it's up and if not it sends an email)
networking -i: IP pinging
networking -s: server pinging
system -a: add alias
system -bf: bf (backup folder)
system -b: computer bit system
system -c: clean (clean system of logs and trash)
system -cpu: CPU name
system -d: del (delete file or directory)
system -di: check distro
system -e: exists (check if file or dir exists)
system -f: fd (number of files and folders)
system -fl: file updated
system -fp: force poweroff
system -fr: force reboot
system -fs: file size
system -g: configure git
system -gpu: GPU name
system -h: check hostname
system -i: IP address
system -k: kernel version
system -l: last updated (file)
system -o: check OS
system -p: parse date
system -prv: python and ruby version
system -rt: resize terminal
system -r: root (check if you are root or not)
system -s: space (display computer space, uptime and number of processes running)
```

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
