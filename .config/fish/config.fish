fish_add_path --path $HOME/.local/bin
fish_add_path --path $HOME/bin
starship init fish | source
zoxide init --cmd cd fish | source
set -x BAT_THEME Catppuccin-mocha
set -x EDITOR nano
set -x fish_greeting ""
if status is-interactive
    # Commands to run in interactive sessions can go here
    # neofetch --ascii radioactive.txt --ascii_colors 2 1
    # neofetch
    nitch
end
if status --is-login    
    
end
fish_add_path /home/llawliet/.spicetify
