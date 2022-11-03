For all:

Terminator:
 
 .terminator-xdispres.sh stays in ~
 replace ~/.config/terminator folder if ever cleared by update, etc.
 make ctl+alt+m shortcut point to .terminator-xdispres.sh script

dispres.sh for gnome-terminal:

 gnome-profiles.dconf can be loaded with 'dconf load /org/gnome/terminal/profiles:/ < gnome-profile.dconf',
 or the profiles can be created from scratch. Either way, the profile dconf keys should be checked, and
 edited in the script if neccessary.

For Ubuntu:

 .xdispres.sh stays in ~ (or wherever, change Exec= in .xdispres.desktop to match)
 .xdispres.desktop goes in ~/.config/autostart/
 Reboot!

For Kali:

 xdispres.sh goes in /usr/bin
 sudo ln -s /usr/bin/xdispres.sh /usr/bin/xdispres
 xdispres.desktop goes in /usr/share/applications/
 set as a startup application in tweaks
 Reboot!

For RHEL 9:

 xdispres.sh goes in /usr/local/sbin/
 sudo ln -s /usr/local/sbin/xdispres.sh /usr/bin/xdispres
 sudo chmod 755 /usr/bin/xdispres
 set ctl+alt+t shortcut to run command 'xdispres'
 #put very-last.service in /etc/systemd/system/
 #reboot!

For openSUSE Leap:

 Identical to RHEL 9 
