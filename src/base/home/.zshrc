export ZSH="$HOME/.oh-my-zsh"

HYPHEN_INSENSITIVE="true"
ZOXIDE_CMD_OVERRIDE="cd"

zstyle ':omz:update' mode auto

plugins=(
	git
	starship
	sudo
	zoxide
	zsh-autosuggestions
	zsh-syntax-highlighting
)

test -f $ZSH/oh-my-zsh.sh && source $ZSH/oh-my-zsh.sh

# eza for ls
if [ "$(command -v eza)" ]; then
    alias ls='eza'
	alias l='eza -l --icons=auto --group-directories-first'
    alias ll='eza -la --icons=auto --group-directories-first'
fi

# ugrep for grep
if [ "$(command -v ug)" ]; then
    alias grep='ug'
fi

# bat for cat
if [ "(command -v batcat)" ]; then
	alias bat='batcat'
	alias cat='batcat --style=plain --pager=never'
fi

# enable atuin
[ "$(command -v atuin)" ] && eval "$(atuin init zsh)"
