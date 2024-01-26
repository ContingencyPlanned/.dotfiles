# ~/.zshrc

# Alias
alias ncm="ncmpcpp"
alias ardour="/home/connor/downloads/app/ardour/gtk2_ardour/ardev"
alias muvluv="wine '/home/connor/.wine/drive_c/Program Files (x86)/Muv-Luv/muvluv16.exe'"
alias yiik="wine '/home/connor/games/YIIK A Postmodern RPG/YIIK A Postmodern RPG/YIIK A Postmodern RPG.exe'"
alias touhou8="cd '/home/connor/games/Touhou 8 - Imperishable Night' && wine start Touhou08.exe"
alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Variables
export BROWSER="firefox"
export EDITOR="nvim"
export PATH="$PATH:/home/connor/.local/bin:/home/connor/games"

# Autosuggestions & Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Command Completion
autoload -Uz compinit
compinit

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# Prompt
autoload -Uz promptinit
promptinit

PROMPT='%F{cyan}%n%f%F{magenta}@%F{yellow}%m%f %F{magenta}%B%~%b%f '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# MPD
export MPD_HOST=$HOME/.config/mpd/socket
