# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

function fish_user_key_bindings
    bind \cd ''
end

function fish_greeting

end 
# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
set -U fish_user_paths /Users/ezraschutte/Library/Python/3.9/bin $fish_user_paths
