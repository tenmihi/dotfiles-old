#! /bin/zsh

load_if_exists() {
  if [ -f $1 ]; then
    source $1
  fi
}

# completion
source ~/.zsh/completion.zsh

# alias
source ~/.zsh/alias.zsh

# env 
source ~/.zsh/env.zsh

if [[ ${OSTYPE} =~ "darwin" ]]; then
  source ~/.zsh/osx.zsh
fi

# private 
load_if_exists ./zsh/private.zsh

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

export EDITOR=vim

export HISTFILE=~/.zhistory
export LANG=ja_JP.UTF-8

bindkey -v # コマンドラインの編集モードをViにする
bindkey -v '^?' backward-delete-char # バックスペースキーで文字を削除する

# iterm profile change
# if [[ ${OSTYPE} =~ "darwin" ]]; then
#  alias ssh='~/dotfiles/iterm-change-profile.sh'
#fi

# ssh-agent
if [ -f ~/.ssh-agent ]; then
    . ~/.ssh-agent
fi
if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID; then
    ssh-agent > ~/.ssh-agent
    . ~/.ssh-agent
fi
ssh-add -l >& /dev/null || ssh-add

