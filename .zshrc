# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nicey/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

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
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fast-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$HOME/.scripts/:/usr/games/:/opt/:$PATH"
export VISUAL=vim
export EDITOR=$VISUAL
export TERM="kitty"
export FLASK_ENV=development
export FLASK_APP=website
export FLASK_DEBUG=1
#export SECRET=$(python -c 'import os; print(os.urandom(16))')
export SECRET="14mb1gs3cr3tk3y!"
export KEYTIMEOUT=1
export LESS="-F -X $LESS"
GIT_PAGER=less
# War Thunder
export FMOD_ALSA_DEVICE=pulse
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#818284"

# pfetch
export PF_COL1=1
export PF_COL2=4
export PF_COL3=9
export PF_COL4=6
export PF_ALIGN=8
# RUSTFLAGS
export RUSTFLAGS="$RUSTFLAGS -A dead_code"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
#export ARCHFLAGS="-arch x86_64"

# Vim mode
#bindkey -v
# Change cursor shape for different vi modes.
#function zle-keymap-select {
    #if [[ ${KEYMAP} == vicmd  ]] || [[ $1 = 'block'  ]]
    #then
        #echo -ne '\e[1 q'
    #elif [[ ${KEYMAP} == main  ]] || [[ ${KEYMAP} == viins  ]] || [[ ${KEYMAP} = ''  ]] || [[ $1 = 'beam'  ]]
    #then
        #echo -ne '\e[5 q'
    #fi
#}
#zle -N zle-keymap-select
## Use beam shape cursor on startup.
#echo -ne '\e[5 q'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Python
alias py="python"
alias py2="python2"
alias py3="python3"
# Rust
alias carr="cargo run"
alias carb="cargo build"
alias cart="cargo test -- --nocapture"
alias ccarr="clear && cargo run"
alias ccarb="clear && cargo build"
alias ccart="clear && cargo test -- --nocapture"
alias v="nvim"
# Stuff
alias q="exit"
alias ll="ls -lhAF --show-control-chars --color=always"
alias ls="ls --color=yes"
alias sl="sl | lolcat"
alias dbu="sudo su - postgres"
alias psql="psql -P pager=off"
alias please="sudo"
alias sctl="sudo systemctl"
# Packages
alias up="sudo aptitude update && sudo aptitude upgrade"
alias apti="sudo aptitude install"
alias aptr="sudo aptitude remove"
alias aptl="aptitude list"
alias aptli="aptitude list --installed"
alias apts="aptitude search"
alias aptu="sudo aptitude update"
alias aptar="sudo aptitude autoremove"
# Git
alias gitb="git branch"
alias gitc="git checkout"
alias gitbc="git checkout -b"
#alias gitl="git log --oneline --all --graph"
alias gitl="git log --oneline --all --graph && git log --oneline --all | wc -l"
alias gitr="git remote"
alias gitac="git add . && git commit"
alias gitacp="git add . && git commit && git push &"
alias gitm="git merge --no-ff"
alias gitp="git push"
alias gitps="git push -u origin"
alias gitd="git diff"
alias battery="acpitool -b"
alias dcache="rm -rf __pycache__"
# Kitty
alias icat="kitty +kitten icat"
# Pipenv
alias pie="pipenv shell"
alias pie2="pipenv --two && pie"
alias pie3="pipenv --three && pie"
# SSHCHAT
alias sshadmin="nordvpn c && ssh 155.138.203.73 -p 2000"
alias sshpub="nordvpn c && ssh 155.138.203.73 -p 6666"
# iptables save
alias savefw="sudo bash -c \"iptables-save > /etc/iptables/rules.v4 && iptables-save > /etc/iptables/rules.v6\""

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Prompt
function current_git_branch {
    #printf "\($(git branch 2> /dev/null || echo '')\)" | grep "[*]\ .*" | grep "[0-9a-zA-Z]"
    #local branch="\($(git branch 2> /dev/null || echo '')\)" | grep "[*]\ .*"
    local cgbranch="$(git branch &> /dev/null | grep '[*]\ .*')"
    cgbranch=${cgbranch#* }
    if [ "$cgbranch" = "" ]
    then
        cgbranch="%F{090}"
    else
        cgbranch="%F{090}%K{226} %F{000}$cgbranch %k%F{226}"
    fi
    echo $cgbranch
}

NL=$'\n'
# Ace theme [Powerline Long]
export PROMPT='%K{232}%F{255} $(whoami) %K{239}%F{232}%F{255} @ %K{255}%F{239}%F{000} $(hostname) %K{090}%F{255}%F{255} %~ %k$(current_git_branch)%k%f%b '


# Dark theme
#export PROMPT='$(current_git_branch)%F{green}$(whoami)%F{141}@%F{159}$(hostname)%F{69}%~${NL}%F{228}$%k%f%b '

# Light theme
#export PROMPT='$(current_git_branch)%F{028}$(whoami)%F{063}@%F{057}$(hostname)%F{black}%~${NL}%F{005}$%f%b '
