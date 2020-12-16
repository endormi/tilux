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

Tilux is a tool for Linux with a bunch of scripts included.

This is still very much a work in progress.

If you want to see a certain script added, open up a new [issue](https://github.com/endormi/tilux/issues/new/choose) or make a pull request.

#### Usage:

```
git clone https://github.com/endormi/tilux.git
```

#### Install requirements:

```
pip install -r requirements.txt && bundle
```

**Run** `usage`:

```bash
bash usage
```

> After running `usage` for the first time, you can use `tilux` instead of `usage`.

**Run** `tilux`:

```bash
./tilux
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
System | System scripts (bf backup folder, truncate logs and remove trash, file updated, last updated file, parse date and check if you are root) | -b, -c, -f, -l, -p or -r
Misc | Miscellaneous scripts (delete file or folder, check if file or folder exists and number of files and folders) | -d, -e or -f

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
