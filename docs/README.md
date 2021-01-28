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
info: host (name, OS, kernel version, DNS domain and local IP address)
cryptography -c: ccrypt -e (for encryption) or -d (for decryption)
cryptography -g: GPG -e (for encryption) or -d (for decryption)
cryptography -o: Openssl -e (for encryption) or -d (for decryption)
cryptography -p: Pyca -e (for encryption) or -d (for decryption)
cryptography -z: Zip -e (for encryption) or -d (for decryption)
monitoring -c: monitoring cpu processes
monitoring -m: monitoring memory consumption
monitoring -w: monitoring website (if it's up and if not it sends an email)
networking -i: IP pinging
networking -s: Server pinging
system -a: add alias
system -b: bf (backup folder)
system -c: clean (clean system of logs and trash)
system -d: del (Delete file or directory)
system -e: exists (Check if file or dir exists)
system -f: fd (number of files and folders)
system -fl: file updated
system -fs: file size
system -l: last updated (file)
system -p: parse date
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
