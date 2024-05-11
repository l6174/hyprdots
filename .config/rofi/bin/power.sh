#!/bin/sh

config="$HOME/.config/rofi/config/power.rasi"
script_dir="$(cd "$(dirname "$0")" >/dev/null 2>&1 && pwd)"
ddir="$HOME/.config/rofi/config"

shutdown=""
reboot=""
lock=""
suspend=""
logout=""

sh "$script_dir/accent.sh"

chosen="$(printf "%s\n%s\n%s\n%s\n%s\n" "$shutdown" "$reboot" "$lock" "$suspend" "$logout" | rofi -theme "$config" -p "$(uptime -p)" -dmenu -selected-row 2)"

rdialog () {
rofi -dmenu\
    -i\
    -no-fixed-num-lines\
    -p "Are You Sure? : "\
    -theme "$ddir/confirm.rasi"
}

show_msg() {
        rofi -theme "$ddir/askpass.rasi" -e "Options : yes / no / y / n"
}

case $chosen in
    $shutdown)
        ans=$(rdialog &)
        if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]]; then
            systemctl poweroff
        elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]]; then
            exit
        else
            show_msg
        fi
        ;;
    $reboot)
        ans=$(rdialog &)
        if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]]; then
            systemctl reboot
        elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]]; then
            exit
        else
            show_msg
        fi
        ;;
    $lock)
        loginctl lock-session
        ;;
    $suspend)
        ans=$(rdialog &)
        if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]]; then
                        playerctl pause
            systemctl suspend
        elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]]; then
            exit
        else
            show_msg
        fi
        ;;
    $logout)
        ans=$(rdialog &)
        if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]]; then
                        hyprctl dispatch exit
        elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]]; then
            exit
        else
            show_msg
        fi
        ;;
esac
