source ~/.bashrc
alias v="nvim"

# Edit configs
alias brc="nvim ~/.bashrc"
alias vrc="nvim ~/.vimrc"
alias vinit="nvim ~/.config/nvim/init.vim"
alias bp="nvim ~/.bash_profile"
alias ala="nvim ~/.config/alacritty/alacritty.yml"
alias tconf="nvim ~/.tmux.conf"
alias snip="cd ~/.vim/UltiSnips"
alias sshc="nvim ~/.ssh/config"

# QOL
alias b="cd .."
alias cl="clear"
alias dtop="cd ~/Desktop"
alias dload="cd ~/Downloads"
alias doc="cd ~/Documents"
alias dot="cd ~/dotfiles"
alias rk="cd ~/Desktop/reviewkit"
alias nt="cd ~/Desktop/Notes"

# Git stuff
alias gs="git status"
alias gp="git pull"
alias ga="git add ."
alias gd="git diff"
alias gb="git branch"

# Sourcing
alias sbp="source ~/.bash_profile"
alias st="tmux source ~/.tmux.conf"

# Tmux stuff
alias tls="tmux ls"
alias tn="tmux new-session -s"
alias tk="tmux kill-session -t"
alias ta="tmux a -t"
alias tkill="tmux kill-server"

# Misc
alias getpath="echo $PATH | tr ':' '\n'"
alias la="ls -A"
alias lal="ls -Al"
export FZF_DEFAULT_COMMAND='rg --files'

# Settings
export HISTCONTROL=ignoredups

# --- School Stuff ---
alias uwssh="ssh -Y jj2yan@linux.student.cs.uwaterloo.ca"
alias ecessh="ssh -A jj2yan@eceterm.uwaterloo.ca"
alias rk="cd ~/Desktop/rk"
# 3B
alias 343="cd ~/Documents/Waterloo/3B/cs343"
alias 348="cd ~/Documents/Waterloo/3B/cs348"
alias 390="cd ~/Documents/Waterloo/3B/se390"
alias 380="cd ~/Documents/Waterloo/3B/se380"
alias 358="cd ~/Documents/Waterloo/3B/ece358"
alias 464="cd ~/Documents/Waterloo/3B/se464"
# 3A
alias 341="cd ~/Documents/Waterloo/3A/cs341"
alias ui="cd ~/Documents/Waterloo/3A/cs349"
alias ethics="cd ~/Documents/Waterloo/3A/cs492"
alias 213="cd ~/Documents/Waterloo/3A/math213"
alias os="cd ~/Documents/Waterloo/3A/se350"
alias qa="cd ~/Documents/Waterloo/3A/se465"
# 2B
alias 240="cd ~/Documents/Waterloo/2B/cs240"
alias 247="cd ~/Documents/Waterloo/2B/cs247"
alias earth="cd ~/Documents/Waterloo/2B/earth121"
alias 239="cd ~/Documents/Waterloo/2B/math239"
export PATH=/opt/homebrew/bin:/opt/homebrew/opt/llvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
