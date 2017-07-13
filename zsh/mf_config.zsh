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
if builtin command -v anyenv > /dev/null ; then
  eval "$(anyenv init -)"
fi

# fix git log multi byte character issue
export LESSCHARSET=utf-8

# Denco
alias denco-plack-log='tail -F $MF_DEV_HOME/var/log/plack/denco.error.log'
alias denco-diff-test='./script/dev_env.sh carton exec prove t/db/fixture/different_tables.t'
alias denco-story-test='./script/dev_env.sh carton exec prove t/db/fixture/story_body.t'
