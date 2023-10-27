# ruby version manager
## rvm default
## nvm use system 
set PATH $HOME/.ghcup/bin $HOME/.cargo/bin $HOME/.local/bin $HOME/.config/emacs/bin $PATH
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
npm config set prefix ~/.local
if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
    set -gx BROWSER brave
    set -gx EDITOR nvim
    starship init fish | source

    end
#make fish work

