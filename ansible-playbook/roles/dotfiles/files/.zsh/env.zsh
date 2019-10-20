#! /bin/zsh

# init anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
if builtin command -v anyenv > /dev/null; then
  eval "$(anyenv init -)"
  echo "[info] anyenv loaded."
fi

# init plenv
export PATH="$HOME/.plenv/bin:$PATH"
if builtin command -v plenv > /dev/null; then
  eval "$(plenv init -)"
  echo "[info] plenv loaded."
fi

# init nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
if builtin command -v ndenv > /dev/null; then
  eval "$(nodenv init -)"
  echo "[info] nodenv loaded."
fi