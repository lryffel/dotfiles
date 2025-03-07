### Navigation
abbr d  cd
alias q='exit'
alias :q='exit'

### Launch programs
abbr v nvim
abbr vim nvim
abbr sv sudo nvim

# ls
abbr s 'exa -l'
abbr sa 'exa -la'

# git
abbr ga git add
abbr g git
abbr gs git status
abbr gc git commit
abbr gb git branch
abbr gp git push
abbr gd git diff
abbr gP git pull

# safety
abbr mv mv -i
abbr cp cp -i

# xterm
alias xterm="xterm -fa 'Monospace' -fs 18"

# bluetooth
abbr bc bluetoothctl

# xournalpp
abbr x xournalpp

# zathura
abbr z zathura

# pacman
abbr p pacman
abbr pq pacman -Qi
abbr sp sudo pacman
abbr spu sudo pacman -Syu
abbr spr sudo pacman -Runs

# systemctl
abbr sc systemctl

# power
alias bye="shutdown now"
alias zzz="systemctl suspend"
alias logout="swaymsg exit"

# open programs
alias dq="disown & exit"

# windows managers
abbr sy ~/.config/sway/launch.sh

# kill
abbr ka "killall"
