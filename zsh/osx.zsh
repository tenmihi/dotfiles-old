#!/bin/zsh

# brew link openssl
export OPENSSL_INCLUDE="/usr/local/opt/openssl/include"
export OPENSSL_LIB="/usr/local/opt/openssl/lib"

# Android Sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin

# /usr/local/bin を優先(gitコマンド等)
export PATH=/usr/local/git/bin:$PATH

# node
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules

# git completion
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
