#local settings, like fpath, path
#typically, you will want to change to match your system
fpath=($fpath $HOME/.zsh/func $HOME/.zsh/zshkit/func)
typeset -U fpath

#path action
PATH=$PATH":${HOME}/.gem/ruby/1.8/bin"
PATH=$PATH":/usr/local/git/libexec/git-core"
PATH=$PATH":/Users/mitch/Sites/cake/cake/console"
PATH="/usr/local/bin:"$PATH

#histfile here, so its off remote by default.
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.histfile
setopt INC_APPEND_HISTORY
