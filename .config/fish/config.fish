fish_add_path /usr/local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/bin

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
    export JAVA_HOME=(/usr/libexec/java_home -v20 -F)
end
function java8
    export JAVA_HOME=(/usr/libexec/java_home -v1.8 -F)
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
