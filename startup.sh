if [ "$DESKTOP_SESSION" = "bspwm" ] 
then
    echo "BSPWM Detected, continuing settings"
    echo ""
    echo "Enabling sxhkd"
sxhkd &
fi

