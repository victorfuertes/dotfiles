# macOS Defaults and other configuration lines

# Instala Homebrew.
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Instala Oh-My-ZSH
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# source ~/.zash/.brew.zsh  # Instala paquetes Brew y Cask.

# Dangerous: enable root $ dsenableroot

# Reference:
# https://ss64.com/osx/dsenableroot.html
# https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/dsenableroot.8.html


# Activa o desactiva spotlight:
# sudo mdutil -a -i on
# sudo mdutil -a -i off

# Repetición de pulsaciones rápida.
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false;
defaults write -g InitialKeyRepeat -int 15; # Anything lower than 15 seems too fast.
defaults write -g KeyRepeat -int 2; # You can go as low as 1, but that's too darn fast for me.
# -- defaults write InitialKeyRepeat -int 1 ; InitialKeyRepeat

# Directorio por defecto para las capturas de pantalla.

mkdir -p ~/Desktop/doc
mkdir -p ~/Desktop/rec
mkdir -p ~/Desktop/screen/
defaults write com.apple.screencapture location ~/Desktop/screen/
killall SystemUIServer

sudo nvram SystemAudioVolume=%00 # Deshabilita el sonido al encenderse la máquina.

# Desactiva el centro de notificaciones.
# launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# Desactiva Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Ask for the administrator password upfront
sudo -v

#
cd ~
# touch .hushlogin # Elimina el mensaje de último login en consola.

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
# while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# No pregunta al abrir aplicaciones.
defaults write com.apple.LaunchServices LSQuarantine -bool false

# No pregunta para vaciar la papelera:
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Vacía la papelera de forma segura por defecto:
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Fuerza el uso de UTF-8 en Terminal.app:
defaults write com.apple.terminal StringEncodings -array 4

# Resetea Launchpad:
[ -e ~/Library/Application\ Support/Dock/*.db ] && rm ~/Library/Application\ Support/Dock/*.db

# Muestra siempre barras de desplazamiento:
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Muestra los iconos ocultos translúcidos:
defaults write com.apple.Dock showhidden -bool YES && killall Dock

# Guarda las capturas de pantalla en el directorio indicado:
defaults write com.apple.screencapture location ~/Desktop/screen

# Guarda las capturas en el formato indicado (png):
defaults write com.apple.screencapture type -string jpg

# Fuerza todo el mail para ser visto como texto plano:
# defaults write com.apple.mail PreferPlainText -bool YES

# Establece la zona horaria:
sudo systemsetup -settimezone "Europe/Madrid" > /dev/null

# Establece el hostname
# sudo scutil --set ComputerName "8ct"
# sudo scutil --set HostName "8ct"
# sudo scutil --set LocalHostName "8ct"
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "8ct"

# git config --global user.name "Victor Fuertes"
# git config --global user.email victor@fuert.es
# git config --global github.user victorfuertes

# Opciones de desarrollo de Safari

defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
