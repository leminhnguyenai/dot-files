set -g -x fish_greeting ''

function fish_prompt
    string join '' -- (set_color green) '[' $USER ']' (set_color blue) (prompt_pwd) (set_color normal) '> '
end

fish_add_path /bin
fish_add_path /opt/homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /usr/bin
fish_add_path /usr/local/bin
fish_add_path go/bin

starship init fish | source

function dotfiles
    /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME $argv
end

function dotfiles_add
    /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME add ~/.config
    /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME add ~/.tmux.conf
    /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME add ~/.zshrc
end

function dotfiles_commit
    /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME commit -m "Update config"
end

function dotfiles_push
    /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME push --all origin 
end

starship init fish | source

# Created by `pipx` on 2025-04-02 06:26:45
set PATH $PATH /Users/leminhnguyen/.local/bin
