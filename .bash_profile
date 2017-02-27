# git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# git bash-completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi
