if status is-interactive

    neofetch

    alias config="/usr/bin/git --git-dir=$HOME/conf-repo/ --work-tree=$HOME"
    
    # Commands to run in interactive sessions can go here
    starship init fish | source

    


end

alias config="/usr/bin/git --git-dir=$HOME/conf-repo/ --work-tree=$HOME"

