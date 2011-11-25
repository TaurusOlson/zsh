#
#        TAURUS OLSON'S
#                __             
#    ____  _____/ /_  __________
#   /_  / / ___/ __ \/ ___/ ___/
#  _ / /_(__  ) / / / /  / /__  
# (_)___/____/_/ /_/_/   \___/  
#
                              

# my-zsh config
export ZSH=$HOME/.zsh
# export ZSH=$HOME/.oh-my-zsh

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


# LIB -------------------------------------------------------------------------
for config_file ($ZSH/lib/*.zsh) 
do
    init_config $config_file
    alias_config $config_file
done

# COMPLETION ------------------------------------------------------------------
autoload -U $ZSH/functions/*(:t)

# FUNCTIONS -------------------------------------------------------------------
fpath=($ZSH/functions $fpath)


# ALIASES ---------------------------------------------------------------------
alias sz="source $HOME/.zshrc"
alias .zshrc="vi $HOME/.zshrc"
alias sb="source $HOME/.bashrc"
alias .bashrc="vi $HOME/.bashrc"


# PROFILE ---------------------------------------------------------------------
[[ -r $HOME/.profile ]] && source $HOME/.profile


# PLUGINS ---------------------------------------------------------------------
plugin=${plugin:=()}
plugins=( brew github processing git-completion git-flow-completion )
for plugin ($plugins) source $ZSH/plugins/$plugin/$plugin.plugin.zsh


# RVM -------------------------------------------------------------------- {{{1
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# ~/bin/info.sh
