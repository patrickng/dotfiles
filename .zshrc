# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconfig="vim ~/.vim_runtime/my_configs.vim"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx rails ruby brew bundler gem git-extras npm laravel5 sublime wd)
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/usr/local/share/npm/bin:/usr/local/bin:~/.composer/vendor/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
source $ZSH/oh-my-zsh.sh

unsetopt SHARE_HISTORY

# Customize to your needs...

alias subl='open -a "Sublime Text"'
alias ll='ls -lha'
alias install-deps='npm install && bower install'
alias vundle='vim +PluginInstall +qall'
alias vim='mvim -v'
alias base='tmux attach -t base || tmux new -s base'
alias alpha='tmux attach -t alpha || tmux new -s alpha'
alias kappa='tmux attach -t kappa || tmux new -s kappa'

fpath=(/usr/local/share/zsh-completions $fpath)

function server {
  port="${1:-3000}"
  open "http://localhost:${port}/" && ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
}

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

. ~/.z\.sh
stty -ixon

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
