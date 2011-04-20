# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#


#
## Custom by Lorn
#
#

export PATH=$PATH:$HOME/App/bin:$HOME/App/redis/bin:$HOME/App/mongo/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" ]]

[[ -s "$HOME/perl5/perlbrew/etc/bashrc" ]] && source "$HOME/perl5/perlbrew/etc/bashrc" ]]

alias ssh='ssh -AC'

irc() {
  ssh -A lornlab@lornlab.org
}
