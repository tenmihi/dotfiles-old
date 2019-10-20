#!/bin/zsh

# vars for install openssl
export OPENSSL_INCLUDE="/usr/local/opt/openssl/include"
export OPENSSL_LIB="/usr/local/opt/openssl/lib"

# path to android sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin

# give priority to /usr/local/bin (e.g. `git`)
export PATH=/usr/local/git/bin:$PATH

# path to global node_moules
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
#export PATH=$PATH:`npm bin -g`

# path to mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"


# use git completion
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash


# use `rmtrash` instead of `rm`
if builtin command -v rmtrash > /dev/null ; then
  alias rm='rmtrash'
fi


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh