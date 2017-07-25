# completion
autoload -U compinit promptinit
compinit
promptinit

# safe rm
if [ -d $HOME/.Trash ]; then
  alias rm='mv --backup=numbered --target-directory=${HOME}/.Trash'
fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
if builtin command -v anyenv > /dev/null ; then
  eval "$(anyenv init -)"
fi

# fix git log multi byte character issue
export LESSCHARSET=utf-8

# alias
alias denco-plack-log='tail -F $MF_DEV_HOME/var/log/plack/denco.error.log'
alias denco-diff-test='./script/dev_env.sh carton exec prove t/db/fixture/different_tables.t'
alias denco-story-test='./script/dev_env.sh carton exec prove t/db/fixture/story_body.t'
alias denco-prove='./script/dev_env.sh carton exec prove'
alias denco-restart="$HOME/project/Denco/script/restart-server"

# rmate
if [ -f $HOME/local/bin/rmate ]; then
  export PATH="$HOME/local/bin:$PATH"
fi
