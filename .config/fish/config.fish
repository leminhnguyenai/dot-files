set -g -x fish_greeting ''

function fish_prompt
    string join '' -- (set_color green) '[' $USER ']' (set_color blue) (prompt_pwd) (set_color normal) '> '
end

fish_add_path /bin
fish_add_path /opt/homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /usr/bin
fish_add_path /usr/local/bin

starship init fish | source
function config
    if [ $argv = "add" ] 
        /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME add ~/.config
        /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME add ~/.tmux.conf
        /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME add ~/.zshrc
    else
        /usr/bin/git --git-dir=$HOME/dot-files/ --work-tree=$HOME $argv
    end
end

starship init fish | source
