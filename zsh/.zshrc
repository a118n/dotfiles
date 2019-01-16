export ZSH="/home/dallen/.oh-my-zsh"
export EDITOR=vim

plugins=(
  git
  colored-man-pages
  extract
  sudo
  rsync
  systemd
  zsh-syntax-highlighting
)

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  root_indicator
  time
)

source $ZSH/oh-my-zsh.sh

### Options ###
setopt auto_cd
setopt completeinword
setopt nobeep

### Completions ###
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu yes select

### Pacman ###
alias upgrade='yay -Syyuu --noconfirm'
alias pacrm='yay -Rcnsu'
alias pacinstall='yay -S'
alias pacsearch='yay -Ss'
alias pacls='yay -Qqe' # List all installed packages
alias paclsf='yay -Qm' # List all foreign (AUR) packages
alias paclso='yay -Qdtq' # List all orphaned packages
alias pacrmo='sudo pacman -Rscnu $(pacman -Qtdq)' # Remove orphans
alias pacclear='sudo pacman -Scc' # Clear package cache

### Aliases ###
alias cls='clear'
alias ll='ls -lash --color'
alias grep='grep --color'
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -p'
alias df='df -hT'
alias du='du -d 1 -h | sort -h -r'
alias udevrel='sudo udevadm control --reload'
alias flac2mp3='find -name "*.flac" -exec ffmpeg -i {} -acodec libmp3lame -ab 320k {}.mp3 \;'
alias compress='tar -cvzf'
alias rem='http_proxy= https_proxy= nohup remmina -c /home/dallen/.local/share/remmina/1540193436225.remmina &>/dev/null &'
