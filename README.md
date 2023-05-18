# Amadeus

Repository for my desktop enviroment/rice

## How to install

`doas make install`

## Design

this will be a standard suckless rice for artix-openrc, hyperbola-linux, openbsd, and hyperbola-bsd (when it exists)

each software module will be using git submodules and i'll have a single makefile/shellscript to install everything at once.

the plan is to have a complete desktop enviroment that is extremely light-weight and obviously stylized around steins;gate though default color scheme will probably be gruvbox

## Linux

on linux if possible build the software statically linked against musl.

also install doas via pacman automatically.

build aureate for aur.

requires bmake.

## Modules

### Window Manager

this will be a minimized fork of dwm with some creature comforts, xresources support and improved floating window mode, not to say that floating windows will be first priority.

### Terminal Emulator

st with xresources, transparency. leave scrolling to the multiplexer.

### Multiplexer

dvtm, honestly i don't know much that would be modified.

### Shell

on openbsd/hyperbola-bsd use the default user shell, on linux statically link a version of oksh and install it.

on both compile a statically linked version of dash for /bin/sh.
if toybox sh matures potentionally install it or a fork for /bin/bash.

### Text Editor

vis, but with transparency fixed, maybe clean up some of the code because it's actually very bloated.

### File Handler

when opening a file pipe it to sopen, or a c port of such to handle it,
setup xdg-open as a fallback.

### Notifications

Use herbe to display notifications, tiramisu as the notification daemon, allow subscribing to rss feeds with sfeed, by sending a rss link to the file handler.

### Application Launcher

dmenu fork with xresources for now, i'd rather launch a floating terminal with a terminal selection application so that it's easier to maintain a potentional non-x11 version of the DE in the future, if there is a decent alternative to x11.

### Prompt

the shell prompt should just be my fork of promptless cleaned up, and a linux/bsd opfetch should be ran on the terminal launch.

### Image Viewer

fork of nsxiv with some better defaults.

### Document Viewer

i'd like to write one from scratch, mupdf and zathura are both shit.

### Web Browser

likely not include anything, but if i do it will be links.

### Media Player

install mpv on the system.... i'd like a more suckless solution but not happening anytime soon.

### File Manager

SFM is cool but isn't featured enough for mainstream use, pcmanfm doesn't work with a keyboard oriented system, may need to write a custom solution, but for now include nothing.
