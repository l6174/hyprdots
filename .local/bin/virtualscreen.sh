RESOLUTION=1357x943
POSITION=-1366x0
SCALE=1
COMMAND=$1
OUTPUT=$(hyprctl monitors | grep HEADLESS | tail -n1 | awk \{print\ \$2\})

if [ "${COMMAND}" = "create" ]; then
  hyprctl output create headless
  hyprctl keyword monitor "${OUTPUT}","${RESOLUTION}","${POSITION}","${SCALE}"
elif [ "${COMMAND}" = "remove" ]; then
  hyprctl output remove "${OUTPUT}"
else
  echo "Use [virtual-screen.sh create] or [virtual-screen.sh remove]"
fi
