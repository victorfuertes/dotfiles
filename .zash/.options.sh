setopt AUTO_CD      # navegación cd por nombre de carpeta
setopt NO_BEEP      # sin avisos auditivos
setopt NOBGNICE     # procesos en background veloces

export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE=$HOME/.zshistory
export HISTTIMEFORMAT='%Y-%m-%dT%T'
export HISTIGNORE="ls:pwd:exit:exit:* --help:* -h"
