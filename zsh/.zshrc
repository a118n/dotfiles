export ZSH=/home/dallen/.oh-my-zsh
export EDITOR="nano"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

ZSH_THEME="ys"

ENABLE_CORRECTION="true"

plugins=(git colored-man)

source $ZSH/oh-my-zsh.sh

setopt auto_cd

setopt completeinword

setopt nobeep

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:pacaur:*' remote-access false

zstyle ':completion:*' menu yes select

#Use custom ls dir colors
#eval `dircolors ~/.dircolors`

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias cls='clear'

alias upgrade='pacaur -Syu'

alias lsorphans='sudo pacman -Qdt'

alias rmorphans='sudo pacman -Rs $(pacman -Qtdq)'

alias clearcache='sudo pacman -Scc'

alias lsforeign='pacman -Qm'

alias rmfull='sudo pacman -Rcnsu'

#alias playd3='env WINEPREFIX="/run/media/dallen/Seagate/Games/Diablo 3" setarch i386 -L -B -R -3 primusrun wine C:\\Program\ Files\ \(x86\)\\Diablo\ III\\Diablo\ III.exe &> /dev/null'

alias playd3='env WINEPREFIX="/run/media/dallen/Seagate/Games/Diablo 3" primusrun wine C:\\Program\ Files\ \(x86\)\\Diablo\ III\\Diablo\ III.exe 2> /dev/null'