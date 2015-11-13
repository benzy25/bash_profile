#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bakke'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh


echo "Wassup"
alias ls='ls -GFh'
alias r='rm -rf'
alias p='pwd'
alias l='ls -a'
alias wc='wc -l'
alias wack='mv ~/files/.nonya ~/files/nonya'
alias boom='mv ~/files/nonya ~/files/.nonya'
alias hike='cat output.txt | pbcopy'
alias dups='awk '!seen[$0]++' output.txt'
alias k='head -1 cutpaste.txt | pbcopy
echo "$(tail -n +2 cutpaste.txt)" > cutpaste.txt'
