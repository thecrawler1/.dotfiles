# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/thecrawler/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines to configure pure
autoload -U promptinit; promptinit

zstyle :prompt:pure:path color '#4877B1'
zstyle :prompt:pure:prompt:error color '#E53935'
zstyle :prompt:pure:git:branch color '#676E7D'
zstyle :prompt:pure:git:branch:cached color '#E53935'

prompt pure
# End of lines configuring pure

# Line to configure zsh highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Lines to add alias
alias vi=nvim
alias vim=nvim
alias ls='ls --color=auto'
# End of lines adding alias

