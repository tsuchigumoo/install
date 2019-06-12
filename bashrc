#
# ~/.bashrc
screenfetch 
feh --randomize --bg-fill /home/install/*.jpg

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#source /home/sam/sources/ronin.sh
#source /home/sam/sources/Ronin.sh
#source /home/sam/sources/sshg.sh
# source sources/ranger.sh
alias u='apt-get update'
alias a='apt-get install'
alias p='pacman -S'
alias s='sudo -s'
alias r='ranger'
alias ss='scrot -d 5 -c'
alias c='clear'
alias yt='python3 -m youtube_dl'
alias d='value=$(</sys/class/backlight/intel_backlight/brightness);min=1000;
echo $((value-min)) > /sys/class/backlight/intel_backlight/brightness;echo $value' 

alias b='value=$(</sys/class/backlight/intel_backlight/brightness);min=1000;
echo $((value+min)) > /sys/class/backlight/intel_backlight/brightness;echo $value' 

#wmctrl -r ':ACTIVE:' -b toggle,fullscreen

set -o vi

export EDITOR=vim

alias v='vim'



#################COLORS#############
 enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
