# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#



#
## Custom by Lorn
#
#
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/App/bin:$HOME/App/redis/bin:$HOME/App/mongo/bin:$HOME/.dot/bin/:/home/lorn/.cargo/bin:/home/lorn/.local/bin
export TERM=xterm-256color
export TERMINAL="st" 
export FILE="ranger" 
export LANG=en_US.UTF-8
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
alias ssh='ssh -AC'

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'


# GRC colorizes nifty unix tools all over the place
if $(grc &>/dev/null)
then
  source `brew --prefix`/etc/grc.bashrc
fi

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

ssh-reagent () {
         for agent in /tmp/ssh-*/agent.*; do
                export SSH_AUTH_SOCK=$agent
                if ssh-add -l 2>&1 > /dev/null; then
                        echo Found working SSH Agent:
                        ssh-add -l
                        return
                fi
        done
        echo Cannot find ssh agent - maybe you should reconnect and forward it?
}

