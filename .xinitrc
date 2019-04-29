# Set wallpaper
feh --bg-scale /patch/to/dir/file

# Set keyboard layout
setxkbmap latam

# DWM
make -C /home/jcrcx/dwm
~/.dwm_status &
exec /home/jcrcx/dwm/dwm
