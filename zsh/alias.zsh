# safe rm
if builtin command -v rmtrash > /dev/null ; then
  alias rm='rmtrash'
fi

# copy to clipboard
case ${OSTYPE} in
    linux*)
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
    ;;
esac

# file search & move
alias fc='cd "$(find . -type d | peco)"'
