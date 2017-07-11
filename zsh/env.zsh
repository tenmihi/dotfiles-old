#! /bin/zsh

# plenv
export PLENV_ROOT=$HOME/.plenv
export PATH=$PLENV_ROOT/bin:$PATH
if builtin command -v plenv > /dev/null; then
  eval "$(plenv init -)"
  echo "[info] plenv loaded."
fi

# ndenv
export PATH="$HOME/.ndenv/bin:$PATH"
if builtin command -v ndenv > /dev/null; then
  eval "$(ndenv init -)"
  echo "[info] ndenv loaded."
fi

# rbenv
if builtin command -v rbenv > /dev/null; then
  eval "$(rbenv init -)"
  echo "[info] rbenv loaded."
fi

