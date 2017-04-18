#!/bin/bash

# http://qiita.com/massy22/items/5bdb97f8d6e93517f916

DOT_FILES=(.bashrc .bash_profile …)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
