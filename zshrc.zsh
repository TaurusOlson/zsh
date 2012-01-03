#
#        TAURUS OLSON'S
#                __             
#    ____  _____/ /_  __________
#   /_  / / ___/ __ \/ ___/ ___/
#  _ / /_(__  ) / / / /  / /__  
# (_)___/____/_/ /_/_/   \___/  
#
                              

# My zsh config
export ZSH=$HOME/.zsh

# Usage: init_config CONFIG_FILE 
# Description: Source the configuration file
init_config() {
    local CONFIG_FILE=$1 

    if [[ -r $CONFIG_FILE ]]
    then
        source $CONFIG_FILE
    fi
}

# Usage: alias_config CONFIG_FILE 
# Description: Create an alias for editing the configuration file
alias_config() {
    local CONFIG_FILE=$1
    CONFIG_ALIAS=".$(echo $(basename $CONFIG_FILE) | awk -F"-" '{print $2}')"
    alias $CONFIG_ALIAS="vi $CONFIG_FILE"
}

# Load and run compinit
autoload -U compinit
compinit -i


# PROFILE ---------------------------------------------------------------- {{{1
[[ -r $HOME/.profile ]] && source $HOME/.profile


# LIB -------------------------------------------------------------------- {{{1
for config_file ($ZSH/lib/*.zsh) 
do
    init_config $config_file
    alias_config $config_file
done


# COMPLETION ------------------------------------------------------------- {{{1
autoload -U $ZSH/functions/*(:t)


# FUNCTIONS -------------------------------------------------------------- {{{1
fpath=($ZSH/functions $fpath)


# ALIASES ---------------------------------------------------------------- {{{1
alias sz="source $HOME/.zshrc"
alias .zshrc="vi $HOME/.zshrc"
alias sb="source $HOME/.bashrc"
alias .bashrc="vi $HOME/.bashrc"


# PLUGINS ---------------------------------------------------------------- {{{1
plugin=${plugin:=()}
plugins=( brew github processing git-completion git-flow-completion django )
for plugin ($plugins) source $ZSH/plugins/$plugin/$plugin.plugin.zsh


# RVM -------------------------------------------------------------------- {{{1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# F ---------------------------------------------------------------------- {{{1
[[ -s "$HOME/Github/f/f.sh" ]] && source "$HOME/Github/f/f.sh"
