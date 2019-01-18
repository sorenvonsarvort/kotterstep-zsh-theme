# user, host, full path, and time/date on two lines for easier vgrepping

ZSH_THEME_GIT_PROMPT_ADDED=""
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[reset_color]%}*"
ZSH_THEME_GIT_PROMPT_DELETED=""
ZSH_THEME_GIT_PROMPT_RENAMED=""
ZSH_THEME_GIT_PROMPT_UNMERGED=""
ZSH_THEME_GIT_PROMPT_UNTRACKED=""
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

function mygit() {
  if [[ "$(git config --get oh-my-zsh.hide-status)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
    echo " ${ref#refs/heads/}$(git_prompt_status)%{$fg_bold[blue]%}"
  fi
}

function retcode() {}

# alternate prompt with git & hg
PROMPT=$'%{$fg_bold[blue]%}┌─[%{$fg_bold[green]%}%n%b%{$fg[reset_color]%}@%{$fg[cyan]%}%m%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%{$fg_bold[white]%}%~%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%b%{$fg[yellow]%}'%D{"%Y-%m-%d %I:%M:%S"}%b$'%{$fg_bold[blue]%}]%{$fg_bold[blue]%}
└─[%{$fg_bold[magenta]%}%?$(retcode)%{$fg_bold[blue]%}]$(mygit)%{$reset_color%} '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
