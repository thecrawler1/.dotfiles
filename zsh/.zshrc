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
alias vi=nvim
alias vim=nvim
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias more=less
alias mkdir='mkdir -p -v'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias cls=' echo -ne "\033c"'
alias ll='ls -lhA'
alias open='xdg-open'
# End of lines adding alias

# Load powerlevel10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
