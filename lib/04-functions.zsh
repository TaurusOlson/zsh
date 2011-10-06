# Returns whether the given command is executable or aliased.
function _has() {
  return $( whence $1 >/dev/null )
}

# Functions for displaying git branch and status
function get_git_branch {
	git branch | awk '/^\*/ { print $2 }'
}

function get_git_dirty {
	git diff --quiet || echo '*'
}

function get_git_prompt {
	git branch &> /dev/null || return 1
	echo "[$(get_git_branch)$(get_git_dirty)] "
}

function namedir { $1=$PWD; echo ~$1 }

pcat () {
    pygmentize "$*"
}

pless () {
    pygmentize "$1" | less -R
}

pipl () {
    yolk -a | awk '{printf("%s (%s)\n", $1, $3) }' | grep -v pyobjc
}

# Manpages in different languages
mancx () {
    if [[ $# -eq 1 ]]
    then
        open http://www.man.cx/$1
    else
        open http://www.man.cx
    fi
}

# backup
bu () {
    cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup
}

kip() {
    url=http://www.its.caltech.edu/~kip/scripts/courses.html
    if [[ $1 -neq 1 ]]; then
        cd $KIP
        ls
    elif [[ $1 != -h ]]; then
        open $1
    elif [[ $1 == -h ]]; then
        echo "These courses were extracted from: $url"
    fi
}

br() {
    open -a Google\ Chrome.app "${1}"
}

# wordref () {
#    case $1 in
#    "--tofr" | "--enfr")
#        open http://www.wordreference.com/enfr/$2
#        ;;
#    "--toen" | "--fren")
#        open http://www.wordreference.com/fren/$2
#        ;;
#    * )
#        echo "wordref - Open a wordreference.com page for a given word"
#        echo
#        echo "Usage:"
#        echo "wordref OPTION WORD"
#        echo "Option:"
#        echo "--tofr, --enfr"
#        echo "--toen, --fren"
#        ;;
#    esac
# }

ldot() {
    local i
    if [[ $# > 0 ]]; then
        for arg in "$@"; do
            [[ $# > 1 ]] && printf "$arg:\n"
            ls -d "$arg".[^.]*
            (( i++ ))
            [[ $# > 1 && $i != $# ]] && echo
        done
    else
        ls -d .[^.]*
    fi
}

# The following functions were written by ~rtomayko
# Usage: pls [<var>]
# List path entries of PATH or environment variable <var>.
pls () { eval echo \$${1:-PATH} |tr : '\n'; }

# Usage: puniq [<path>]
# Remove duplicate entries from a PATH style value while retaining
# the original order. Use PATH if no <path> is given.
#
# Example:
#   $ puniq /usr/bin:/usr/local/bin:/usr/bin
#   /usr/bin:/usr/local/bin
puniq () {
    echo "$1" |tr : '\n' |nl |sort -u -k 2,2 |sort -n |
    cut -f 2- |tr '\n' : |sed -e 's/:$//' -e 's/^://'
}

pshift () {
    local n=1
    [ "$1" = "-n" ] && { n=$(( $2 + 1 )); shift 2; }
    eval "${1:-PATH}='$(pls |tail -n +$n |tr '\n' :)'"
}

# Usage: ppop [-n <num>] [<var>]
# Pop <num> entries off the end of PATH or environment variable <var>.
ppop () {
    local n=1 i=0
    [ "$1" = "-n" ] && { n=$2; shift 2; }
    while [ $i -lt $n ]
    do eval "${1:-PATH}='\${${1:-PATH}%:*}'"
       i=$(( i + 1 ))
    done
}

# Usage: prm <path> [<var>]
# Remove <path> from PATH or environment variable <var>.
prm () { eval "${2:-PATH}='$(pls $2 |grep -v "^$1\$" |tr '\n' :)'"; }

# Usage: punshift <path> [<var>]
# Shift <path> onto the beginning of PATH or environment variable <var>.
punshift () { eval "${2:-PATH}='$1:$(eval echo \$${2:-PATH})'"; }

# Usage: ppush <path> [<var>]
ppush () { eval "${2:-PATH}='$(eval echo \$${2:-PATH})':$1"; }

# make and go
mg () {
if [[ $# != 1 ]]; then
    echo "mg - mkdir and go"
    echo "mg DIR"
    exit 0
else
    mkdir $1 && cd $1
fi
}

