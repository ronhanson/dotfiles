#############################
# Variables d'environnement #
#############################
## Terminal en 256 couleurs
export TERM="xterm-256color"

## Langue
export LANG="fr_FR.UTF-8"
export LC_ALL="fr_FR.UTF-8"

## Path to your oh-my-zsh installation.
export ZSH="/Users/ronand/.oh-my-zsh"

## Modification du PATH
export PATH=/usr/bin:${PATH}:/usr/local/bin:/opt:/home/ronand/bin:.



######################
# Thème PowerLevel9k #
######################
## Thème
ZSH_THEME="powerlevel9k/powerlevel9k"

## Configuration PowerLevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\UE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\UE0B6'

## Chargement des segments externes
#POWERLEVEL9K_EXTERNAL_SEGMENTS="${HOME}/.powerlevel9k/segments"
#source "${POWERLEVEL9K_EXTERNAL_SEGMENTS}/loader.zsh"
#load_segments 'air_quality_no2'

## Configuration du prompt
### Deuxième ligne de prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
## Préfixe des deux lignes (la flèche tordue)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""  #"\u256d\u2500 "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" \u2570\uf0da " #"\u2570\uf460 "
## Saut de ligne entre chaque prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE="true"

## Segment avec Logo Debian custom_apple_icon
POWERLEVEL9K_CUSTOM_APPLE_ICON="echo -e '\uf179' "
POWERLEVEL9K_CUSTOM_APPLE_ICON_BACKGROUND=233
POWERLEVEL9K_CUSTOM_APPLE_ICON_FOREGROUND=255

## Couleurs
### Répertoires
POWERLEVEL9K_DIR_HOME_BACKGROUND=004
POWERLEVEL9K_DIR_HOME_FOREGROUND=232
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=004
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=232
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=004
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=232

POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="white"

#POWERLEVEL9K_SHORTEN_DIR_LENGTH=30
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_absolute_chars"
#POWERLEVEL9K_SHORTEN_DELIMITER="…"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="default"

### Heure
POWERLEVEL9K_TIME_FOREGROUND=232
### Status
POWERLEVEL9K_STATUS_OK_BACKGROUND=232
POWERLEVEL9K_STATUS_OK_FOREGROUND=46
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=232
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=196
### Ssh
POWERLEVEL9K_SSH_ICON='\uf68c'
### Root
POWERLEVEL9K_ROOT_ICON='\uf198 '
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=196
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=232
### Processus en arrière-plan
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=232
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=178
### Environnement virtuel Python
POWERLEVEL9K_VIRTUALENV_ICON='\ue235'
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND=white


### Batterie
POWERLEVEL9K_BATTERY_STAGES=($'\uf244' $'\uf243' $'\uf242' $'\uf241' $'\uf240') 
POWERLEVEL9K_BATTERY_LEVEL_BACKGROUND=(124 208 003 070 034)
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=232
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=232
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=232
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=232

# GIT
POWERLEVEL9K_HIDE_BRANCH_ICON="true"
POWERLEVEL9K_VCS_BRANCH_ICON="\ue0a0"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf09b"
DISABLE_UNTRACKED_FILES_DIRTY="true"

POWERLEVEL9K_IP_BACKGROUND=blue
POWERLEVEL9K_IP_FOREGROUND=black
POWERLEVEL9K_PUBLIC_IP_BACKGROUND=blue
POWERLEVEL9K_PUBLIC_IP_FOREGROUND=black
POWERLEVEL9K_IP_INTERFACE="en0"
POWERLEVEL9K_PUBLIC_IP_TIMEOUT=600


## Configuration du format de l'heure
POWERLEVEL9K_TIME_FORMAT="%D{\ue383 %H:%M \uf073 %d.%m.%y}"

## Définition des segments du prompt
### Gauche (première ligne)
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir) #(custom_apple_icon ssh context root_indicator dir dir_writable vcs virtualenv)
else
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_apple_icon root_indicator dir dir_writable vcs virtualenv)
fi
### Droite
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs todo load ram  disk_usage ip public_ip battery) #load ram

## Délai Auto-Update
export UPDATE_ZSH_DAYS=7



#######################
# Plugins Oh My Zsh ! #
#######################
plugins=(
  gitfast
  #git-extras
  zsh-autosuggestions
  colored-man-pages
  z
  zsh-syntax-highlighting
  warhol
  python
  jsontools
  nyan
  osx
  pip
  pep8
  vscode
  django
  docker
  encode64
  fabric
  
)

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


########################
# Correction de frappe #
########################
setopt correct



#################################
# Configuration de l'historique #
#################################
## Nombre de lignes en mémoire
HISTSIZE=1000

## Fichier de sauvegarde
HISTFILE=~/.zsh_history

## Nombre d'entrées à enregistrer
SAVEHIST=1000

## Suppression des doublons
HISTDUP=erase

## Date format
HIST_STAMPS="yyyy-mm-dd"

## Ajout des entrées en mode append
setopt    appendhistory

## Partage de l'historique entre terminaux
setopt    sharehistory

## Ajout immédiat à l'historique (pas à la fermeture du terminal)
setopt    incappendhistory



###########################
# Configuration de Python #
###########################
## Encodage de Python en utf-8
export PYTHONIOENCODING="utf-8"    
export PYTHONENCODING="utf-8"    



##############
# Complétion #
##############

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## Stockage des fichiers de règles de complétion
fpath=(~/.zsh/completion ${fpath}) 

## Initialisation du système compsys
autoload -U compinit
compinit
 
## Affichage du menu de complétion à partir de deux résultats
zstyle ':completion:*' menu select=2


##
# BASH 
##

HISTFILESIZE=1000
HISTSIZE=1000

export PATH=/usr/local/bin:/usr/local/sbin:/opt/scripts:/opt/opendcp/bin:$PATH
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

export MAGICK_HOME=/usr/local/opt/imagemagick@6
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PYTHONPATH=$PYTHONPATH:.
export AMAZON_SSH_KEY="/Users/ronand/Documents/Cinecardz-Amazon.pem"

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

##
# Bash Aliases
##
source ~/.bash_aliases

source "$(pew shell_config)"

