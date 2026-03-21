# #!/bin/bash
# TO CONNECT TO WIFI USING DMENU | ROFI WHICH IS CONNECTED BEFORE
# bssid=$(nmcli device wifi list | sed -n '1!P'| cut -b 9- | dmenu -p "Wifi" -l 10 | awk '{print $1}')

dir="$HOME/.config/rofi"
theme='style-1'

# Get unique SSIDs only
ssid=$(nmcli -t -f SSID device wifi list | sed '/^$/d' | sort -u | rofi -dmenu -theme ${dir}/${theme}.rasi -p " " -lines 10)
[ -z "$ssid" ] && exit 1

# Ask for password
pass=$(rofi -dmenu -theme-str 'textbox-prompt-colon {str: "";}' -theme ${dir}/${theme}.rasi -p "Enter password")
[ -z "$pass" ] && notify-send "🔑 Password not entered" && exit 1

# Connect by SSID
nmcli device wifi connect "$ssid" password "$pass"

# Notify user
notify-send "📶 Connected to Wi-Fi: $ssid"

