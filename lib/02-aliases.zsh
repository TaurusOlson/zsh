# ZSH {{{1
alias .oh-my-zsh="cd $HOME/.oh-my-zsh/ && ls"


# LIST ------------------------------------------------------------------- {{{1
alias ls='ls -FG'
alias la='ls -a'
alias ll='ls -lhrt'


# GREP ------------------------------------------------------------------- {{{1
alias grep='grep --color'


# NAVIGATION ------------------------------------------------------------- {{{1
alias zr='z -r'
alias zt='z -t'
alias 1='spushd -'
alias 2='spushd +2'
alias 3='spushd +3'
alias 4='spushd +4'
alias 5='spushd +5'
alias 6='spushd +6'
alias 7='spushd +7'
alias 8='spushd +8'
alias 9='Spushd +9'


# VIM -------------------------------------------------------------------- {{{1
alias vi="/usr/local/bin/vim"
alias vim="/usr/local/bin/vim"
alias .vimrc='vim ~/.vimrc'
alias dvim='cd ~/.vim'
alias dvip='cd ~/.vim/plugin'
alias dvib='cd ~/.vim/bundle'


# EMACS ------------------------------------------------------------------ {{{1
alias .emacs="vi $HOME/.emacs"


# GENERAL SHORTCUTS ------------------------------------------------------ {{{1
alias dwo="cd $WORK"
alias ddl="cd $DL  && ll -rt"
alias dde="cd $DE"
alias dmu='cd ~/Music/iTunes/iTunes\ Music'
alias dno="cd ~/Dropbox/Notes/  && ll -rt"
alias ddoc="cd $DOC  && ll -rt"
alias dlst="cd $HOME/.hcss/lstore"
alias dout="cd $DOC/Outlines"
alias dprog="cd $PROG"
alias dhg="cd $PROG/Mercurial/"
alias dwiki='cd $HOME/vimwiki'
alias mwiki="cd $DROP/my-wiki-markdoc"
alias dsv="cd $HOME/Documents/Outlines/Souvenirs"
alias dbin="cd $HOME/bin"
alias dgit="cd $GITHUB"


# SNIPPETS --------------------------------------------------------------- {{{1
alias snip="cd $SNIP"
alias snippy="cd $SNIPPY"
alias sniprb="cd $SNIPRB"
alias snippl="cd $SNIPPL"


# GIT -------------------------------------------------------------------- {{{1
alias g=hub
alias gsub='git submodule'
alias h=hub
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gca='git commit -a -m'
alias gci='git commit -m'
alias gad='git add'
alias gst='git status'
alias gnp='git-notpushed'
alias glog="git log --stat --reverse"
alias gdiff="git diff"
alias gop="git-open-page.sh"


# SOUVENIRS -------------------------------------------------------------- {{{1
alias terms="vim $DOC/Outlines/Souvenirs/misc/terms.yml"
alias blog="vi $DRLISTS/blog.yml"
alias drop="cd $DROP"


# MISC ------------------------------------------------------------------- {{{1
alias which="which -a"
alias tree='tree -CdD -L 1 '
alias bye='su -c halt'
alias cl='clear'
alias sps='ps -eo "%p %U %x %c %t'
alias s='source'
alias cl='clear'
alias ..='cd ..'
alias ..l='..; ls'
alias .screenrc='vim ~/.screenrc'
alias haiku='fortune.pl haiku'
alias geek='fortune.pl geek'
alias wiki='cat $HOME/vimwiki/index.wiki'
alias unittest='python -m unittest'
alias zen="python -c 'import this'"
alias usb='cd /Volumes/BLUE_KEY'

#Un peu de sécurité ne fait pas de m
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# Force
alias rf='rm -f'

# Time
alias now='date +"%d-%m-%Y %H:%M:%S"'

# Fetchmail for Gnus
alias fetch="fetchmail -d60 --fetchmailrc ~/.fetchmailrc --norewrite"

# Convertion
alias unix2mac="tr -d '\r' < $1 > $2"

# pushd
alias pu='pushd'
alias l='dirs -v'

# Lynx
alias lynx='lynx -lss=~/lynx.lss'

# DVTM
alias dvtm-custom='~/bin/dvtm-custom'

# Games
alias dunnet='emacs -batch -l dunnet'
alias zork1="frotz ~/Texts/Zork1/DATA/ZORK1.DAT"

#
alias ctags='/opt/local/bin/ctags'

# A new hope 
alias sw4="telnet towel.blinkenlights.nl"

# Fast cat
alias c="cat"

# fv
alias fv="open -a fv"


# TODO.TXT --------------------------------------------------------------- {{{1
# alias t='~/bin/todo.sh'
# alias tl='~/bin/todo.sh ls'
# alias tlp='todo_sort_projects'
# alias th='~/bin/todo.sh -h'
# # alias p="python ~/bin/punch.py"
# alias vt="vi $HOME/Documents/TODO/todo.txt"


# DAWN AND PROGRESS ------------------------------------------------------ {{{1
alias dtag='dawn | grep'
alias ptag='progress -a | grep'
alias d="$GITHUB/done/done.rb"


# JEKYLL ----------------------------------------------------------------------
alias dj="cd $JEKYLL"
alias djl="ll -rt $JEKYLLPOSTS"


# POST ------------------------------------------------------------------- {{{1
alias epost="vi $DOC/Blog/posts.mkd"
alias rpost="open $DOC/Blog/posts.html"


# RANGER ----------------------------------------------------------------------
alias ranger="python $GITHUB/ranger/ranger.py"


# BOOM ------------------------------------------------------------------------
alias b="boom"


# T ---------------------------------------------------------------------------
alias t="python $GITHUB/t/t.py --task-dir $DROP/tasks --list tasks.txt"
alias twork="python $GITHUB/t/t.py --task-dir $DROP/tasks --list work.txt"
alias tnotes="python $GITHUB/t/t.py --task-dir $DROP/tasks --list notes.txt"


# PROCESSING ------------------------------------------------------------- {{{1
alias dproc="cd $DOC/Processing"
alias toxicdoc="open $P5/libraries/toxiclibscore/docs/index.html"
alias verletdoc="open $P5/libraries/verletphysics/docs/index.html"
alias gestaltungdoc="open $P5/libraries/generativedesign/reference/index.html"


# MONGODB ---------------------------------------------------------------- {{{1
alias mongod="mongod -f /usr/local/Cellar/mongodb/1.8.1-x86_64/mongod.conf"


# XDEFAULTS
alias .Xdefaults="vim $HOME/.Xdefaults"


# DWM -------------------------------------------------------------------- {{{1
alias .dwm="vim $PROG/dwm/config.h"


# WMFS ------------------------------------------------------------------- {{{1
alias .wmfs="vim $HOME/.config/wmfs/wmfsrc"


# SCROTWM ---------------------------------------------------------------- {{{1
alias .scrotwm="vim $HOME/.scrotwm.conf"


# LATEX ------------------------------------------------------------------ {{{1
alias dLa="cd $LATEX"

# MPD -------------------------------------------------------------------- {{{1
alias mpd="mpd --no-daemon"
alias music="ncmpcpp"

# JEKYLL ----------------------------------------------------------------- {{{1
alias jekyll_blog="open http://127.0.0.1:4000/"


# vim: set fdm=marker:
