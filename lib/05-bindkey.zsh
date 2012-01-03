bindkey -v
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^F" forward-word
bindkey "^B" backward-word
bindkey "^K" kill-line
bindkey "^N" complete-word
bindkey "^X" delete-char
bindkey "^R" history-search-forward
bindkey "^T" history-search-backward
bindkey '^X^A' f-complete    # C-x C-a to do f-complete (fils and directories)
bindkey '^X^F' f-complete-f  # C-x C-f to do f-cmplete-f (only files)
bindkey '^X^D' f-complete-d  # C-x C-d to do f-complete-d (only directories))))
