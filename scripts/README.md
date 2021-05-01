# Scripts

In the files you see `if [[ ! -d scripts ]]`, that's a quick hack to check if script is ran inside scripts folder and if it is CD out of the folder.

Scripts are meant to be ran inside tilux folder, not outside
so this should not cause any errors.

I did not create and include a function, because in order to
source the file, same check would have been needed.

## Includes:

- add_alias - Adds tilux alias to `bash_aliases`
- cformat - Formats C and C++ code
- install_req - Installs required packages
- resize_term - Resizes terminal
- start_dcompose - Starts docker-compose
