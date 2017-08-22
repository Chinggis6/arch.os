mode=vicmd

function vfzf
{
fzf --bind 'enter:execute(vim {})' --preview='pygmentize -g {}'
# fzf --reverse --bind 'enter:execute(vim {})' --preview='highlight --force {}'
}
zle -N vfzf # register function as widget
bindkey -v '^z' vfzf # bind key to widget

# http://www.zsh.org/mla/users/1997/msg00403.html
function increment-number
{
local n=${(M)LBUFFER%%[0-9]#}${(M)RBUFFER##[0-9]#}
LBUFFER=${LBUFFER%%[0-9]#}$((n+1))
RBUFFER=${RBUFFER##[0-9]#}
}
function decrement-number
{
local n=${(M)LBUFFER%%[0-9]#}${(M)RBUFFER##[0-9]#}
LBUFFER=${LBUFFER%%[0-9]#}$((n-1))
RBUFFER=${RBUFFER##[0-9]#}
}
# by zefram
zle -N increment-number
bindkey -a '^a' increment-number
zle -N decrement-number
bindkey -a '^x' decrement-number
# only in command mode where these keys are unmapped

bindkey -M $mode $'\e\\' delete-horizontal-space

# delete whites peace around
bindkey -M $mode $'\e\\' delete-horizontal-space

# kill word forward
bindkey -M $mode $'\ed' kill-word

# yanking
bindkey -M $mode '^y' yank
bindkey -M $mode $'\ey' yank-pop

# char/word transposition
bindkey -M $mode '^t' transpose-chars
bindkey -M $mode $'\et' transpose-words

# casing
bindkey -M $mode $'\ec' capitalize-word
bindkey -M $mode $'\el' down-case-word
bindkey -M $mode $'\eu' up-case-word

# spelling
bindkey -M $mode $'\es' spell-word

# history expansion
bindkey -M $mode $'\e!' expand-history

#bindkey -M $mode '^p' history-substring-search-up
#bindkey -M $mode '^n' history-substring-search-down
#bindkey -M $mode $'\eu' upcase-word
#bindkey -M $mode $'\el' downcase-word
bindkey -M $mode 'gcc' vi-pound-insert

mode=viins

# yanking
bindkey -M $mode '^y' yank
bindkey -M $mode $'\ey' yank-pop

# kill word forward
bindkey -M $mode $'\ed' kill-word

# char/word transposition
bindkey -M $mode '^t' transpose-chars
bindkey -M $mode $'\et' transpose-words

# casing
bindkey -M $mode $'\ec' capitalize-word
bindkey -M $mode $'\el' down-case-word
bindkey -M $mode $'\eu' up-case-word

# spelling
bindkey -M $mode $'\es' spell-word

# history expansion
bindkey -M $mode $'\e!' expand-history

bindkey -M $mode '^f' forward-char # lags
bindkey -M $mode '^b' backward-char
# with i3 alt as prefix these are rendered impossible
bindkey -M $mode $'\ef' forward-word
bindkey -M $mode $'\eb' backward-word
bindkey -M $mode '^a' beginning-of-line
bindkey -M $mode '^e' end-of-line
bindkey -M $mode '^p' history-search-backward
bindkey -M $mode '^n' history-search-forward
#bindkey -M $mode '^p' history-substring-search-up
#bindkey -M $mode '^n' history-substring-search-down
bindkey -M $mode '^u' kill-whole-line
bindkey -M $mode '^k' kill-line
bindkey -M $mode '^h' backward-delete-char
bindkey -M $mode '^w' backward-kill-word # RL's unix-word-rubout is absent in ZLE

bindkey -M $mode '^r' history-incremental-pattern-search-backward

bindkey -M $mode '^?' self-insert # backspace
bindkey -M $mode '^[[A' self-insert # up
bindkey -M $mode '^[[B' self-insert # down
bindkey -M $mode '^[[C' self-insert # right
bindkey -M $mode '^[[D' self-insert # left

# ---

unset mode
