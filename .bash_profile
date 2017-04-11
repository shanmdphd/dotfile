
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Users/Sungpil/nm740/run:/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# added by Anaconda2 4.2.0 installer
export PATH="/Users/Sungpil/anaconda/bin:$PATH"
