
## debian

## install plugin

sudo apt-get install build-essential pkg-config libvlccore-dev libvlc-dev git
cd /tmp
git clone https://github.com/nurupo/vlc-pause-click-plugin
cd vlc-pause-click-plugin
git checkout \
  "$(git tag --list | grep -P '^(\d+).(\d+).(\d+)$' | \
    sed "s/\./ /g" | \
    sort -snk3,3 | sort -snk2,2 | sort -snk1,1 | \
    tail -n 1 | \
    sed 's/ /\./g')"
make
sudo make install
cd /tmp
rm -rf vlc-pause-click-plugin

## add to config

echo "

control=pause_click
video-filter=pause_click

[pause_click] # Pause/Play video on mouse click

# Pause/play mouse button (integer)
#pause-click-mouse-button=1

# Show pause/play icon animations (boolean)
#pause-click-display-icon=1

# Custom double click interval (milliseconds) (integer)
#pause-click-double-click-delay=300

# Enable the custom double click interval (boolean)
#pause-click-enable-double-click-delay=0

# Prevent pause/play from triggering on double click* (boolean)
#pause-click-ignore-double-click=0

# Disable fullscreen toggle on double click (boolean)
#pause-click-disable-fs-toggle=0

# Assign fullscreen toggle to (integer)
#pause-click-fs-toggle-mouse-button=0

# Disable context menu toggle on right click (boolean)
#pause-click-disable-context-menu-toggle=0

# Assign context menu toggle to (integer)
#pause-click-context-menu-toggle-mouse-button=0

"  >> ~/.config/vlc/vlcrc



