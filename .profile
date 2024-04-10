if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

[[ -f $HOME/.config/bash/bashrc ]] && $HOME/.config/bash/bashrc
