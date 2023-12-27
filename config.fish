###
## Environment variables
###

set -x VISUAL  '/usr/bin/neovide --nofork'
set -x EDITOR  '/usr/bin/nvim'
set -x BROWSER '/usr/bin/firefox'

###
## Abbreviations
###

## tools
abbr --add e 'emacs'
abbr --add vv 'nvim'
abbr --add v 'neovide'
abbr --add l 'lf'
abbr --add +x 'chmod +x'
## package manager: pacman & yay
abbr --add pac 'pacman'
abbr --add pacss 'pacman -Ss'
abbr --add pacqs 'pacman -Qs'
abbr --add pacs 'sudo pacman -S'
abbr --add pacu 'sudo pacman -Syu'
abbr --add pacr 'sudo pacman -Rsn'
abbr --add yayss 'yay -Ss'
abbr --add yays 'yay -S'
abbr --add yayu 'yay -Su'
## systemd
abbr --add sc 'systemctl'
abbr --add sce 'sudo systemctl enable'
abbr --add scd 'sudo systemctl disable'
abbr --add scs 'sudo systemctl start'

###
## Aliases
###

alias mv 'mv -i'
alias cp 'cp -i'
alias top 'htop'
alias pgrep 'pgrep -ai'
alias :proxy 'proxychains -q'

###
## Functions
###

function fish_prompt
    # The prefix.
    if test $status = 0
        set -f prev_status '\e[2;32m✿\e[0m '
    else
        set -f prev_status (__fish_print_pipestatus '✗[' ']⤴ ' '|' '\e[91m' '\e[31m' $pipestatus)
    end
    echo -ens $prev_status '\e[1;2;33m' (prompt_pwd) '\e[0m' '\e[1;96m➜\e[0m '
end
