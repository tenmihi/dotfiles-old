#!/bin/zsh

dot_files=(".vimrc" ".tmux.conf" ".zshrc" ".my_alias")

for file in $dot_files;
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
