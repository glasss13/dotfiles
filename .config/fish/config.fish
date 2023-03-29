fish_add_path /usr/local/bin
fish_add_path ~/.config/cargo/bin
fish_add_path ~/bin

# Set xdg spec environment variables
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_STATE_HOME $HOME/.local/state
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x RUSTUP_HOME $XDG_DATA_HOME/rustup

set -x NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -x NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history

set -x PYTHONSTARTUP $XDG_CONFIG_HOME/python/pythonrc

set -x RTC_CONFIG_FILE $XDG_CONFIG_HOME/rtx/.tool-versions
set -x DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -x GRADLE_USER_HOME $XDG_DATA_HOME/gradle
set -x LESSHISTFILE $XDG_CACHE_HOME/less/history


function fish_greeting
	echo -e "Hello Max, you are looking rather handsome today"
end

function finder
	open -a finder $argv
end

function list_java
    echo (/usr/libexec/java_home -V)
end
function java20
    set -x JAVA_HOME (/usr/libexec/java_home -v20 -F)
end
function java8
    set -x JAVA_HOME (/usr/libexec/java_home -v1.8 -F)
end
# Set default java version to 20
java20

alias exa "exa -lahb"
alias cat bat
alias vim nvim
alias la "echo use exa"
alias ls "echo use exa"

alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
config config --local status.showUntrackedFiles no

rtx activate fish | source
starship init fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
end
