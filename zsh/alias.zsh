#
# aliases
#

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

# Denco
alias denco-plack-log='tail -F $MF_DEV_HOME/var/log/plack/denco.error.log'
alias denco-diff-test='./script/dev_env.sh carton exec prove t/db/fixture/different_tables.t'
alias denco-story-test='./script/dev_env.sh carton exec prove t/db/fixture/story_body.t'
