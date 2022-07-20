export EDITOR=vim

alias v='nvim'
alias fd='fdfind'
# alias s='screen'

export LANG="C.UTF-8"
export LC_ALL="C.UTF-8"
export LC_CTYPE="C.UTF-8"

source "$HOME/.cargo/env"
export XDG_CONFIG_HOME=~/repository/config

export GRADLE_HOME=/opt/gradle/latest
export GRADLE_USER_HOME=/root/.gradle

export GOPATH=~/downloads/go
export GOBIN=$GOPATH/bin

export LD_LIBRARY_PATH=/usr/local/clang_9.0.0/lib

export USER_BIN=/usr/bin
export CATALINA_HOME=/root/apache-tomcat-9.0.46
export WIN32=/mnt/c/Windows/System32

export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
# export DISPLAY=:0.0

# deno
export LIBGL_ALWAYS_INDIRECT=1
export DENO_INSTALL="/root/.deno"

export PATH=$USER_BIN:$GOPATH:$GOBIN:$GRADLE_HOME/bin:$GRADLE_USER_HOME:$MAVEN_HOME:/root/.local/bin:$WIN32:$DISPLAY:$LIBGL_ALWAYS_INDIRECT:$CLANG9:$LD_LIBRARY_PATH:"$DENO_INSTALL/bin:$PATH"
# eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
