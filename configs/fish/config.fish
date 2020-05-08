. ~/.config/fish/aliases.fish

base16 harmonic-dark

set -x EDITOR nvim

# LS colors, made with http://geoff.greer.fm/lscolors/
set -x LSCOLORS 'exfxcxdxbxagadabagaxad'
set -x LS_COLORS 'di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=30;46:cd=0;43:su=30;41:sg=0;46:tw=30;40:ow=30;43:'
set -x CLICOLOR 1

# Initialize asdf
source (brew --prefix asdf)/asdf.fish
