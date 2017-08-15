# p-I install AND DO SOURCE
# p-U update
# p-m-U uninstall


setenv -g TMUX_PLUGIN_MANAGER_PATH /usr/local/share/tmux.d # set-environment

set -g @plugin tmux-plugins/tmux-prefix-highlight
# #{prefix_highlight} -> status-left 

set -g @plugin tmux-plugins/tmux-resurrect # ~5000*
# p-c-s save
# p-c-r restore

set -g @plugin jbnicolai/tmux-fpp # aur/fpp; p-f to activate

set -g @plugin jbnicolai/tmux-urlview # aur/urlview; p-u to activate

run '/usr/local/share/tpm/tpm'

# set -g @plugin 'tmux-plugins/tmux-urlview'
# set -g @urlview-key 'x' # default is 'u'
# set -g @plugin 'tmux-plugins/tmux-resurrect' # ^s to save, ^r to restore


# vim: ft=tmux
