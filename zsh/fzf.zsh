# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/crees/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/crees/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/crees/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/crees/.fzf/shell/key-bindings.zsh"
