# Dotfiles

Fledgling, minimal dotfiles. You can read about dotfiles [here](https://dotfiles.github.io/).

## Installation

**First** look at what this project does (symlinking files).

**If you have existing config** that will be affected by the installation, make backups!

You'll need `git` and `make` installed on your machine. 

Clone the repository to your home folder.

```
cd
git clone git@github.com:Linnesq/dotfiles.git
Cloning into 'dotfiles'...
```

Then...

```
cd `~/dotfiles`
make install
source ~/.bash_profile # or open a new terminal
```

Now you can test you have this installed by, for example, listing your new aliases:

```
alias
...
alias gc='git cm'
...
```

## Uninstall

To uninstall (unlink):

```
cd `~/dotfiles`
make uninstall
exec bash # to reload the shell
alias # should have no output
```

## Special files

`.extra` - a bash script with whatever private stuff you want, will be git ignored.

`.gitlocal` - for private git config, e.g. user name/email.
