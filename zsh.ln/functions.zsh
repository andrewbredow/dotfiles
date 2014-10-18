# Add the functions directory to zsh's function load path
fpath=( $HOME/.zsh/functions "${fpath[@]}" )
autoload -Uz startservice
autoload -Uz stopservice
autoload -Uz git_clean
