#! /bin/zsh

# shortcut to this dotfiles
ZSH=$HOME/dotfiles

# 存在したら読み込む
load_if_exists() {
  if [ -f $1 ]; then
    source $1
  fi
}

# completion
source $ZSH/zsh/completion.zsh

# alias
source $ZSH/zsh/alias.zsh

# env 
source $ZSH/zsh/env.zsh

if [[ ${OSTYPE} =~ "darwin" ]]; then
  source $ZSH/zsh/osx.zsh
  echo "[info] osx.zsh loaded"
fi

# private 
load_if_exists $ZSH/zsh/private.zsh

# コマンド履歴に実行時間も記録する
setopt extended_history

# 履歴中の重複行をすべて削除する
setopt hist_ignore_all_dups

# 直前と重複するコマンドを記録しない
setopt hist_ignore_dups

# コマンド中の余分なスペースは削除して履歴に記録する
setopt hist_reduce_blanks

# 履歴と重複するコマンドを記録しない
setopt hist_save_no_dups

# ^D でシェルを終了しない
setopt ignore_eof

# disable beep
setopt no_beep
setopt no_hist_beep
setopt no_list_beep

# バックグラウンド処理の状態変化をすぐに通知する
setopt notify

# ディレクトリスタックと重複したディレクトリをスタックに追加しない
setopt pushd_ignore_dups

# rm * の前に確認をとる
setopt rm_star_wait

# share history each zsh process
setopt share_history

# コマンド実行後は右プロンプトを消す
setopt transient_rprompt

# env

# set default editor to vim
export EDITOR=vim

# コマンド履歴を保存するファイルを指定する
export HISTFILE=~/.zhistory

# set character set
export LANG=ja_JP.UTF-8

# keybinds

# コマンドラインの編集モードをViにする
bindkey -v

# バックスペースキーで文字を削除する
bindkey -v '^?' backward-delete-char

# Shift-Tabで候補を逆順に補完する
bindkey '^[[Z' reverse-menu-complete

#
# others
#

# ssh-agent
if [ -f ~/.ssh-agent ]; then
    . ~/.ssh-agent
fi
if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
    ssh-agent > ~/.ssh-agent
    . ~/.ssh-agent
fi
ssh-add -l >& /dev/null || ssh-add

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh