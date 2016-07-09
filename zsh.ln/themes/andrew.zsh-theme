local ret_status=" %(?:%{$fg_bold[green]%}➜ : %{$fg_bold[red]%}➜ %s)"
if [[ -z "$ZSH_SHELL_DECOR" ]]; then
  ZSH_SHELL_DECOR=""
fi
PROMPT='$ZSH_SHELL_DECOR%{$fg_bold[green]%}%p%{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
${ret_status}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxegedabaggcad"
export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=37;42:ow=0;43:'
