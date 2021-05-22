username=$(whoami)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/${username}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)
source "/Users/${username}/.oh-my-zsh/oh-my-zsh.sh"

ssh_location="/Users/${username}/.ssh"

# shell alias
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
#  git alias
alias gs="git status"
alias gp="git push"
alias gcm="git commit -m"
alias gaa="git add -A"
alias ga="git add"
alias gst="git stash"
# SSH alias
alias devssh="=ssh -i ${ssh_location}/dev.pem"
alias stagssh="ssh -i ${ssh_location}/staging.pem"
alias loadssh="ssh -i ${ssh_location}/load.pem"
alias prodssh="ssh -i ${ssh_location}/production.pem"
alias stagjenkins="stagssh username@ipaddr"
alias prodjenkins="prodssh username@ipaddr"
