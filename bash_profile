export PS1="\[\033[38;5;79m\]\@ \W/\$(parse_git_branch) $ \[\033[0m\]"
export LSCOLORS=gxfxcxdxbxegedabagacad

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

source ~/.profile
alias ..='cd ..'
alias atom='open -a atom'
alias bi='brew install'
alias ga='git add'
alias gbo='git branch --sort=-committerdate'
alias gi='gem install'
alias gp='git pull'
alias gr='git rebase'
alias gs='git status'
alias ls='ls -G'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

