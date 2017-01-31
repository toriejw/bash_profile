export PS1="\[\033[0;32m\]\@ \W/\$(parse_git_branch) $ \[\033[0m\]"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

source ~/.profile
alias ..='cd ..'
alias ga='git add'
alias gp='git pull'
alias gr='git rebase'
alias gi='gem install'
alias bi='brew install'
alias atom='open -a atom'
alias gs='git status'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

