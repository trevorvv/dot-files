# use vi commands in the shell
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias c='clear'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias nf='clear && neofetch'
alias top='htop'
alias ping='ping -c3'
alias x='startx'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot now'
alias mysql='mysql -u root -p'
alias vim='sudo vim'
alias ksql='sudo kill $(sudo lsof -t -i:3306)'
alias kssh='sudo systemctl stop sshd.service && kill $(sudo lsof -t -i:22)'
alias ssql='sudo systemctl enable mariadb.service && systemctl start mariadb.service'
alias sssh='sudo systemctl enable sshd.service && systemctl start sshd.service'

# gotta have colored dir's to be 1337 hacker 
[ -e "/etc/DIR_COLORS" ] && DIR_COLORS="/etc/DIR_COLORS"
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

# better colored man pages for easier reading (jk its to look cool)
man() {
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      command man "$@"
}
