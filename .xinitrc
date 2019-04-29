# Set wallpaper
#feh --bg-scale ~/.wallpapers/wallpapers/Etc/MG0385.jpg
#feh --bg-scale ~/.wallpapers/wallpapers/Spacescapes/Space\ Exploration\ 141.jpg
#feh --bg-scale /home/jcrcx/.wallpapers/wallpapers/Spacescapes/blackhole.jpe
#feh --bg-scale ~/.wallpapers/wallpapers/Vibrant/third_eye.jpg
#feh --bg-scale ~/.wallpapers/wallpapers/Art/art_79.png
feh --bg-scale /home/jcrcx/.wallpapers/wallpapers/Landscapes/1454722946236.jpg

# Set keyboard layout
setxkbmap latam

# DWM
make -C /home/jcrcx/dwm
~/.dwm_status &
exec /home/jcrcx/dwm/dwm
