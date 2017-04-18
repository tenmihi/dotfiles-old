#
# basic
#

# 補完候補を一覧で表示する
setopt auto_list

# 補完キー連打で候補順に自動で補完する
setopt auto_menu

# cd 時に自動でディレクトリスタックに追加する
setopt auto_pushd

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

# 履歴をすぐに追加する（通常はシェル終了時）
setopt inc_append_history

# # 以降をコメントとして扱う
setopt interactive_comments

# ビープを無効にする
setopt no_beep
setopt no_hist_beep
setopt no_list_beep

# = 以降も補完する（例：--option=value）
setopt magic_equal_subst

# バックグラウンド処理の状態変化をすぐに通知する
setopt notify

# 8bit文字を有効にする
setopt print_eight_bit

# 終了ステータスが0以外の場合にステータスを表示する
setopt print_exit_value

# VCS情報の表示を有効にする
setopt prompt_subst

# ディレクトリスタックと重複したディレクトリをスタックに追加しない
setopt pushd_ignore_dups

# rm * の前に確認をとる
setopt rm_star_wait

# Zsh間で履歴を共有する
setopt share_history

# コマンド実行後は右プロンプトを消す
setopt transient_rprompt

#
# basics(autoload)
#

# フック機能を有効にする
autoload -Uz add-zsh-hook

# コマンドのオプションや引数を補完する
autoload -Uz compinit && compinit -u

# URLをエスケープする
autoload -Uz url-quote-magic

# VCS情報の表示を有効にする
autoload -Uz vcs_info

#
# env
#

# ls 時の色を設定する
export CLICOLOR=true
export LSCOLORS='exfxcxdxbxGxDxabagacad'
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

# 標準エディタを設定する
export EDITOR=vim

# コマンド履歴を保存するファイルを指定する
export HISTFILE=~/.zhistory

# メモリに保存する履歴の件数を指定する
export HISTSIZE=1000

# ファイルに保存する履歴の件数を指定する
export SAVEHIST=1000000

# 文字コードを設定する
export LANG=ja_JP.UTF-8

#
# keybinds
#

# コマンドラインの編集モードをViにする
bindkey -v

# バックスペースキーで文字を削除する
bindkey -v '^?' backward-delete-char

# Shift-Tabで候補を逆順に補完する
bindkey '^[[Z' reverse-menu-complete

#
# others
#

# vi コマンドでVimを実行する
alias vi='vim'

# SSH EC2 AMON2
alias ec2amon2='ssh -i "/Users/muraokenichi/.ssh/amon2.pem" ec2-user@ec2-52-68-67-171.ap-northeast-1.compute.amazonaws.com'
alias rm="rmtrash"
alias carton-exec="carton exec -- plackup -Ilib -R ./lib --access-log /dev/null -p 5000 -a"

# plenv
export PLENV_ROOT=$HOME/.plenv
export PATH=$PLENV_ROOT/bin:$PATH
eval "$(plenv init -)"
