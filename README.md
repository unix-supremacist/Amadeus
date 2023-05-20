# Amadeus

Repository for my desktop enviroment/rice

The code under this repository and not submodules is dual licensed under GPL2 and LGPL2.1.

## How to install

`git clone --recursive https://github.com/unix-supremacist/Amadeus.git`

`#make install`

## How to Uninstall

`#make uninstall`

note that this doesn't uninstall the doas, mpv packages, and it does not currently uninstall samurai.

## Design

this will be a standard suckless rice for Artix-openrc, HyperbolaLinux, OpenBSD, and HyperbolaBSD (when it exists)

each software module will be using git submodules and i'll have a single makefile/shellscript to install everything at once.

the plan is to have a complete desktop enviroment that is extremely light-weight and obviously stylized around steins;gate though default color scheme will probably be gruvbox

on linux if possible build the software statically linked against musl.

maybe make a modular system to allow the user to select modules of the install.

## Linux

builds aureate for aur.

installs doas.

installs bmake.

## Modules

### Window Manager

this will be a minimized fork of dwm with some creature comforts, no bar, xresources support and improved floating window mode, not to say that floating windows will be first priority.

### Clock

have the DE give a time notification every hour.

### Terminal Emulator

st with xresources, transparency. leave scrolling to the multiplexer.

### Multiplexer

dvtm, honestly i don't know much that would be modified.

### Shell

on OpenBSD/HyperbolaBSD use the default user shell, on linux statically link a version of openbsd ksh and install it.

on both compile a statically linked version of dash for /bin/sh.

see toybox for a bash install on openbsd/hyperbola-bsd

apparently to get out of gnu autoconfigure hell, i'll need to make forks of both openbsd ksh and dash with a custom buildscript.

### File Handler

when opening a file pipe it to sopen, or a c port of such to handle it,
setup xdg-open as a fallback.

### Notifications

Use herbe to display notifications, tiramisu as the notification daemon, allow subscribing to rss feeds with sfeed, by sending a rss link to the file handler.

### Application Launcher

dmenu fork with xresources for now, i'd rather launch a floating terminal with a terminal selection application so that it's easier to maintain a potentional non-x11 version of the DE in the future, if there is a decent alternative to x11.

maybe swap to launching smenu in a terminal, needs to kill autonconfigure.

### Prompt

the shell prompt should just be my fork of promptless cleaned up, and a linux/bsd opfetch should be ran on the terminal launch.

### Image Viewer

fork of nsxiv with some better defaults, and making sure it respects xresources.

### Document Viewer

i'd like to write one from scratch, mupdf and zathura are both shit.

### Web Browser

likely not include anything, but if i do it will be links.

### Media Player

install mpv on the system.... i'd like a more suckless solution but not happening anytime soon.

### File Manager

SFM is cool but isn't featured enough for mainstream use, pcmanfm doesn't work with a keyboard oriented system, may need to write a custom solution, but for now include nothing.

### Wallpaper

potentionally use xwallpaper but it needs to be spedup on openbsd, and autoconfgiure needs to be killed.

### Bookmarks

xdotool bookmarks.

### Swallow

simple swallow script with alias for nsxiv and mpv

### Image Editor

libresprite should automatically be built via samurai, though this should be an optimal module.

maybe build gimp too but autoconfigure would have to be killed.

## Toybox Modules

include a fork of toybox setup to compile standalone binaries and include some of these on install, maybe implement more than what i mention here but these are the big ones.

### Text Editor

vi, it's very minimal, possibly name it tbvi or tvi on systems that have standard vi.

maybe manually implement some vis/vim features.

### Bash

build toysh for /bin/bash on OpenBSD/HyperbolaBSD

### Top

top, very minimal basically same speel as vi, but possibly named tbop, ttop, and maybe implement htop features.

## Wayland

Wayland would be considered, but there is not a good suckless image viewer like nsxiv, and wayland doesn't work on my current hardware, if this is solved i'll consider it.
