# git status
alias status='git status'

# git add
alias add='git add'

# git commit
alias commit='git commit'

# git branch
alias branch='git branch'

# git push
alias push='git push'

# safe rm
if builtin command -v rmtrash > /dev/null ; then
  alias rm='rmtrash'
fi
