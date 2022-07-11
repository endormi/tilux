```python
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o
```

![v](https://img.shields.io/badge/tilux-v.1.2.1-blue)
![docker-compose-action-CI](https://github.com/endormi/tilux/workflows/docker-compose-action-CI/badge.svg?branch=master)
![rubocop](https://github.com/endormi/tilux/actions/workflows/rubocop.yml/badge.svg)
![make](https://github.com/endormi/tilux/actions/workflows/make.yml/badge.svg)
![docs](https://readthedocs.org/projects/tilux/badge/?version=latest)
![CodeQL](https://github.com/endormi/tilux/actions/workflows/codeql-analysis.yml/badge.svg?branch=master)
[![License](https://img.shields.io/github/license/endormi/tilux)](LICENSE)

## What is Tilux?

Tilux is a CLI with a bunch of scripts included that are useful and concise.

This is still very much a work in progress.

If you want to see a certain script added, open up a new [issue](https://github.com/endormi/tilux/issues/new/choose) or make a pull request.

> Feel free to try on other distros. PR's for supporting different distros are very much appreciated.

**Note**: Only [tested](TESTED_ON.md) on Debian-based distros.

If you don't want to install the whole tool. You can download specific scripts, to know how [click here](GUIDE.md#download-a-specific-script).

> Big part of the reason why I created this project is to learn, that's why I have used different programming languages when I could've just used one.

#### Usage:

```bash
git clone https://github.com/endormi/tilux.git
```

**Run** `build`:

> Installing with `virtualenv` is highly recommended.

```bash
bash build
```

You can also install python packages in `virtualenv`:

```bash
bash build venv
```

After build:

```bash
. ./venv/bin/activate
```

If you build this way, remember to add the `venv` script to alias.

Run `scripts/add_alias_venv`:

```bash
./scripts/add_alias_venv
```

Run `venv`:

```bash
tvenv
```

Deactivate `venv`:

```bash
deactivate
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

```bash
tilux
```

> Arguments work the same.

**Note**: `tilux` command will `CD` into the `tilux` folder location.

> However `tilux` is not required to run scripts individually. [See here](GUIDE.md#run-from-any-folder).

To see the commands to use, how to run from any folder, how to run using Docker and how to download a specific script, click [here](GUIDE.md).

To use `Pyca` you need to first generate key:

`Pyca`:

```bash
./cryptography/pyca/generate_key.py
```

Check useful scripts [here](scripts).

[Tested](TESTED_ON.md) on (these are manually tested).

## License

The source code is released under the [MIT License](LICENSE).
