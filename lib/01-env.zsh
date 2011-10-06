puniq () {
    echo "$1" |tr : '\n' |nl |sort -u -k 2,2 |sort -n |
    cut -f 2- |tr '\n' : |sed -e 's/:$//' -e 's/^://'
}

export EDITOR=/usr/local/bin/vim

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export CLICOLOR=1
export LSCOLORS='CxFxcxdxbxegedabagCcEd'
export LSCOLORS

# HISTORY
export HISTSIZE=1000
setopt inc_append_history
setopt share_history

# ALLEGRO
export ALLEGRO="-I/opt/local/include `/opt/local/bin/allegro-config --libs`"

# PATH ------------------------------------------------------------------- {{{1
PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/bin/Toolbox:/opt/local/bin:/opt/local/sbin:$PATH
PATH=$(puniq $PATH)
export MANPATH=$MANPATH:/usr/local/man/:$HOME/bin/man:


# CUSTOM ENVIRONMENT VARIABLES ------------------------------------------- {{{1
export DL=$HOME/Downloads
export DE=$HOME/Desktop
export DOC=$HOME/Documents
export HST=$HOME/scripts/trunk
export WORK=$HOME/Work
export DROP=$HOME/Dropbox
export TODO=$DOC/TODO
export DOUT=$DOC/Outlines
export COURS=$DOC/Cours
export KIP=$COURS/KipThorneCourses
export PROG=$HOME/Programming
export GITHUB=$HOME/Github
export P5=$DOC/Processing
export DRLISTS=$DROP/DrLists
export LATEX=$HOME/Latex
export MUSIC=$HOME/Music/iTunes/iTunes\ Music


# PYTHON ----------------------------------------------------------------- {{{2
export PYTHONSTARTUP="$HOME/.pythonrc"


# PROCESSING ------------------------------------------------------------- {{{2
export P5SKE=$P5/mysketches
export P5LIB=$P5/libraries
export P5EXA=$DOC/Processing_sketches
export P5TOXICDOC=$P5/libraries/toxiclibscore
export P5VERLETDOC=$P5/libraries/verletphysics
export P5GESTALTUNGDOC=$P5/libraries/generativedesign


# DROPBOX ---------------------------------------------------------------- {{{2
export DROPCHESS=$DROP/CHESS_DRT
export LISTS=$DROP/DrLists


# JEKYLL ----------------------------------------------------------------- {{{2
export JEKYLL=$DROP/DrJekyll
export JEKYLLPOSTS=$JEKYLL/_posts


# REPL ------------------------------------------------------------------- {{{2
export REPL_BIN=$HOME/bin/repl
export REPL_COMPLETION_DIR=$HOME/.repl


# CVS -------------------------------------------------------------------- {{{2
export CVSROOT=$HOME/cvs
export CVSEDITOR=vim
export DP_TOOLS=$HOME/Work/cvs_hifi/hifi_dp_tools/src/main/herschel/hifi/dp/tools/
export DP_TOOLS_6=$HOME/Work/cvs_hifi_6/hifi_dp_tools/src/main/herschel/hifi/dp/tools/


# PROGRAMMING ------------------------------------------------------------ {{{2
## MAIN
export PY=$PROG/python
export RB=$PROG/ruby
export PL=$PROG/perl

## SNIPPETS
export SNIP=$DROP/Snippets
export SNIPPY=$SNIP/Python
export SNIPRB=$SNIP/Ruby
export SNIPPL=$SNIP/Perl
export SNIPSH=$SNIP/Bash
## DOCUMENTATION
export DOCPY=$PROG/Documentation/Python
export DOCRB=$PROG/Documentation/Ruby
export DOCPL=$PROG/Documentation/Perl
export DOCSH=$PROG/Documentation/Bash


# DATE ------------------------------------------------------------------- {{{2
export TODAY="[$(date '+%d/%m/%y')]"


# VIRTUALENV ------------------------------------------------------------- {{{1
WORKON_HOME=$HOME/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/share/python/virtualenv
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source /usr/local/share/python/virtualenvwrapper.sh


# TQ --------------------------------------------------------------------- {{{1
export TASKFILE=$DROP/tq.txt

# vim:fdm=marker:tw=79:
