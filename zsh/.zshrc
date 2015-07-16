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
#fortune dexter | cowsay -f $(ls /usr/share/cows/ | shuf | head -n 1) | lolcat
fortune | cowsay -f cat | lolcat

### Weather: ###
echo
wego 0


####### ALIASES: #######

### General: ###
alias ls='ls -lash --color=auto'
alias cls='clear'
alias grep='grep --color=auto'
alias df='df -hT'
alias updatedb='sudo updatedb'

### Pacman: ###
alias upgrade='pacaur -Syu'
alias lsorphans='pacaur -Qdt'
alias rmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias clearcache='sudo pacman -Scc'
alias lsforeign='pacaur -Qm'
alias rmfull='pacaur -Rcnsu'
alias pacinstall='pacaur -S'
alias pacsearch='pacaur -Ss'
alias pacls='pacaur -Qqe'

### Systemd: ###
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='systemctl status'

### Git: ###
alias gs='git status'
alias ga='git add'
alias gc='git commit -am'
alias gp='git push -u origin master'

### Beets: ###
alias bi='beet import'
alias bf='beet fetchart'
alias be='beet embedart'
alias bu='beet update'
alias bl='beet list'
alias bs='beet stats'

### Games/Wine: ###
#First run optirun zsh, then invoke this alias.
alias playd3='echo "Running Diablo III: Reaper of Souls"; env LANG="ru_RU.UTF-8" env WINEPREFIX="/home/dallen/Games/Diablo 3" setarch i386 -L -B -R -3 wine C:\\Program\ Files\\Diablo\ III\\Diablo\ III.exe > /dev/null 2>&1'
alias playpoe='cd /home/dallen/Games/Path\ of\ Exile/drive_c/Program\ Files/Grinding\ Gear\ Games/Path\ of\ Exile/; echo "Running Path of Exile"; env WINEPREFIX="/home/dallen/Games/Path of Exile" wine PathOfExile.exe'

### Misc: ###

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias nvidia-settings='sudo optirun -b none nvidia-settings -c :8'
alias cowshow='cowsay -l | sed "1d;s/ /\n/g" | while read f; do cowsay -f $f $f; done'
alias winenew='python ~/Git/scripts/newwineprefix.py'