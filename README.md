# Tilux

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
Cryptography (WIP) | Encryption (-e) and decryption (-d) (ccrypt, gpg, openssl, pyca and zip) | -c, -g, -o, -p or -z
Monitoring | Monitor different processes (cpu monitoring and memory monitoring) | -c or -m
Networking | IP pinging and server pinging | -i or -s
Misc | Miscellaneous scripts (check if file or dir exists) | misc

[Tested](TESTED_ON.md) on (these are manually tested).
