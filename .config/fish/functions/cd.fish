function cd
builtin cd $argv
if set -q TMUX
tmux_window_name
end
end
