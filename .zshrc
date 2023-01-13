# The following lines were added by compinstall
zstyle :compinstall filename '/home/user179/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

# Starship prompt
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/user179/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/user179/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/user179/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/user179/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

BIOMICS='vdemenev@biomics-2.devbg.us' 


if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.config/.local_paths ]; then
	. ~/.config/.local_paths
fi

# Ctrl+arrow will go word-by-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# certs for requests
export REQUESTS_CA_BUNDLE="/etc/ssl/certs/ca-certificates.crt"