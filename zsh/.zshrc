autoload -U colors && colors
setopt autocd
stty stop undef
setopt interactive_comments

HISTSIZE=100000
SAVEHIST=100000
HISTFILE="${XDG_CONFIG_HOME:-$HOME/.cache}/zsh/history"

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

eval "$(starship init zsh)"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
source /usr/share/fzf/shell/key-bindings.zsh 2> /dev/null

pokemon-colorscripts -r --no-title
cat "$HOME/vimwiki/TODO.wiki" | lolcat -r
# echo "\033[34m$(cat $HOME/vimwiki/TODO.wiki)\033[0;39m"
