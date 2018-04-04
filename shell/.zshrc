export TERM="xterm-256color"
DEFAULT_USER=${USER}

source ~/antigen/antigen.zsh
source ~/.fonts/*.sh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load plugins.
antigen bundles <<EOBUNDLES
# Bundles from the default repo (robbyrussell's oh-my-zsh).
    git
    sudo
    cp
    docker
    docker-compose
    command-not-found
    composer
    symfony2
    npm
    node

    # Bundles from other repositories.
    tarruda/zsh-autosuggestions
    zsh-users/zsh-syntax-highlighting
EOBUNDLES

# Theme: powerlevel9k
## https://github.com/bhilburn/powerlevel9k
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
## configurations:
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_OS_ICON_BACKGROUND="black"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_STATUS_OK_BACKGROUND='black'
POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_COLOR='green'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='black'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='196'
POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_COLOR='red'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""

antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell antigen that you're done.
antigen apply

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi
if [ -f ~/.custom_aliases ]; then
    source ~/.custom_aliases
fi

export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH=$PATH:/usr/local/go/bin
