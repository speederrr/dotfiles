#!/bin/sh

export XDG_CONFIG_HOME="${HOME}/.config"

path=("$HOME/.local/bin" $path)
export PATH

export EDITOR=nvim
export VISUAL=nvim
alias vi="nvim"

alias ls="ls -l --color=auto"

man() {
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;97m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;48;5;117;30m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[04;94m' \
    command man "$@"
}
