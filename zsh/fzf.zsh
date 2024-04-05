# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/crees/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/christopher.rees/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/christopher.rees/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/christopher.rees/.fzf/shell/key-bindings.zsh"
