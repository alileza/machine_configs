if [ -f ~/.git-completion.bash ]; then
	     . ~/.git-completion.bash
fi

parse_git_branch() {
	     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1="\W\[\033[32m\]\e[1m\[\033[38m\]\$(parse_git_branch)\[\033[00m\] $ "
#PS1="\W $ "
alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'
alias mssh='mosh --ssh ssh'

alias s="brew services"
alias bnr="go build && ./intools"

alias gs="git status"
alias dm="docker-machine"

export GOPATH=/usr/local/go/
export PATH=$PATH:$GOPATH/bin/
export HOMEBREW_GITHUB_API_TOKEN=

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
