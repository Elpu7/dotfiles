#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'


if [[ $- == *i* ]] && [[ -n "$KITTY_WINDOW_ID" ]]; then
    fastfetch
fi


PS1='\[\e[38;5;111m\]╭─󰣇 \[\e[38;5;117m\]\u\[\e[38;5;245m\]@\[\e[38;5;75m\]\h \[\e[38;5;245m\]  \[\e[38;5;81m\]\w$(git_branch)\[\e[0m\]\n\[\e[38;5;111m\]╰─❯ \[\e[0m\]'


git_branch() {
    local branch
    branch=$(git branch --show-current 2>/dev/null)

    if [[ -n "$branch" ]]; then
        printf "\e[38;5;245m on \e[38;5;176m %s" "$branch"
    fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
