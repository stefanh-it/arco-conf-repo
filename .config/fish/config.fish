if status is-interactive

    neofetch

    
    
    # Commands to run in interactive sessions can go here
    set -gx BROWSER brave
    set -gx EDITOR nvim
    starship init fish | source
    
    


end



