#!/bin/bash
# A simple script to set the default gnome-terminal font size based on the current screen 
# resolution. (Maybe restructure the if/then/else to include more resolutions later...)

# Export display resolution for scripting based on system resolution.
export DISPLAY_RESOLUTION=$(xrandr --current | grep '*' | uniq | awk '{print $1}')

#Set the default profile for 4k resolution.
if [[ "$DISPLAY_RESOLUTION" == "3840x2160" ]]; then
    gsettings set org.gnome.Terminal.ProfilesList default 'c4d7bc24-975f-47dc-a6a8-053bad0c7c27'
    logger Default gnome-terminal profile changed to 4K.
#  echo Resolution is 4K.  #For testing - quotes removed.
else
#Set the default profile for non 4K resolution.
    gsettings set org.gnome.Terminal.ProfilesList default 'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'
    logger Default gnome-terminal profile changed to 'l080p or lower.'
#  echo Resolution is $DISPLAY_RESOLUTION.  #For testing - quotes removed.
fi
