# ZSH COMPLETION
zmodload -i zsh/complist

compctl -a alias

zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] ) )
}
compctl -K _pip_completion pip
# pip zsh completion end

# TOLSON
tolson_options=(up bundles vimbundles)
compctl -k tolson_options tolson

# PID COMPLETION
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# VERBOSE
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

### highlight the original input.
zstyle ':completion:*:original' list-colors "=*=$color[red];$color[bold]"

### colorize hostname completion
zstyle ':completion:*:*:*:*:hosts' list-colors "=*=$color[cyan];$color[bg-black]"

## add colors to processes for kill completion
zstyle ':completion:*:*:kill:*' verbose yes
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#) #([^ ]#)*=$color[cyan]=$color[yellow]=$color[green]"

## Manpages, ho!
zstyle ':completion:*:manuals'       separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections   true

# Make the nice with git completion and others
zstyle ':completion::*:(git|less|rm|emacs)' ignore-line true
