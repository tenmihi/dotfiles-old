#!/bin/zsh

echo "[info] rbenv install begin."

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

~/.rbenv/bin/rbenv init

echo "[info] rbenv install success."
echo "[info] please restart your shell."
