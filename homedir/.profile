#############################################################
# Generic configuration that applies to all shells
#############################################################

source ~/.shellvars
source ~/.shellfn
source ~/.shellpaths
source ~/.shellaliases

export PATH="$HOME/.cargo/bin:$PATH"

complete -C /usr/local/bin/vault vault
