set fish_greeting
fish_vi_key_bindings

# path
set -gx PATH ~/.gem/ruby/2.7.0/bin ~/.cargo/bin ~/.local/bin $PATH

# ls
alias ls='ls -l --color=auto'
alias s='ls -la --color=auto'

# Navigation
alias d='cd'
alias q='exit'

# Launch programs
# --servername VIM for it to work with reverse synctex
alias v='vim --servername VIM'
alias vim='vim --servername VIM'

# git
alias ga='git add'
alias g='git status'
alias gs='git status'
alias gc='git commit'
alias gb='git branch'
alias gp='git push'
alias gd='git diff'
alias gP='git pull'

