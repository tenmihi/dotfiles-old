autoload -U compinit promptinit
compinit
promptinit

if [ -d ${HOME}/.Trash ]
then
    alias rm='mv --backup=numbered --target-directory=${HOME}/.Trash'
fi

export DBD_MYSQL_TESTUSER=root
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

export LESSCHARSET=utf-8
