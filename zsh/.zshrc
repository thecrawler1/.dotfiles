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

# Line to configure zsh highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lines to add alias
alias vi=lvim
alias vim=lvim
alias ls='exa --icons'
alias la='exa -a --icons'
alias ll='exa -la --icons'
alias cat='bat --style=auto'
alias top=ytop
alias grep='grep --color=auto'
alias more=less
alias mkdir='mkdir -p -v'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias cls=' echo -ne "\033c"'
alias open='xdg-open'
alias cd=z
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
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
