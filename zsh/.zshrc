####### VARIABLES: #######

export ZSH=/home/dallen/.oh-my-zsh
export EDITOR="nano"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"



####### ZSH SETTINGS: #######

ZSH_THEME="ys"
plugins=(git colored-man)
source $ZSH/oh-my-zsh.sh

### Options: ###
setopt auto_cd
setopt completeinword
setopt nobeep

### Completions: ###
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:pacaur:*' remote-access false
#zstyle ':completion:*' menu yes select

### Fortune/Cowsay Generator: ###
fortune archer | cowsay -f $(ls /usr/share/cows/ | shuf | head -n 1)



####### ALIASES: #######

### General: ###
alias ls='ls -lash --color=auto'
alias cls='clear'
alias grep='grep --color=auto'

### Pacman: ###
alias upgrade='pacaur -Syu'
alias lsorphans='pacaur -Qdt'
alias rmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias clearcache='sudo pacman -Scc'
alias lsforeign='pacaur -Qm'
alias rmfull='pacaur -Rcnsu'
alias pacinstall='pacaur -S'
alias pacsearch='pacaur -Ss'

### Systemd: ###
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='systemctl status'

### Misc: ###
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias playd3='echo "Running Diablo III: Reaper of Souls"; env WINEPREFIX="/run/media/dallen/Seagate/Games/Diablo 3" primusrun wine C:\\Program\ Files\ \(x86\)\\Diablo\ III\\Diablo\ III\ Launcher.exe'