# List
alias ls='ls -alhG'

# Tmux
alias tmux='tmux -2'

# Bundler
alias bi='bundle install'

# Rails
alias r='rails'

# Console
sc () {
  if [ -f ./script/rails ]; then 
    rails c $@
  else
    ./script/console $@
  fi
}

# Generators
sg () {
  if [ -f ./script/rails ]; then
    rails g $@
  else
    ./script/generate $@
  fi
}

# Server
ss () {
  if [ -f ./script/rails ]; then 
    rails s $@
  else
    ./script/server $@
  fi
}

# Server Port
sspe () {
  if [ -f ./script/rails ]; then 
    sudo rails s -p80 $@
  else
    sudo ./script/server -p80 $@
  fi
}

# Migrations
alias rdbm='rake db:migrate && rake db:test:prepare'

# Git
alias gb='git branch'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
