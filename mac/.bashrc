#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim="nvim"
alias bset="brightnessctl set"
alias run="\$(ls /usr/bin | sort -ud | fzf) \&" 

# Make fn keys require fn+key
#echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
source /usr/share/nvm/init-nvm.sh

export PATH=$PATH:/home/main/.scripts
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
