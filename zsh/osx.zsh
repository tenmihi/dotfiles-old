#!/bin/zsh

# brew link openssl
export OPENSSL_INCLUDE="/usr/local/opt/openssl/include"
export OPENSSL_LIB="/usr/local/opt/openssl/lib"

# Android Sdk
export ANDROID_HOME="/Users/murao/Library/Android/sdk"
export ANDROID_SDK_TOOLS="/Users/murao/Library/Android/sdk/tools"
export PATH=$PATH:$ANDROID_HOME:$ANDROID_SDK_TOOLS

# /usr/local/bin を優先(gitコマンド等)
export PATH=/usr/local/git/bin:$PATH

# node
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
