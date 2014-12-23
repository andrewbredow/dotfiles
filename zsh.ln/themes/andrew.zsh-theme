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
