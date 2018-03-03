#!/bin/zsh

dot_files=("vimrc" "tmux.conf" "zshrc")

# create symbolic link
for file in $dot_files;
do
    ln -s $HOME/dotfiles/$file $HOME/.$file
done
