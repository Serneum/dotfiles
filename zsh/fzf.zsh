# Setup fzf
# ---------
if [[ ! "$PATH" == */home/serneum/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/serneum/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/serneum/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/serneum/.fzf/shell/key-bindings.zsh"
