# Show hostname only when in SSH
function _hostseg() {
  if [[ -n "$SSH_TTY" || -n "$SSH_CONNECTION" ]]; then
    print -r -- "%m "
  else
    print -r -- ""
  fi
}

setopt prompt_subst # Evaluate the prompt every time it's displayed
PROMPT='$(git_prompt_info)'
PROMPT+='%(?:%{$fg_bold[green]%}•:%{$fg_bold[red]%}•) $(_hostseg)%{$fg[cyan]%}%c%{$fg_bold[white]%} > %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="  %{$fg_bold[blue]%}git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}
%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}…"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
