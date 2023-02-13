# Installation

How to install `tilux`?

Installing `tilux` is very easy.

You have three options to download the project:

Clone the project:

```
git clone https://github.com/endormi/tilux.git
```

You can also get the latest release:

> It will install jq, if you don't already have it.

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download_latest_release | bash
```

If you wish to get a specific release and not the latest:

> It will install jq and fzf, if you don't already have them.

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download_specific_release | bash
```

And then `CD` into the folder:

```
# Either
cd tilux

# or
cd tilux-v.(release)

# Depending on how you downloaded tilux
```

Run `build`:

**NOTE**: Installs python packages with `virtualenv` by default.

```bash
bash build
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

You can also install python packages without `virtualenv`:

**NOTE**: This is not recommended.

```bash
bash build no_venv
```

## Running tilux

Run `tilux`:

```
./tilux
```

You can also use arguments to run `tilux`:

```
./tilux 2 -c
```

Run `--help`:

```
./tilux --help
```

If you run the `add_alias` script inside scripts folder:

```
./scripts/add_alias
```

You can then run `tilux` by simply running:

```
tilux
```

**NOTE**: the command will CD into the `tilux` folder location.

## Running docs

Run `docs` locally:

> `make docs` builds the `docs` and `run=1` runs `docs` locally.

```
make docs run=1
```

Run `man pages`:

```
make groff
```
