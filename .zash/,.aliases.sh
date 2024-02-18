# Abc:

alias b='brew'              # Homebrew
alias d='docker'            # Docker
alias e='subl'              # Editor: Sublime Text
alias f='_ f'               # Búsqueda, f()
alias h='history'           # Historial de ZSH
alias k='kill'              # kill
alias l='ls -alF'           # ls
alias m='less'              # pager
alias n='nano'              # nano
alias o='open'              # Abre archivo
alias p='ping'              # Ping
alias s='sudo'              # Superuser do
alias _='sudo'              # "
alias u='update'            # función update()

alias pip='python3 -m pip'
alias su='sudo su'			# root on macOS? Not really needed

alias mail="neomutt"        # Neomutt mail
alias news="newsboat"       # Feeds RSS
alias webs="w3m"            # Navegador consola

alias l.='ls -ld .*'

# Netstat

alias nstat_tcp='netstat -atp tcp'
alias nstat_udp='netstat -atp udp'
alias sh_conn='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias skt_conn='sudo lsof -iTCP -n -P'
alias file_conn='sudo lsof -Pni'
alias port_conn='sudo lsof -nP -i4TCP -sTCP:LISTEN'
alias open_conn='sudo lsof -i | grep ESTABLISHED'
alias apps_conn='sudo lsof -i -P | grep LISTEN'

alias websniff="sudo ngrep -d 'en4' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

alias ns='nslookup'
alias wup='airport -s'

# Directorios:

alias o.='open .'
alias ls="ls --color=auto"
alias la='ls -la'
alias ll='ls -l'
alias ls="ls -G"
alias rd='rmdir'
alias rm='rm -rf' # alias rm="rm -iv"
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'

alias hist='history | tail'
alias copypass= "passgen | pbcopy"

alias beep='echo -e -n \\a'

alias cls="echo -ne '\033c'"                 # Clear
alias dnsclean='dscacheutil -flushcache'

alias ip='myip'                              # IP ex
alias gg='googler'                           # Google command line tool (bring googler)
alias gopher='phetch'                        # Cliente Gopher

alias nv='nvim'                              # NV
alias vi='vim'                               # VIM
alias vim='vim'                              # VIM itself
alias vimdiff='vim -d'                       # VIM's diff

alias py='python'                            # python call
alias python='python3'						 # python 3 call
alias nc='ncat'                              # Nmap's ncat
alias kp='keepassc'                          # KeepassC

# alias dk='docker'

alias irc='textual'                           # Textual IRC
alias stest='speedtest-cli'                   # Test de velocidad conexión
alias speed='speed-test'                      # npm install --global speed-test (también desde NPX)

alias iso2utf='iconv -f iso-8859-1 -t utf-8'
alias utf2iso='iconv -f utf-8 -t iso-8859-1'

alias bring='brew install'
alias gem='sudo gem install -n /usr/local/bin $1'
# alias cask='brew cask'					  # cask command now integrated in brew command

alias luna='curl -4 wttr.in/Moon'                # Fase lunar
alias tiempo='curl -4 http://wttr.in/Leon,Spain' # Tiempo local en León

# alias g='git' # Está arriba.
alias gs='git status -sb'
alias gc='git commit -m'
alias ga='git add --all'
alias gp='git push origin master'
alias gl='git pull origin master'
alias gup='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

# Node
alias npm-ps='ps ax | fgrep npm'
alias nod-ps='ps ax | fgrep node'

alias npminstall='rm -rf node_modules && npm cache clear && npm cache clean && npm install'

# Configuraciones

alias etc-conf='sudo subl /etc/.'
alias pf-conf='sudo subl /etc/pf.conf'
alias hosts='sudo subl /etc/hosts'

# alias sharesh='tmate'               # Stream terminal: https://tmate.io/
# alias shrec='asciinema rec'         # ASCIInema: https://asciinema.org/

alias muttconf='subl ~/.mutt/*'
alias nvimconf='subl ~/.nvimrc'
alias vimconf='subl ~/.vimrc'
alias gitconf='subl ~/.gitconfig'
alias merconf='subl ~/.hgrc'
alias zshconf='subl ~/.zshrc'
alias zasconf='subl ~/.zash/*'
alias ohmconf='subl ~/.oh-my-zsh'
alias sshconf='subl ~/.ssh/config'

# alias pg='ping google.com'
# alias pr='ping 192.168.1.1'

alias ka='killall'
alias k9='kill -9'

alias kext="kextstat -kl | awk ' !/apple/ {print $6 $7} '"              # Muestra extensiones del kernel
alias launched="launchctl list | sed 1d | awk ' !/apple/ {print  $3 }'" # Muestra agentes / demonios al inicio

alias rap='say --progress'					# Speech 2 Text Rap

# Integridades

alias sha256='shasum -a 256'
alias sha512='shasum -a 512'

alias drv='df -h'

# alias mrt="TR_CURL_SSL_VERIFY=1 /Applications/Transmission.app/Contents/MacOS/Transmission"

alias ffid='diff -wyW 200 --suppress-common-lines $1 $2'

alias ixio="curl -sSF 'f:1=<-' 'http://ix.io'" # Sube a ix.io
alias sprunge="curl -sSF 'sprunge=<-' 'http://sprunge.us'" # Sube a sprunge.us

alias screensave="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"
alias resetaudio='sudo killall coreaudiod'
alias mute="osascript -e 'set volume output muted true'"
# alias sleep="pmset sleep now"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias rec='record' # Función record()

alias bup='brew update && brew upgrade && brew cleanup' # Actualiza brew y paquetes
alias caskup='brew cask list | xargs brew cask install --force'
# ^ Actualización "bruta" de paquetes Cask. Reinstala todos a la última versión
# ^ Usar 'brew cu' en su lugar

alias vnc='open -a VNC\ Viewer.app'
alias sublime='open -a Sublime\ Text'
alias subl='open -a Sublime\ Text'

alias clearcache='sudo killall -HUP mDNSResponder'
alias firefox='open -a /Applications/Firefox.app'
alias textual='open -a /Applications/Textual.app'
alias safari="open -a /Applications/Safari.app"				# Default Webkit Browser
alias chrome='open -a /Applications/Google\ Chrome.app'		# Second option webkit v8 browser
alias firefox="open -a /Applications/Firefox.app"			# Third option browser
alias magnet='aria2c '

# sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport

alias delds='find . -name .DS_Store -exec rm {} \;' # Elimina .DS_store

alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias localip='ipconfig getifaddr en4'              #
alias wholan='lanwho'                               #
alias lanwho='sudo nmap -sP 192.168.1.1-254'        # Mismo que el anterior
alias lanip='ipconfig getifaddr en0'                # IP Red Local

alias dsdel='find . -name .DS_Store -exec rm {} \;' # Elimina .DS_Store

# alias passg='clear && openssl rand -base64 15 | pbcopy'  # Crea pass
alias passgen='clear && gpg --gen-random -a 0 15 | pbcopy' # Pass con gpg

alias myip='curl http://api.ipify.org'
alias mip='myip'

# Directorios.

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias got="cd ~/git"
alias home='cd ~'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'
alias desk='cd ~/Desktop'
alias musica='~/Desktop/flac/'
alias router='safari http://192.168.1.1/'

# Misc
alias unixtime='date +%s'
alias reloadsh='exec zsh'
alias ntpdate='ntpdate -q 1.es.pool.ntp.org'

alias sexif='exiftool -a -u -g1 $*' # Muestra etiquetas EXIF
alias rexif='exiftool -all= $*'     # Elimina etiquetas EXIF
