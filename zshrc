# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/deepkanwalplaha/.oh-my-zsh"

# Select the theme to use. 
ZSH_THEME="agnoster"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Show current folder as promt directory.
prompt_dir() {
  prompt_segment blue black '%c'
}

# Do not show user name.
prompt_context() {
}

# Use custom folder for global node modules to avoid
# permission issues.
export PATH=~/.npm-global/bin:$PATH

# Use vim as default editor.
export EDITOR=vim
