puniq () {
    echo "$1" |tr : '\n' |nl |sort -u -k 2,2 |sort -n |
    cut -f 2- |tr '\n' : |sed -e 's/:$//' -e 's/^://'
}

export EDITOR=/usr/local/bin/vim

# MANPAGES IN COLOR ------------------------------------------------------ {{{1
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# LSCOLORS --------------------------------------------------------------- {{{1
export CLICOLOR=1
export LSCOLORS='CxFxcxdxbxegedabagCcEd'
export LSCOLORS

# HISTORY ---------------------------------------------------------------- {{{1 
export HISTSIZE=1000
setopt inc_append_history
setopt share_history

# PATH ------------------------------------------------------------------- {{{1 
PATH=$(puniq $PATH)
export PATH

# PYTHON ----------------------------------------------------------------- {{{1
export PYTHONSTARTUP="$HOME/.pythonrc"

# vim:fdm=marker:tw=79:
