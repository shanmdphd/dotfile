
export PATH="$PATH:$HOME/.rvm/bin:$HOME/nmfe74" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a Terminal"'
