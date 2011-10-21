# ~/.bashrc: executed by bash(1) for non-login shells.
# Will be executed by login shells by virtue of it being sourced by ~/.bash_profile

# set PATH
[[ -d "$HOME/.rbenv/shims"    ]] && PATH="$HOME/.rbenv/shims:$PATH"
[[ -d "$HOME/.rbenv/bin"      ]] && PATH="$HOME/.rbenv/bin:$PATH"
[[ -d "$HOME/dev/rcommon/bin" ]] && PATH="$HOME/dev/rcommon/bin:$PATH"
[[ -d "$HOME/dev/bin"         ]] && PATH="$HOME/dev/bin:$PATH"
[[ -d "$HOME/bin"             ]] && PATH="$HOME/bin:$PATH"

# define aliases
[[ -r ~/.bash_aliases ]] && source ~/.bash_aliases

# enable completion features
[[ -f /etc/bash_completion ]] && ! shopt -oq posix && source /etc/bash_completion

# don't put duplicate lines in the history, nor commands with a leading space.
HISTCONTROL=ignoreboth

# custom prompt
PS1='\u@\h \W$(__git_ps1 " (%s)")\$ '

export EDITOR='vim'

# rbenv completions
[[ -r "$HOME/.rbenv/completions/rbenv.bash" ]] && source "$HOME/.rbenv/completions/rbenv.bash"
