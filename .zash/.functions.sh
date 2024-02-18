function _ { sudo $@ }                    # _ comando en modo su

function archiva() {
    echo "Archivando $1 ..."
    if [ $1 ] ; then
        case $1 in
            tbz)       tar cjvf $2.tar.bz2 $2    ;;
            tgz)       tar czvf $2.tar.gz  $2    ;;
            tar)       tar cpvf $2.tar  $2       ;;
            bz2)       bzip $2                   ;;
            gz)        gzip -c -9 -n $2 > $2.gz  ;;
            zip)       zip -r $2.zip $2          ;;
            7z)        7z a $2.7z $2             ;;
            *)         echo "'$1' no puede ser archivado con pack()" ;;
        esac
    else
        echo "'$1' no es un archivo válido."
    fi
}

function logdir() {
  cd /Users/$USER/Library/Logs
  open .
}

function searchfont() {
  brew cask search /$1/
}

# function add-alias() {
#   $ad-alias = ~/.zash/.adds.zsh
#
#   echo -E  alias $(printf "'%s'" "${@[@]}") >> "$add-alias"
#
#   # echo "'%s'" > ~/.zash/.adds.zsh;
#   zsh -l && source ~/.zshrc # ZSH Reload /exec zsh/~
# }

function justify() {
  par j1w78 < $1 > $1.par
}
function dirsize() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* ./*;
  fi;
}

function siz() {
    du -h $1
}

function genpass {
  pwgen -B -sy 20 1 -C | pbcopy
  # echo `pbpaste`
}

function record() {
  touch /Users/$USER/Desktop/rego_$1.flac
  sox −r 44100 −b 16 −e signed-integer −p -d "/Users/$USER/Desktop/rego_$1".flac;
}

function captura() {
/Applications/Kap.app/Contents/MacOS/Kap
}

function videorec() {
  osascript -e 'tell application "QuickTime Player" to activate' -e 'tell application "QuickTime Player" to start (new movie recording)';
}

function screenrec() {
  osascript -e 'tell application "QuickTime Player" to activate' -e 'tell application "QuickTime Player" to start (new screen recording)';
}

function ghc() {
    git clone https://github.com/${1}/${2}.git  # Formato ghc user project
}

function procc() { ps aux | grep $1 }

function f() { sudo find . -iname "*$1*" ${@:2}; }        # Búsqueda.

function linkshort() { curl -F"shorten=$*" https://0x0.st }   # Acortador de URL.

function mkcd() { mkdir -p "$@" && eval cd "\"\$$#\""; } # mkdir + cd.

function define(){ eval open "dict://$1"; }   # Define según el diccionario de OS X.

# function rae(){ open -a /Applications/Google\ Chrome.app "http://dle.rae.es/?w=$1"; } # Define según la RAE.

function yt() {
  youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$1.mp4" https://www.youtube.com/watch?v=$1
}

function fsize() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* ./*;
  fi;
}
function duck() {
  local IFS='+'
  local query="$*"
  open "https://duckduckgo.com/?q=${query}"
}
function google() {
  local IFS='+'
  local query="$*"
  open "https://www.google.com/#q=${query}"
}
function ecosia() {
  local IFS='+'
  local query="$*"
  open "https://www.ecosia.org/search?q=${query}"
}
function bing() {
  local IFS='+'
  local query="$*"
  open "https://www.bing.com/search?q=${query}"
}

function rae() {
  local IFS='+'
  local query="$*"
  open "http://dle.rae.es/srv/search?m=30&w=${query}"
}

function geoip() { # Alternativa: geoiplookup, http://ifconfig.me/, https://freegeoip.net/
  curl ipinfo.io/$1
}

function geohost() { curl freegeoip.net/json/$1 }

function extract() {

    echo "Extrayendo $1 ..."
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1                         ;;
            *.tar.gz)   tar xzf $1                         ;;
            *.tar.xz)   tar xvJf $1                        ;;
            *.dmg)      hdiutil mount $1                   ;;
            *.lzma)     unlzma $1                          ;;
            *.bz2)      bunzip2 $1                         ;;
            *.rar)      unrar x $1                         ;;
            *.gz)       gunzip $1                          ;;
            *.tar)      tar xf $1                          ;;
            *.tbz2)     tar xjf $1                         ;;
            *.tbz)      tar -xjvf $1                       ;;
            *.tgz)      tar xzf $1                         ;;
            *.zip)      unzip $1                           ;;
            *.pax)      cat $1 | pax -r                    ;;
            *.pax.Z)    uncompress $1 --stdout | pax -r    ;;
            *.Z)        uncompress $1                      ;;
            *.7z)       7z x $1                            ;;
            *.xz)       unxz $1                            ;;
            *.exe)      cabextract $1                      ;;
            *)          echo "No se puede extraer '$1'..." ;;
        esac
    else
        echo "'$1' no es un archivo extraible."
    fi
}

function transfer() {
    if [ $# -eq 0 ];
    then
        echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
        return 1
    fi
    tmpfile=$( mktemp -t transferXXX )
    file=$1
    if tty -s;
    then
        basefile=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g')
        if [ ! -e $file ];
        then
            echo "File $file doesn't exists."
            return 1
        fi
        if [ -d $file ];
        then
            zipfile=$( mktemp -t transferXXX.zip )
            cd $(dirname $file) && zip -r -q - $(basename $file) >> $zipfile
            curl --progress-bar --upload-file "$zipfile" "https://transfer.sh/$basefile.zip" >> $tmpfile
            rm -f $zipfile
        else
            curl --progress-bar --upload-file "$file" "https://transfer.sh/$basefile" >> $tmpfile
        fi
    else
        curl --progress-bar --upload-file "-" "https://transfer.sh/$file" >> $tmpfile
    fi
    cat $tmpfile
    if hash xclip 2>/dev/null; then
        cat $tmpfile | xclip -selection clipboard
    fi
    rm -f $tmpfile
}
function gupdate() {

  echo "Actualizando GIT  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  dirgit
  find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;

}

function update() {

  sudo -v

  echo "Actualizando Brew -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  brew upgrade
  brew cleanup --prune-prefix
  brew doctor
  brew cleanup -s

 # echo "Actualizando Casks  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

 # brew upgrade --cask
 # # brew cu

  echo "Actualizando Node -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  nvm install node
  npm update

  echo "Actualizando NPM  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  npm install npm@latest -g
  npm i npm -g; npm update -g
  npm cache verify

  echo "Actualizando PIP  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  sudo -H pip3 install --upgrade pip
  pip install -U `pip list --outdated | awk 'NR>2 {print $1}'`

  safety check

  echo "Actualizando Ruby -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"
  #
  rvm get head
  rvm reload
  rvm get stable
  # rvm get latest
  rvm requirements

  echo "Actualizando GEM  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  sudo gem update
  sudo gem pristine --all
  sudo gem cleanup

  echo "Actualizando macOS   -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -"

  sudo softwareupdate -i -a

  mas upgrade # https://github.com/mas-cli/mas

  # topgrade

  echo "-  -  -  -  -  -  -  -  -  -  -  -  -  ¡Hecho!  -  -  -  -  -  -  -  -  -  -  -  -  -";

}
