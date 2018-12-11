export LANG='ja_JP.UTF-8'
  
function parse_git_branch {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
RED='\[\e[31m\]'
GREEN='\[\e[32m\]'
BLUE='\[\e[34m\]'
CYAN='\[\e[36m\]'
MAGENTA='\[\e[35m\]'
YELLOW='\[\e[33m\]'
WHITE='\[\e[00m\]'
END_COLOR='\[\e[m\]'

export PS1="${GREEN}[\u@\h \t] ${YELLOW}\w ${CYAN}"'$(parse_git_branch)'"\n${END_COLOR}\$ "

alias ls='ls -G'
alias ll='ls -laFG'
alias grep='grep --color=auto'
alias gitstatus='git status --short --branch'
