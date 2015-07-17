# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#alias tree='tree -AC -I "*.pyc|_darcs|cabal-dev|dist|state"'

if [ $(uname) == "Linux" ];then
    alias apt-get='sudo apt-get'
    alias open='xdg-open'
elif [ $(uname) == "Darwin" ];then
    alias broken='find -L . -type l -ls'
    alias pg-start='pg_ctl -D /usr/local/var/postgres -r /usr/local/var/postgres/server.log start'
    alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

fi


alias l='less'
alias ll='ls -al'
alias df='df -h'
alias du='du -ch'

alias la='ls -A'
alias pycclean='find . -name "*.pyc" | xargs -I {} rm -v "{}"'
alias env='env|sort'
alias rm='rm -i'

if [ $(uname) == "Darwin" ];then
    alias route='netstat -rn'
else
    alias route='route -n'
fi
alias devpi-server='/data/VENV/sax/bin/python /data/VENV/sax/bin/devpi-server'
alias devpi='/data/VENV/sax/bin/devpi'
alias isort='/data/VENV/sax/bin/isort'
alias canius='/data/VENV/sax/bin/caniusepython3'


# These set up/down to do the history searching
if [[ $- == *i* ]];then
    bind '"\e[A"':history-search-backward
    bind '"\e[B"':history-search-forward
fi

alias ..='cd ..'
alias ...='cd ../../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias e='$EDITOR $@'

alias mkvirtualenvtemp='mkvirtualenv TEMP__$RANDOM'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'


alias ports='netstat -tulanp'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias vlc='/Applications/VLC.app/Contents/MacOS/VLC *.avi'
