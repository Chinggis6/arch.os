# INSTALL community/pygmentize FIRST

export ZPLUG_HOME=/usr/local/share/zplug.d
source /usr/share/zsh/scripts/zplug/init.zsh

zplug zsh-users/zsh-autosuggestions, defer:3, hook-load:export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4' # blue
zplug zsh-users/zsh-syntax-highlighting, defer:3

# source plugins and add commands to $PATH
zplug load #--verbose
