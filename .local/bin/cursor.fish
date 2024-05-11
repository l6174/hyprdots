#!/usr/bin/env fish
function reopen_apps
    if pgrep walc
        killall -9 walc && $HOME/Applications/WALC-0.3.2.AppImage & disown
    end
    if pgrep webcord
        killall -9 webcord && $HOME/Applications/WebCord-4.1.1-x64.AppImage & disown
    end
    if pgrep -f telegram-desktop
        killall -9 telegram-desktop && ./tl.fish & disown
    end
end


function menu_reopen
    echo "1. Yes"
    echo "2. Nop"
end

set CURSORTHEME $(find /usr/share/icons -maxdepth 1 -type d | cut -d '/' -f 5 | sort | tail -n +2 | rofi -dmenu -i -p "Cursor theme" )

if test -z "$CURSORTHEME"; or test "$CURSORTHEME" = " "
    return 1
end

set -e -U CURSOR
set -e -U CURSORSIZE
set -Ux CURSORSIZE $(rofi -dmenu -p "Cursor Size" -theme-str 'listview {lines: 0;}')
set -Ux CURSOR $CURSORTHEME

set reopen $(menu_reopen | rofi -dmenu -p "Reopen apps?" -theme-str 'listview {lines: 0;}' | cut -d. -f1)

if test "$reopen" = 1
    reopen_apps
end

echo "[Icon Theme]"\n"Inherits=$CURSOR" >~/.icons/default/index.theme
