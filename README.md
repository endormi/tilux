```python
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o
```

![v](https://img.shields.io/badge/tilux-v.0.3.5-blue)
![docker-compose-action-CI](https://github.com/endormi/tilux/workflows/docker-compose-action-CI/badge.svg?branch=master)
![compile](https://github.com/endormi/tilux/actions/workflows/compile.yml/badge.svg?branch=master)
[![License](https://img.shields.io/github/license/endormi/tilux)](LICENSE)

## What is Tilux?

Tilux is a CLI with a bunch of scripts included that are useful and concise.

This is still very much a work in progress.

If you want to see a certain script added, open up a new [issue](https://github.com/endormi/tilux/issues/new/choose) or make a pull request.

**Note**: This works on Debian-based distros. Other distros are not supported at the moment.

## Why?

I as also many others (probably) as well have a ton of useful scripts for Linux, that just happen to be all over
the system and not in one specific folder. So this is where this project comes handy, everything is in one CLI.

Also, a big part of the reason why I created this project is to learn, that's why I have used different programming languages when I could've just used one.

#### Usage:

```
git clone https://github.com/endormi/tilux.git
```

**Run** `build`:

```bash
bash build
```

> After running `build` for the first time, you can use `tilux` instead of `build`.

**Run** `tilux`:

```bash
./tilux
```

**Run** `tilux` using arguments:

```bash
./tilux monitoring -c
```

`--help`:

```bash
./tilux --help
```

If you run the `add_alias` script inside scripts folder, you can run tilux by simply running:

> Now you can run `tilux` without having to be inside the folder.

```
tilux

# Arguments work the same
```

**Note**: For now `tilux` command `CD` into the `tilux` folder location.

To see the commands to use and how to run using Docker, click [here](docs/README.md).

[Tested](TESTED_ON.md) on (these are manually tested).

## License

The source code is released under the [MIT License](LICENSE).
