# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# Map jk to exit vim insert mode
bindkey -M viins 'jk' vi-cmd-mode

# To enable autocompletion
autoload -Uz compinit
compinit
zstyle ':completion::complete:*' gain-privileges 1

# Line to configure zsh highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lines to add alias
alias vi=lvim
alias vim=lvim
alias ls='exa -l --icons'
alias la='exa -a --icons'
alias ll='exa -la --icons'
alias lo='ll --sort=modified'
alias cat='bat --style=auto --theme="OneHalfDark"'
alias top=btm
alias grep='grep --color=auto'
alias less=cat
alias more=less
alias mkdir='mkdir -p -v'
alias cp='cp -i'
alias mv='mv -i'
alias cls=clear
alias open='xdg-open'
alias sudo='sudo -v; sudo '
alias du='du -h'
alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
alias ......='../../../../..'
alias .......='../../../../../..'
alias ........='../../../../../../..'
alias .........='../../../../../../../..'
alias ..........='../../../../../../../../..'
alias ...........='../../../../../../../../../..'
alias zomboid=~/Games/ProjectZomboid/start.n.sh
# End of lines adding alias

# Load powerlevel10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add cargo to path
export PATH=/home/thecrawler/.cargo/bin:$PATH

# Add lunarvim to path
export PATH=/home/thecrawler/.local/bin:$PATH

# Add zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add asdf
source /opt/asdf-vm/asdf.sh

# Set lunar vim as the default editor
export EDITOR=nvim

# gcloud
source /etc/profile.d/google-cloud-cli.sh
