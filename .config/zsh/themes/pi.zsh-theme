autoload -Uz add-zsh-hook colors vcs_info

zstyle ":vcs_info:*" enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

_prompt_shorten_cwd() {
    local cwd="$(print -P '%~')"
    psvar[1]="$(spat ${cwd})"
}

_prompt_vcs_branch() {
    vcs_info
    psvar[2]="$vcs_info_msg_0_"
}

add-zsh-hook precmd _prompt_shorten_cwd
add-zsh-hook precmd _prompt_vcs_branch

PROMPT='%(?.%F{blue}%1v%f %F{magenta}❯%f .%F{red}%B%?%f%b %F{blue}%1v%f %F{magenta}❯%f )'
RPROMPT='%F{magenta}%2v%f'
