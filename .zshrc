#zmodload zsh/zprof
# The following lines were added by compinstall
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix _yaourt
zstyle ':completion:*' completions 1
zstyle ':completion:*' condition 0
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous false
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+r:|[._-]=* r:|=*' '+l:|=* r:|=*'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true

#Aliases
alias vim="nvim"

#Variables
export EDITOR="nvim"
export PATH="$(cope_path):$PATH"
export SPROMPT='zsh: correct %F{1}%R%f to %F{2}%r%f [nyae]? '
export ENHANCD_COMMAND=ecd
export R_MAX_NUM_DLLS=500
#export MANPAGER="nvim -c 'set ft=man' -"
export XDG_CACHE_HOME="$HOME/.cache"

#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  #source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

#zplug "marlonrichert/zsh-autocomplete", use:zsh-autocomplete.zsh

eval $(dircolors)
#Prezto
zstyle ':prezto:*:*' color 'yes'
zinit snippet PZTM::environment
zinit snippet PZTM::terminal
zinit snippet PZTM::editor
zinit snippet PZTM::history
zinit snippet PZTM::directory
zinit snippet PZTM::spectrum
zinit snippet PZTM::utility
zinit snippet PZTM::completion
##zplug "modules/prompt", from:prezto

##Prezto extra
zinit snippet PZTM::helper
##zplug "modules/ocaml", from:prezto
zinit snippet PZTM::perl
zinit snippet PZTM::python
zinit snippet PZTM::rsync
zinit snippet PZTM::ruby
##zplug "modules/archive", from:prezto broken
##zplug "modules/git", from:prezto broken
zinit snippet PZTM::ssh
zinit snippet PZTM::tmux
    
#Colors
zinit snippet OMZP::colorize
zinit snippet OMZP::colored-man-pages
#zplug "plugins/catimg" from:oh-my-zsh 
#zplug "plugins/command-not-found" from:oh-my-zsh

#Copy
#zinit snippet OMZP::copydir
zinit snippet OMZP::copyfile
zinit snippet OMZP::cp
zinit snippet OMZP::rsync

#Perl
#zinit snippet OMZP::cpanm #lazy
zinit snippet OMZP::perl

#Directories
zinit ice pick"init.sh"
zinit light "b4b4r07/enhancd"
zinit snippet OMZP::dircycle
zinit snippet OMZP::dirhistory
zinit snippet OMZP::jump
zinit snippet OMZP::wd
zinit light "rupa/z"
zinit light "zdharma-continuum/zsh-navigation-tools"
zinit light "Tarrasch/zsh-bd"
#zplug "plugins/fasd", from:oh-my-zsh 

#Archive
zinit snippet OMZP::extract

#Git
zinit snippet OMZP::git

#Go
zinit snippet OMZP::golang #lazy

#Haskell
zinit snippet OMZP::cabal #lazy

#History
zinit light "zsh-users/zsh-history-substring-search"
zinit snippet OMZP::history
zinit light "zdharma-continuum/history-search-multi-word"
zinit light "tarruda/zsh-autosuggestions"

#Python
#zinit snippet OMZP::pep8
zinit snippet OMZP::python
zinit snippet OMZP::pip
zinit snippet OMZP::pyenv
zinit snippet OMZP::virtualenv #lazy
#zplug oh-my-zsh "plugins/pylinst"
#zplug, from:oh-my-zsh "plugins/virtualenvwrapper"

#Miscellaneous
zinit ice depth"1"
zinit light "romkatv/powerlevel10k"
#zinit light "djui/alias-tips"
zinit light "hchbaw/zce.zsh"
zinit light "jimmijj/zsh-syntax-highlighting"
zinit light "jreese/zsh-titles"
zinit light "mafredri/zsh-async" #lazy
zinit snippet OMZP::catimg #lazy
zinit snippet OMZP::taskwarrior #lazy
zinit snippet OMZP::themes #lazy
#zinit snippet OMZP::kate #lazy
#zplug "plugins/vi-mode", from:oh-my-zsh 
#zinit snippet OMZP::zsh_reload
zinit light "zdharma-continuum/zsnapshot"
zinit light "zdharma-continuum/ztrace"
zinit light "Tarrasch/zsh-functional"
zinit light "vifon/deer" #lazy
#zinit light "willghatch/zsh-snippets"
zinit light "zsh-users/zaw"
#zplug "joel-porquet/zsh-dircolors-solarized"
#zplug "Valiev/almostontop"
#zplug, from:oh-my-zsh "plugins/safe-paste"
#zplug oh-my-zsh "plugins/web-search"
#zplug "joepvd/grep2awk", nice:10
#zplug load" Angelmmiguel/pm"
#zplug load" marzocchi/zsh-notify"

#System
#zplug "plugins/archlinux", from:oh-my-zsh 
#zinit snippet OMZP::zsh_reload
zinit snippet OMZP::systemadmin
#zplug "plugins/systemd", from:oh-my-zsh 
zinit snippet OMZP::sudo

#Tmux
#zinit snippet OMZP::tmux
zinit snippet OMZP::tmuxinator
#zinit ice atclone"gdircolors -b LS_COLORS > clrs.zsh" \
#    atpull'%atclone' pick"clrs.zsh" nocompile'!' \
#    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
#zinit light trapd00r/LS_COLORS

#Misc2
zinit light "softmoth/zsh-vim-mode"
#zplug "DarrinTisdale/zsh-aliases-exa"
#zplug "hchbaw/auto-fu.zsh"
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

#Autosuggest
bindkey '^f' forward-word
bindkey '^b' backward-word
bindkey '^e' end-of-line
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
ZSH_AUTOSUGGEST_USE_ASYNC=true

#Fzf
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Powerlevel 
#POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_COLOR_SCHEME="light"
#POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="007"
##POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="000"
#POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="002" 
#POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="007"
##POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="000"
#POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND="002" 
##POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND="007"
##POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND="002"
#POWERLEVEL9K_USER_DEFAULT_FOREGROUND="007"
#POWERLEVEL9K_USER_DEFAULT_BACKGROUND="002" 

#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="011"
#POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="007"
#POWERLEVEL9K_DIR_HOME_FOREGROUND="011"
#POWERLEVEL9K_DIR_HOME_BACKGROUND="007"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="011"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="007"
#POWERLEVEL9K_STATUS_OK_FOREGROUND="006"
#POWERLEVEL9K_STATUS_OK_BACKGROUND="007"
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="007"
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="007"
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="006"
#POWERLEVEL9K_VCS_CLEAN_BACKGROUND="006"

#POWERLEVEL9K_CONTEXT_BOLD=true
#POWERLEVEL9K_DIR_BOLD=true
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
#POWERLEVEL9K_BACKGROUND_JOBS_BOLD=true
#POWERLEVEL9K_ROOT_INDICATOR_BOLD=true
#POWERLEVEL9K_HISTORY_BOLD=true
#POWERLEVEL9K_VCS_BOLD=true
##POWERLEVEL9K_CONTEXT_TEMPLATE="$USER@%m"

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)

#Powerlevel
#source "${ZPLUG_HOME}/repos/bhilburn/powerlevel9k/powerlevel9k.zsh-theme"

# PM functions
#source ~/.pm/pm.zsh
#alias pma="pm add"
#alias pmg="pm go"
#alias pmrm="pm remove"
#alias pml="pm list"
# end PM
#
autoload -Uz compinit && compinit
autoload -Uz compdef
autoload -Uz promptinit && promptinit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dnachun/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dnachun/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dnachun/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dnachun/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
if [ -f "/home/dnachun/.miniconda3/etc/profile.d/mamba.sh" ]; then
    . "/home/dnachun/.miniconda3/etc/profile.d/mamba.sh"
fi
#
export MAMBA_EXE="/home/dnachun/.local/bin/micromamba";
export MAMBA_ROOT_PREFIX="/home/dnachun/.miniconda3";
__mamba_setup="$('/home/dnachun/.local/bin/micromamba' shell hook --shell zsh --prefix '/home/dnachun/.miniconda3' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/home/dnachun/.miniconda3/etc/profile.d/micromamba.sh" ]; then
        . "/home/dnachun/.miniconda3/etc/profile.d/micromamba.sh"
    else
        export  PATH="/home/dnachun/.miniconda3/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup

#source /home/dnachun/.config/broot/launcher/bash/br
(( ! ${+functions[p10k]} )) || p10k finalize

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)

### End of Zinit's installer chunk

source $HOME/.conda_aliases
