autoload -U colors && colors
# PS1="%{$fg[red]%}%n%{$fg[cyan]%}@%{$fg[yellow]%}%m%{$fg[yellow]%}%~ %>>%{$reset_color%}"
PS1="%{$fg_bold[green]%}[%~]"
# PS1=${PS1}"$(get_git_prompt)"
PS1=${PS1}"%{$fg_bold[black]%} >%{$fg_bold[red]%}> %{$reset_color%}"


