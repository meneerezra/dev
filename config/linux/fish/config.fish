# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'
set -g fish_greeting
# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# Export pywal variables (optional)
# if test -f ~/.cache/wal/colors.sh
#     source ~/.cache/wal/colors.sh
# end
set -U fish_user_paths ~/dev/scripts/ $fish_user_paths

set -x TMUX_PYWAL_BG $background
set -x TMUX_PYWAL_FG $foreground
