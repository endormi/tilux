# Guide

- [Commands](#commands)
- [Running Individual Scripts](#running-individual-scripts)
- [Running with Docker](#running-with-docker)
- [Download Script or Scripts](#download-script-or-scripts)
- [Customize-Colors-and-Font](#customize-colors-and-font)

## Commands

> Every command can be run interactively or by using arguments.

Here is an example command:

```
./tilux 1 -cc -e
```

> **NOTE**: If you have executed the `scripts/add_project_to_path` or
`scripts/add_alias` script, you can use the `tilux` command
without the ./ prefix when running commands.

All of the available commands:

> System and cryptography commands have an extra argument,
for example, `-c` and `-f`, to separate scripts into folders.

```
1 -cc: ccrypt -e (for encryption) or -d (for decryption)
1 -op: Openssl -e (for encryption) or -d (for decryption)
1 -pc: Pyca -e (for encryption) or -d (for decryption)
1 -zp: Zip -e (for encryption) or -d (for decryption)
2 -c: monitoring cpu processes
2 -m: monitoring memory consumption
2 -w: monitoring website (if it's up and if not it sends an email)
3 -i: IP pinging
3 -s: server pinging
4 -c -gc:   configure git
4 -c -gtd:  gnome terminal profile dump
4 -c -gtl:  gnome terminal profile load
4 -f -bf:   bf (backup folder)
4 -f -c:    clean (clean system of logs and trash)
4 -f -char: amount of chars in a file
4 -f -d:    check for duplicate files
4 -f -del:  del (delete file or directory)
4 -f -dir:  directory size calculator
4 -f -e:    exists (check if file or dir exists)
4 -f -ext:  check file extensions inside a folder
4 -f -f:    check file permissions
4 -f -fd:   fd (number of files and folders)
4 -f -fl:   file updated
4 -f -fs:   file size
4 -f -k:    search files by keyword
4 -f -l:    last updated (file)
4 -img -ci: convert image
4 -img -i:  image info
4 -img -ri: resize image
4 -img -ro: rotate image
4 -i -bit:  computer bit system
4 -i -ip:   IP address
4 -i -k:    kernel and distro version
4 -i -os:   check OS
4 -i -prv:  python and ruby version
4 -i -r:    root (check if you are root or not)
4 -i -s:    display computer space, uptime and number of processes running
4 -o -b:    print text in ASCII art (submodule)
4 -o -cdp:  convert doc to pdf
4 -o -def:  default web browser
4 -o -p:    parse date
4 -o -rl:   remove line
4 -o -rt:   resize terminal
4 -o -s:    search specific command
4 -p -cpu:  CPU name
4 -p -mc:   multi-core process time
4 -p -oc:   single core process time
4 -p -ps:   list active processes
4 -s -fp:   force poweroff
4 -s -fr:   force reboot
```

Help command:

```
./tilux --help
```

## Running Individual Scripts

**NOTE**: While you can run Tilux from any folder, you also have the option to
run included scripts individually.

For example, you can directly execute the following scripts
from the current folder (not inside Tilux):

> You can also execute individual scripts directly by using the . (dot) notation.

```
ruby tilux/sys/info/os.rb

bash tilux/sys/file_folder/last_updated.sh

python3 tilux/monitoring/website_monitoring.py

# C
tilux/sys/file_folder/fs.o
```

If you prefer running specific scripts without launching Tilux itself,
you can execute them individually as shown above.

## Running with Docker

To run Tilux with Docker, make sure you have: [Docker](https://docker.com) and
[Docker-compose](https://docs.docker.com/compose/) installed.

> If you encounter permission issues when running `docker-compose`,
you can use `sudo docker-compose`.

### Build

```
docker-compose build
```

### Up

```
docker-compose up -d
```

### Execute

```
docker-compose exec tilux tilux
```

### Down

```
docker-compose down
```

## Download Script or Scripts

Instead of building and installing everything,
you can choose to download and install individual scripts.

To download a specific script (e.g., the computer bit system script),
use the following command:

> **NOTE**: Without running the `build`, there is a possibility that the
required packages, classes, and modules have not been installed or loaded.
To ensure the smooth operation of the scripts, it is recommended to run the
`build` and ensure all dependencies are properly set up. If you're downloading image
scripts, you also need to download `image_validator.rb`.

```
# Example

wget https://raw.githubusercontent.com/endormi/tilux/master/sys/info/bit.sh
```

Make the script executable:

```
# Example

chmod +x bit.sh
```

Run the script:

```
# Example

./bit.sh
```

You can also directly download multiple scripts that are
considered to be the most useful:

> Checks for ruby.

```
wget -O - https://raw.githubusercontent.com/endormi/tilux/master/download/download_scripts | bash
```

After downloading the scripts, you can add them to your `dotfiles` or
any other desired location.

## Customize Colors and Font

You can now personalize the appearance with custom colors and font settings.
To get started, create a new file named `.custom_settings.yaml`.

Here's an example of the file contents, derived from the
`.custom_settings.example.yaml` file, which provides default values:

```
# Default values
custom:
  header_color: red
  version_text_color: light_white
  version_number_color: light_blue
  author_color: light_white
  link_color: light_white
  prompt_text_color: light_white
  prompt_color: light_yellow

  # For Python logo tool
  logo_color: red
  logo_font: slant
```

You can customize your preferences by modifying the file `.custom_settings.yaml`
as shown below:

> **NOTE:** The provided example below has just a subset of the available
customization options. Feel free to explore and modify other values in the
`.custom_settings.yaml` file according to your preferences.
Refer to the default values for the full list of customization options.

```
custom:
  header_color: blue
  prompt_text_color: red
  prompt_color: blue

  logo_color: blue
  logo_font: block
```

When creating the `.custom_settings.yaml` file,  ensure it is not empty
to avoid errors. You can choose to customize specific values,
such as `header_color`, while leaving others to retain their
default color and font values.

### Supported Customizations

For the colors, `ANSI` foreground colors are supported. Utilize the following values:

> **NOTE:** To use light colors, simply prepend `light_`
to the color name, such as `light_red`.

```
black
red
green
yellow
blue
purple
cyan
white
```

For `logo_color` and `logo_font`, the options are drawn from `termcolor` and `FIGlet`.
Explore the available options for `logo_color` in the `termcolor`
[README.md](https://github.com/termcolor/termcolor#text-properties). The color options
provided here align with the earlier set values, with the only distinction being
the use of purple instead of magenta and some light colors.

For font options, refer to this [example site](http://www.figlet.org/examples.html)
showcasing various fonts.

Customize different configurations to find the perfect customization
that suits your preferences.
