#!/bin/zsh

dot_files=("vimrc" "tmux.conf" "zshrc")

for file in $dot_files;
do
    ln -s $HOME/dotfiles/$file $HOME/.$file
done
