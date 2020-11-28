# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=5000

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#############################>>> MY EDITS <<<###################################33
# make sudo more interactive and now user will request instead of making orders
# plz stands for please
# added it because it is more fun
alias plz="sudo"
# just an alias to updating repos in KDE NEON 
# it will save a lot of brain memory and typig work
# refresh to update repos. 
# its simple
alias refresh="sudo apt update && pkcon refresh &&  pkcon get-updates"
# active an update to KDE NEON only 
# it will work after updating repos
alias update="sudo pkcon update"
# it will nearly solve all problems while installing a software
# will fix all broken dependencies
# will save a lot of brain memory and also fix headache
alias fix="sudo apt --fix-broken install"
# we don't have to write a long command while installing <.deb> files.
# helpful in destroying brain cells.
alias localinstall="sudo dpkg -i"
#to run the snap version of vlc
#alias vlc="snap run vlc"
#list of avaliable kernels
alias kernels="sudo dpkg --list | egrep -i --color 'linux-image|linux-headers'"
##autoremove
alias autoremove="sudo apt autoremove"
# To search a package over repos
alias appsearch="pkcon search"
# To install a app from repos
alias install="sudo apt install"
# To install through pkcon
alias pinstall="sudo pkcon install"
# I don't know what is this 
export PATH=${PATH}:/home/$USER/platform-tools
######
alias telegram="snap run telegram-desktop"
###
alias ppa="cd /etc/apt/sources.list.d ; ls"
#####
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias path='echo -e ${PATH//:/\\n}'
