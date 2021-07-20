#### Note
Currently this repository also holds my own dotfiles because ~~I am lazy~~ it is my 
configuration manager after all. If there is enough interest, I will remove my
dotfiles from this repo and start adding functions to try to match that of GNU 
stow. If you are not interested in my dotfiles and still want to use confman,
just:
```bash
rm -r profiles/*
rm -r tweaks/*
```
and use as normal.

# Confman - A Stupid Simple Configuration Manager
Confman is a stupid simple configuration manager that:

- Is tiny enough to be added to your own dotfile repo, or anywhere you want for that matter.
- Aims to provide a lot more options than just a git bare repo.
- Written in POSIX shell and thus can be ran literally anywhere.
- Let's be real: you were probably going to write the same code anyways someday, unless you go out of your way to install stow or learn NixOS.

It offers:
- `conf` - Profile management via symlinks
- `tweak` - Additional user definable "tweaks" that apply easily on a system level,
    because:
    1. I'm not spending hours manually copying configs to configure system-level software. I have things to do.
    2. Ever try making your entire root a git bare repo? Me neither. Please don't.

## Usage
#### Setup
```bash
git clone https://github.com/ianayl/confman <folder_you_want>
cd <folder_you_want>
```
#### Making configuration profiles
Make a new folder in `./profiles`, put your dotfiles in said folder and make a `links` with the following syntax:
```
config/file > .config/destination
```
Where the config file is in your profile's folder and destination is based in `$HOME`

#### Using profiles
```bash
./conf -l <profile_folder> # load whatever profile you want
./conf -c # clears all profiles
./conf -h # for more usage options
```

#### Making tweaks
make a new folder in `tweaks`, add relevant files, and make:
- `install.sh`, which contains the commands to install your "tweak"
- `remove.sh`, is optional but outlines the commands to uninstall your "tweak"

#### Using tweaks
```bash
./tweak -i <tweak_folder>
./tweak -r <tweak_to_remove>
./tweak -a # Automated prompt that assists with installing tweaks so you don't have to manually install each tweak one by one
./tweak -h # for more usage options
```
