autoload -U colors && colors

PS1="%{$fg[blue]%}%n"               # %n: username
PS1="${PS1}%{$fg[cyan]%}@"        #     @
PS1="${PS1}%{$fg[cyan]%}%M "       # %M: hostname
PS1=${PS1}"%{$fg_bold[red]%}in %~ "      # %~: pwd
PS1=${PS1}"                            
"                                        #     new line!
# Prompt symbols
PS1=${PS1}"%{$fg_bold[green]%}>"
PS1=${PS1}"%{$fg_bold[red]%}> " 
PS1=${PS1}"%{$reset_color%}"          


