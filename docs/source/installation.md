# Installation

How to install `tilux`?

Installing `tilux` is very easy.

Clone the project:

```
git clone https://github.com/endormi/tilux.git
```

You can also get the latest release:

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download_latest_release | bash
```

And then CD into the folder:

```
cd tilux-v.(latest_release)
```

Run `build`:

**NOTE**: Installing with `virtualenv` is recommended.

```
bash build
```

## Using virtualenv

Run `build`:

```
bash build venv
```

After `build`:

```
. ./venv/bin/activate
```

Add the `venv` script to alias:

```
./scripts/add_alias_venv
```

Activate `virtualenv`:

```
tvenv
```

Deactivate:

```
deactivate
```

## Running tilux

Run `tilux`:

```
./tilux
```

You can also use arguments to run `tilux`:

```
./tilux monitoring -c
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
