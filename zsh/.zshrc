###### VARIABLES ######

export ZSH=/home/dallen/.oh-my-zsh
export EDITOR="vim"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/dallen/.gem/ruby/2.3.0/bin:/home/dallen/.bin"
#export VDPAU_DRIVER="va_gl"
export PANEL_FIFO="/tmp/panel-fifo"


###### ZSH SETTINGS ######

ZSH_THEME="ys"
plugins=(git colored-man zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

### Options ###
setopt auto_cd
setopt completeinword
setopt nobeep

### Completions ###
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:pacaur:*' remote-access false
zstyle ':completion:*' menu yes select

### TMUX
# if which tmux >/dev/null 2>&1; then
#      #if not inside a tmux session, and if no session is started, start a new session
#      test -z "$TMUX" && (tmux attach || tmux new-session)
#        fi

### Base16 Shell ###
BASE16_SHELL="$HOME/.config/base16-shell/base16-flat.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

### Fortune/Cowsay Generator ###
#fortune dexter | cowsay -f $(ls /usr/share/cows/ | shuf | head -n 1) | lolcat
fortune | cowsay -f cat | lolcat


###### ALIASES ######

### General ###
alias ls='ls -lash --color'
alias cls='clear'
alias grep='grep --color'
alias df='df -hT'
alias updatedb='sudo updatedb'
alias udevrel='sudo udevadm control --reload'
alias tm='tmux'
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -p'

### Pacman ###
alias upgrade='pacaur -Syu --noconfirm'
alias lsorphans='pacaur -Qdt'
alias rmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias clearcache='sudo pacman -Scc'
alias lsforeign='pacaur -Qm'
alias pacremove='pacaur -Rcnsu'
alias pacinstall='pacaur -S'
alias pacsearch='pacaur -Ss'
alias pacls='pacaur -Qqe'

### Systemd ###
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='systemctl status'

### Git ###
alias gs='git status'
alias ga='git add'
alias gc='git commit -am'
alias gp='git push -u origin master'
alias gco='git checkout --force'

### Beets ###
alias bimp='ruby ~/Documents/Scripts/bimp.rb'
alias bi='beet import'
alias bf='beet fetchart'
alias be='beet embedart'
alias bu='beet update'
alias bl='beet list'
alias bs='beet stats'

### Games/Wine ###

#First run optirun zsh, then invoke this alias.
alias playd3='cd /home/dallen/Games/Diablo\ 3/drive_c/Program\ Files\ \(x86\)/Diablo\ III/; echo "Running Diablo III: Reaper of Souls"; env LANG="ru_RU.UTF-8" env WINEPREFIX="/home/dallen/Games/Diablo 3" wine Diablo\ III.exe > /dev/null 2>&1'

### Misc ###
alias weather='wego 0'
alias xrel='xrdb ~/.Xresources'
alias nvidia-settings='sudo optirun -b none nvidia-settings -c :8'
alias cowshow='cowsay -l | sed "1d;s/ /\n/g" | while read f; do cowsay -f $f $f; done'
alias winenew='ruby ~/Documents/Scripts/wine_new.rb'
alias flac2mp3='find -name "*.flac" -exec ffmpeg -i {} -acodec libmp3lame -ab 320k {}.mp3 \;'
alias porn=' mpv "http://www.pornhub.com/random"'
alias scloud='mpv --shuffle "https://soundcloud.com/electricdrop-1/likes"'

###### FUNCTIONS ######

function extract() {
  if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xvjf $1     ;;
        *.tar.gz)    tar xvzf $1     ;;
        *.bz2)       bunzip2 $1      ;;
        *.rar)       unrar x $1      ;;
        *.gz)        gunzip $1       ;;
        *.tar)       tar xvf $1      ;;
        *.tbz2)      tar xvjf $1     ;;
        *.tgz)       tar xvzf $1     ;;
        *.zip)       unzip $1        ;;
        *.Z)         uncompress $1   ;;
        *.7z)        7z x $1         ;;
        *)           echo "'$1' cannot be extracted via >extract<" ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}