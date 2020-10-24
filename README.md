```python
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o
```

**More to come.**

Usage:

```
git clone https://github.com/endormi/tilux.git
```

Install requirements:

```
pip install -r requirements.txt
```

Run `usage`:

```bash
bash usage
```

> After running `usage` for the first time, you can use `tilux` instead of `usage`.

Run `tilux`:

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
Misc | Miscellaneous scripts (check if file or dir exists) | misc

Running with Docker:

> It's still a bit buggy.

You need:
[Docker](docker.com) && [Docker-compose](docs.docker.com/compose/)

> If you have a permission issue when running `docker-compose`, you can use `sudo docker-compose`.

Build:

```
docker-compose build
```

Up:

```
docker-compose up -d
```

Execute:

```
docker-compose exec tilux tilux
```

Down:

```
docker-compose down
```

[Tested](TESTED_ON.md) on (these are manually tested).
