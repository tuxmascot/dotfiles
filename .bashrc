#########################################################################
#########################################################################


# Aliases
alias ls='exa --color=always'
alias disp-reset='xrandr -s 0'
alias disp-home='xrandr --output DP1 --mode 3840x2160 --above eDP1'

# Color aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Environment Variables
export EDITOR=vim
export XDG_CONFIG_HOME=~/.config

# Fix st delkey
tput smkx


#########################################################################
#########################################################################

export PS1="\[$(tput setaf 7)\](\t)\[$(tput setaf 2)\] \u\[$(tput setaf 5)\]\[$(tput bold)\]Ⓐ \[$(tput sgr0)\]\[$(tput setaf 3)\]\h:\[$(tput setaf 2)\][\[$(tput setaf 7)\]\w\[$(tput setaf 2)\]]\[$(tput setaf 4)\] => \[$(tput sgr0)\]"
