#! /bin/zsh

# plenv
if [ -f 'plenv' ]; then
  export PLENV_ROOT=$HOME/.plenv
  export PATH=$PLENV_ROOT/bin:$PATH
  eval "$(plenv init -)"
fi

# ndenv
if [ -f 'ndenv' ]; then
  export PATH="$HOME/.ndenv/bin:$PATH"
  eval "$(ndenv init -)"
fi

# rbenv
if [ -f 'rbenv' ]; then
  eval "$(rbenv init -)"
fi

