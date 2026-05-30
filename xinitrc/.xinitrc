[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
lxpolkit &
~/.fehbg &
udiskie &
pywal16 &
picom &
dwmblocks &
dunst &

xsetroot -cursor_name left_ptr

exec dbus-run-session dwm
