# Setup TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [ -z $1 ]
then
    echo "Provide an argument (linux/mac)"
    exit 1
elif [ $1 != "mac" ] && [ $1 != "linux" ];
then
    echo "Invalid os/argument (linux/mac)"
    exit 1
fi
os=$1

if [ $os == "mac" ];
then
    brew install nvim tldr tmux kitty yabai skhd fish
elif [ $os == "linux" ];
then
    sudo pacman -S nvim tldr swww hypr waybar tmux fish python-pywal
fi
