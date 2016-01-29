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

echo "SUP DAWG"
alias ls='ls -GFh'
alias sbash='source ~/.bash_profile'
alias r='rm -rf'
alias p='pwd'
alias trash='r ~/.Trash/*'
alias l='ls -a'
alias tuck='cat ~/Desktop/*.txt >> urllist.txt
rm ~/Desktop/*.txt'
alias wc='wc -l'
alias work='open ~/Desktop/.working.txt'
alias hike='cat output.txt | pbcopy'
alias dups='awk '!seen[$0]++' output.txt'
alias k='head -1 cutpaste.txt | pbcopy
echo "$(tail -n +2 cutpaste.txt)" > cutpaste.txt'
alias gdiff='git difftool'
alias deskcss='cp ~/parts_online_git/wp-content/themes/x-child-integrity-light/style.css ~/Desktop/style.css'
alias gftp='git ftp push'
alias gtool='git difftool'
alias gbit='git push bit'
alias gitme='sh ~/files/scripts/bash/gitme.sh'
alias backbash='cat ~/.bash_profile > ~/files/bash_profile/bash_profile'
alias commit='sh ~/files/scripts/bash/commit.sh'
alias wpupdate='sh ~/files/scripts/bash/wpUpdate.sh'
alias gfig='vi .git/config'
alias blast='sh ~/files/scripts/bash/emailscript.sh'
PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`
export PATH=/Applications/MAMP/bin/php/${PHP_VERSION}/bin:$PATH
# Export MAMP MySQL executables as functions
# Makes them usable from within shell scripts (unlike an alias)
mysql() {
    /Applications/MAMP/Library/bin/mysql "$@"
}
mysqladmin() {
    /Applications/MAMP/Library/bin/mysqladmin "$@"
}
export -f mysql
export -f mysqladmin

source /Users/jeffreyambrose/files/scripts/bash/wp-completion.bash
