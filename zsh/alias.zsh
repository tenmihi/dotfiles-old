# git add
alias gaa='git add -A'

# git commit
alias gc='git commit'

# git branch
alias gb='git branch'

# safe rm
if builtin command -v rmtrash > /dev/null ; then
  alias rm='rmtrash'
fi

# carton exec
alias carton-exec='carton exec -- plackup -Ilib -R ./lib --access-log /dev/null -p5000 -a'
