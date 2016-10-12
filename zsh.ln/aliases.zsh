# Projects
alias cdi=/Users/andrew/src/collective-idea
alias cdr=/Users/andrew/src/collective-idea/runway
alias cdp=/Users/andrew/src/personal
alias cdc=/Users/andrew/src/carrie
alias cdv=/Users/andrew/src/consulting/voeden-ios
alias dotfiles=/Users/andrew/src/personal/dotfiles

# Local tmux
alias t='tmux'
alias tn='t new-session -s'
alias ta='t attach -t'
alias tap='ta pair'
alias tls='t list-sessions'
alias td='t kill-session -t'

# FZF
alias f='fzf'

# Ruby/Rails
alias rs='rails server'
alias rc='rails console'
alias rr='rake routes | fzf'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'

# Elixir/Phoenix
alias mt='mix test'
alias mps='mix phoenix.server'

# Service management
alias starts='startservice'
alias stops='stopservice'

# Neovim
alias vim='nvim'

# Ag Tag
if (( $+commands[tag] )); then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
  alias ag=tag
fi

# Color Themes
alias light='base16_harmonic16-light'
alias dark='base16_harmonic16-dark'

