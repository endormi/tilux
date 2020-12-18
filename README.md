```python
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o
```

## What is Tilux?

Tilux is a CLI with a bunch of scripts included that are useful and concise.

This is still very much a work in progress.

If you want to see a certain script added, open up a new [issue](https://github.com/endormi/tilux/issues/new/choose) or make a pull request.

## Why?

I as also many others (probably) as well have a ton of useful scripts for Linux, that just happen to be all over
the system and not in one specific folder. So this is where this project comes handy, everything is in one CLI,.

Also, a big part of the reason why I created this project is to learn, that's why I have used different programming languages when I could've just used one.

#### Usage:

```
git clone https://github.com/endormi/tilux.git
```

**Run** `usage`:

```bash
bash usage
```

> After running `usage` for the first time, you can use `tilux` instead of `usage`.

#### Install requirements:

```
pip install -r requirements.txt && bundle
```

**Run** `tilux`:

```bash
./tilux
```

**Run** `tilux` using arguments:
> for example (exactly the same choices as running interactively)

```bash
./tilux monitoring -c
```

`--help`:

```bash
./tilux --help
```

Type | About | Choices
:------:|-----------|:------:
Info | Gain info about the host (name, OS, kernel version etc. and public IP) | info
Cryptography | Encryption (-e) and decryption (-d) (ccrypt, gpg, openssl, pyca and zip) | -c, -g, -o, -p or -z
Monitoring | Monitor different processes (cpu monitoring, memory monitoring and website monitoring) | -c, -m or -w
Networking | IP pinging and server pinging | -i or -s
System | System scripts (bf backup folder, truncate logs and remove trash, delete file or folder, check if file or folder exists, number of files and folders, file updated, file size, last updated file, parse date and check if you are root) | -b, -c, -d, -e, -f, -fl, -fs, -l, -p or -r

### Running with Docker:

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

[Tested](TESTED_ON.md) on (these are manually tested).
