# completion
autoload -U compinit promptinit
compinit
promptinit

# safe rm
if [ -d ${HOME}/.Trash ]
then
    alias rm='mv --backup=numbered --target-directory=${HOME}/.Trash'
fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
if [ -f 'anyenv' ]; then
  eval "$(anyenv init -)"
fi

# fix git log multi byte character issue
export LESSCHARSET=utf-8
