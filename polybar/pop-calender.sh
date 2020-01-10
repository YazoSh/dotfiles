BAR_HEIGHT=25  # polybar height
BORDER_SIZE=0  # border size from your wm settings
YAD_WIDTH=422  # 222 is minimum possible value
YAD_HEIGHT=150 # 193 is minimum possible value
DATE=" $(date +"%A, %B %e")"

case "$1" in --popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    # X
    # sets pos to right
        : $((pos_x = WIDTH - 1))
    # Y
        : $((pos_y = BAR_HEIGHT + BORDER_SIZE))

    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons \
        --width=$YAD_WIDTH --height=$YAD_HEIGHT --posx=$pos_x --posy=$pos_y \
        --title="yad-calendar" --borders=0 >/dev/null &
    ;;
*)
    echo "$DATE"
    ;;
esac
