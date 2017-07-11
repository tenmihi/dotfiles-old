#! /bin/zsh

# plenv
export PLENV_ROOT=$HOME/.plenv
export PATH=$PLENV_ROOT/bin:$PATH
if [ -f 'plenv' ]; then
  eval "$(plenv init -)"
fi

# ndenv
export PATH="$HOME/.ndenv/bin:$PATH"
if [ -f 'ndenv' ]; then
  eval "$(ndenv init -)"
fi

# rbenv
if [ -f 'rbenv' ]; then
  eval "$(rbenv init -)"
fi

