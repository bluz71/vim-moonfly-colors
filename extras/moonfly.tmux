#!/usr/bin/env bash
#
# moonfly theme for tmux
#
# Upstream: github.com/bluz71/vim-moonfly-colors

# Set status line, windows, pane and message colors.
set -g message-style "bg=#1c1c1c,fg=#9c9c9c"
set -g pane-active-border-style "bg=#080808,fg=#80a0ff"
set -g pane-border-style "bg=#080808,fg=#303030"
set -g status-style "bg=#1c1c1c,fg=#9c9c9c"
setw -g window-status-activity-style none
setw -g window-status-current-style "bg=#353946,fg=#80a0ff"
# Set active and inactive window style.
setw -g window-status-current-format " #I #[fg=#9c9c9c] #[fg=default]#W #[fg=#e65e72]#{?window_flags,#{window_flags}, }#[fg=default] "
setw -g window-status-format " #I  #W #[fg=#e65e72]#{?window_flags,#{window_flags}, }#[fg=default] "

# Set status bar components and style.
set -g status-left "#[fg=#f09479]⠶ #[fg=#80a0ff]#S@#h "
if-shell '[[ $(uname) = Darwin ]]' \
    'set -g status-right "%a %d %b  #[fg=#80a0ff]%I:%M%p"' \
    'set -g status-right "%a %d %b  #[fg=#80a0ff]%I:%M%P"'
