
sudo apt install i3 xautolock

## for sound controls (used this to make usb-c earphones work)
## https://www.reddit.com/r/i3wm/comments/5yonex/enabling_usb_headset_in_i3/
sudo apt install pavucontrol-qt

## https://superuser.com/questions/389397/ubuntu-and-privilege-elevation-in-i3wm
sudo apt-get install lxpolkit

echo "

case "$DESKTOP_SESSION" in
    i3)
        export $(gnome-keyring-daemon --start)
        ;;
    sway)
        export $(gnome-keyring-daemon --start)
        ;;
esac

" >> ~/.profile

