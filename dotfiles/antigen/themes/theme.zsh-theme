local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=") %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✔%{$reset_color%}"

PROMPT='%{$fg[green]%}%~%{$reset_color%} %{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%} $(git_prompt_info)%{$reset_color%}%B$%b '

RPS1="${return_code}"
