function get_pwd() {
  print -D $PWD
}

function precmd() {
print -rP '
$fg[green]%m: $fg[yellow]$(get_pwd) $(git_prompt_info)'
}

PROMPT='%{$reset_color%}→ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%})"
