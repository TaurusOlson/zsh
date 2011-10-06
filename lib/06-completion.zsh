# ZSH COMPLETION

compctl -a alias

zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

# cdpath=( . $HOME/Work )

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

tolson_options=(up bundles vimbundles)
compctl -k tolson_options tolson
