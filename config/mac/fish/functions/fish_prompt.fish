function fish_prompt
    set -l pointer_color red
    test $status = 0; and set pointer_color blue
 
    set -q __fish_git_prompt_showupstream
    or set -g __fish_git_prompt_showupstream auto
 
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end
 
    set_color blue
    printf '%s' $USER
    set_color normal
    printf ' in '
 
    set_color blue
    printf '%s' (prompt_pwd --dir-length=0)
    set_color blue
 
    # git
    set_color white -d
    set -l prompt_git (fish_git_prompt '%s')
    test -n "$prompt_git"
    and printf ' %s' $prompt_git
    set_color normal
 
    # Line 2
    echo
    set_color $pointer_color
    printf '» '
    set_color normal
end
