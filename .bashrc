#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#cask 
export PATH="/home/xian/.cask/bin:$PATH"

webmify() { ffmpeg -i "$@" -vf scale=640:-1 -pass 1 -y -c:v libvpx -lag-in-frames 25 -auto-alt-ref 1 -b:v 400K -deadline best -cpu-used 0 -an -f webm nul && ffmpeg -i "$1" -vf scale=640:-1 -pass 2 -y -c:v libvpx -lag-in-frames 25 -auto-alt-ref 1 -b:v 400K -deadline best -cpu-used 0 -an "$@_out.webm" ;}

source /usr/share/doc/pkgfile/command-not-found.bash

export DOTNET_CLI_TELEMETRY_OPTOUT=1

export HISTSIZE=-1
export HISTFILESIZE=-1
