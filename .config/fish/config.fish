if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source

    alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"


end

alias config="/usr/bin/git --git-dir=$HOME/conf-repo/ --work-tree=$HOME"

