#
# User configuration sourced by interactive shells
#

# Change default zim location 
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi

# If you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_MODE='nerdfont-complete'
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir aws vcs dir_writable)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status kubecontext time)
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M}"
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

source ~/.nvm/nvm.sh --no-use
source ~/.profile

# rbenv
eval "$(rbenv init -)"

#pyenv
eval "$(pyenv init -)"

# In order for gpg to find gpg-agent, gpg-agent must be running, and there must be an env
# variable pointing GPG to the gpg-agent socket. This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever), will either start
# gpg-agent or set up the GPG_AGENT_INFO variable if it's already running.

# Add the following to your shell init to set up gpg-agent automatically for every shell
if ! pgrep gpg-agent > /dev/null 2>&1; then
    gpg-agent --homedir /Users/michiel.rensen/.gnupg --daemon
fi

# load .nvmrc
function chpwd() {
  emulate -L zsh
  if [[ -f .nvmrc ]] then
    nvm use `cat .nvmrc`
  fi
}
[[ -f .nvmrc ]] && nvm use `cat .nvmrc`

# Customize to your needs...
#unsetopt correct

# Added by Krypton
export GPG_TTY=$(tty)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
