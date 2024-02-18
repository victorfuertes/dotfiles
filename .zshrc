# .zshrc

# umask 077 # 022
# Replace #FILLIN with your user and home folder's name

DEFAULT_USER=#FILLIN
HIST_STAMPS="dd/mm/yyyy"

# Zash!:

source ~/.zash/.options.sh                 # Opciones de entorno
source ~/.zash/.exports.sh                 # Entorno
source ~/.zash/.functions.sh               # Funciones
source ~/.zash/.aliases.sh                 # Atajos
source ~/.zash/.login.sh                   # Tareas iniciales
# source ~/.zash/.code.sh                    # Generación de Código
# source ~/.zash/.web.sh                     # Framework Web

# source ~/.zash/.filetype.sh                # Manejo de archivos

# source ~/.zash/.macos.sh                   # Entorno macOS
# source ~/.zash/.linux.sh                   # Entorno Linux
# source ~/.zash/.win.sh                     # Entorno Windows
# source ~/.zash/.security.sh                # Configuración de Seguridad
# source ~/.zash/.shortcuts.sh               # Atajos a directorios
# source ~/.zash/.prompt.sh                  # Formato de prompt
# source ~/.zash/.completion.sh              # Autocompletado
# source ~/.zash/.tmux.sh                    # Terminal multiplexer
# source ~/.zash/.adds.sh                    # Aliases y funciones añadidas

source "$HOME/.cargo/env"

export MANPATH="/usr/local/man:$MANPATH"
export PATH=/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/#FILLIN/Library/Python/3.9/bin:$PATH"
export PATH="/Users/#FILLIN/.local/bin:$PATH"
export PATH="/Users/#FILLIN/.cargo/bin:$PATH"

export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# source ~/.rvm/scripts/rvm

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
