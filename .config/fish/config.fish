fish_add_path /usr/local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/bin

set --universal nvm_default_version lts

function fish_greeting
	echo -e "Hello Max, you are looking rather handsome today"
end

function finder
	open -a finder $argv
end

alias vim nvim
# setup dotfiles repository
alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
config config --local status.showUntrackedFiles no

starship init fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
end
