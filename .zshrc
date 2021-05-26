# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
# export ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# [START aliases]
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias f="fuck"
alias clone_roppen="cd ~/Work/Github/Rapido && python clone_repos.py"
alias rgit="cd ~/Work/Github/Rapido"
alias fshutdown="sudo shutdown -r now"
alias af="alias-finder"
alias pytest="python -m pytest"
alias switchj8='sdk default java 8.0.282.hs-adpt'
alias switchj11='sdk default java 11.0.10.hs-adpt'
alias switch_spark='sdk default spark'
alias switch_flink='sdk default flink'
alias historyg="omz_history | \grep --color"
alias prestoprod="~/presto --server presto.yoda.run --catalog hive --schema legacy --user admin --progress --debug"
# git
alias gcane="git commit -v --amend --no-edit"
alias grsetpo='git remote set-url --push origin'
alias gpom='git push --set-upstream origin master'
alias gcbd='git checkout develop && git pull --all && git checkout -b'
alias gcbm='git checkout master && git pull --all && git checkout -b'
# gh
alias gprd="gh pr create --base develop -f"
alias gprdt="gh pr create --base develop -t'Dev' -f"
alias gprm="gh pr create --base master -f"
alias gprmt="gh pr create --base master -t'Master' -f"
alias gprr="gh pr create --base release -f"
alias gprrt="gh pr create --base release -t'Master' -f"
alias gprdm="git checkout develop && git pull --all && gh pr create --base master --head develop -t'Dev to Master' -f"

# kubectl
alias kgvsa="kubectl get vs --all-namespaces"
alias kgspark="kubectl get SparkApplication"
alias kdspark="kubectl delete SparkApplication"
alias kg="kg"
alias kghpa="kubectl get hpa"
alias kghpan="kubectl get hpa -n"
# alias kgs="kubectl get SparkApplication"
alias ag="alias | \grep --color"

# pre-commit
alias pc="git add . && pre-commit"

# ssh
alias ssh="ssh -v -o ConnectTimeout=10 -o ConnectionAttempts=10"

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'



# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### End of Zinit's installer chunk

# Speed test: for i in $(seq 1 10); do /usr/bin/time /bin/zsh -i -c exit; done;

# Zstyle.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path "$HOME/.zcompcache"
zstyle ':completion:*' list-colors $LS_COLORS
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec))'
zstyle ':completion:*' rehash true

# History.
HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"
HISTSIZE=100000
SAVEHIST=10000
setopt appendhistory notify
unsetopt beep nomatch

setopt bang_hist                # Treat The '!' Character Specially During Expansion.
setopt inc_append_history       # Write To The History File Immediately, Not When The Shell Exits.
setopt share_history            # Share History Between All Sessions.
setopt hist_expire_dups_first   # Expire A Duplicate Event First When Trimming History.
setopt hist_ignore_dups         # Do Not Record An Event That Was Just Recorded Again.
setopt hist_ignore_all_dups     # Delete An Old Recorded Event If A New Event Is A Duplicate.
setopt hist_find_no_dups        # Do Not Display A Previously Found Event.
setopt hist_ignore_space        # Do Not Record An Event Starting With A Space.
setopt hist_save_no_dups        # Do Not Write A Duplicate Event To The History File.
setopt hist_verify              # Do Not Execute Immediately Upon History Expansion.
setopt extended_history         # Show Timestamp In History.

# - - - - - - - - - - - - - - - - - - - -
# Theme
# - - - - - - - - - - - - - - - - - - - -

# Most Themes Use This Option.
setopt promptsubst

# These plugins provide many aliases - atload''
zinit wait lucid for \
        OMZ::lib/git.zsh \
    atload"unalias grv" \
        OMZ::plugins/git/git.plugin.zsh \
        OMZ::lib/termsupport.zsh \
        OMZ::lib/grep.zsh \
        OMZ::lib/completion.zsh

# Provide A Simple Prompt Till The Theme Loads
PS1="READY >"
zinit ice wait'!' lucid
zinit ice depth=1; zinit light romkatv/powerlevel10k


# - - - - - - - - - - - - - - - - - - - -
# Annexes
# - - - - - - - - - - - - - - - - - - - -

# Load a few important annexes, without Turbo (this is currently required for annexes)
# zinit light-mode for \
zinit light-mode compile"handler" for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node \
    zinit-zsh/z-a-submods \
    zdharma/declare-zsh


# - - - - - - - - - - - - - - - - - - - -
# Plugins
# - - - - - - - - - - - - - - - - - - - -

eval $(thefuck --alias)

# Functions to make configuration less verbose
# zt() : First argument is a wait time and suffix, ie "0a". Anything that doesn't match will be passed as if it were an ice mod. Default ices depth'3' and lucid
zt(){ zinit depth'3' lucid ${1/#[0-9][a-c]/wait"${1}"} "${@:2}"; }

zt 0c light-mode patch"${pchf}/%PLUGIN%.patch" reset nocompile'!' for \
    atload'ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(__fz_zsh_completion)' \
        changyuheng/fz \
    compile'h*' \
        zdharma/history-search-multi-word

zinit light-mode compile"handler" for \
    light-mode atinit"ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20" atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    light-mode atinit"
        typeset -gA FAST_HIGHLIGHT;
        FAST_HIGHLIGHT[git-cmsg-len]=100;
        zpcompinit;
        zpcdreplay;
    " \
        zdharma/fast-syntax-highlighting

    # export AUTOSWITCH_VIRTUAL_ENV_DIR="./.virtualenvs/"
export AUTOSWITCH_VIRTUAL_ENV_DIR=".venv"
export AUTOSWITCH_MESSAGE_FORMAT="$(tput setaf 1)Switching to %venv_name 🐍 %py_version $(tput sgr0)"


zt 0b lucid for ChethanUK/pyenv-zsh-autoswitch \
        MichaelAquilina/zsh-you-should-use \
    atload'zstyle ":completion:*" special-dirs false' \
        OMZL::completion.zsh \
    as'completion' atpull'zinit cclear' blockf \
        zsh-users/zsh-completions \
    as'completion' nocompile mv'*.zsh -> _git' patch"${pchf}/%PLUGIN%.patch" reset \
        felipec/git-completion \
        zsh-users/zsh-autosuggestions \
        zsh-users/zsh-syntax-highlighting

zt 0b lucid for OMZL::history.zsh \
    OMZP::systemd/systemd.plugin.zsh \
    OMZP::sudo/sudo.plugin.zsh \
    as'completion' atpull'zinit cclear' blockf \
        OMZL::completion.zsh \
        OMZ::plugins/ansible/ansible.plugin.zsh \
        OMZ::plugins/alias-finder/alias-finder.plugin.zsh \
        OMZ::plugins/brew/brew.plugin.zsh \
        OMZ::plugins/cloudfoundry/cloudfoundry.plugin.zsh \
        OMZ::plugins/colorize/colorize.plugin.zsh \
        OMZ::plugins/command-not-found/command-not-found.plugin.zsh \
        OMZ::plugins/common-aliases/common-aliases.plugin.zsh \
        OMZ::plugins/docker-compose/docker-compose.plugin.zsh \
        OMZ::plugins/docker/_docker \
        hadenlabs/zsh-docker \
        OMZ::plugins/git-auto-fetch/git-auto-fetch.plugin.zsh \
        OMZ::plugins/git-flow-avh/git-flow-avh.plugin.zsh \
        OMZ::plugins/globalias/globalias.plugin.zsh \
        OMZ::plugins/golang/golang.plugin.zsh \
        OMZ::plugins/gradle/gradle.plugin.zsh \
        OMZ::plugins/history/history.plugin.zsh \
        OMZ::plugins/keychain/keychain.plugin.zsh \
        OMZ::plugins/nmap/nmap.plugin.zsh \
        OMZ::plugins/pyenv/pyenv.plugin.zsh \
        OMZ::plugins/pylint/pylint.plugin.zsh \
        OMZ::plugins/python/python.plugin.zsh \
        OMZ::plugins/sbt/sbt.plugin.zsh \
        OMZ::plugins/screen/screen.plugin.zsh \
        OMZ::plugins/systemadmin/systemadmin.plugin.zsh \
        OMZ::plugins/thefuck/thefuck.plugin.zsh \
        OMZ::plugins/tig/tig.plugin.zsh \
        OMZ::plugins/zsh_reload/zsh_reload.plugin.zsh \
        OMZ::plugins/terraform/terraform.plugin.zsh \
        OMZ::plugins/kubectl/kubectl.plugin.zsh

# PyENV
#export PATH="/root/.pyenv/bin:$PATH"
# Load pyenv automatically by appending
export PATH="/home/chethanuk/.pyenv/bin:$PATH"
# Load pyenv automatically by appending
# the following to ~/.bashrc:

eval "$(pyenv init -)"

# And the following to ~/.profile:

eval "$(pyenv init --path)"

# Make sure to restart your entire logon session
# for changes to ~/.profile to take effect.

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bash_profile:

eval "$(pyenv virtualenv-init -)"
