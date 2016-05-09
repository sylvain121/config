session=${1:-xmonad}
setxkbmap fr

case $session in
	blizzard	) exec `WINEPREFIX=~/blizzard/ /usr/bin/wine ~/blizzard/drive_c/Program\ Files/Battle.net/Battle.net.exe`;;
	xmonad		) 
			xrdb -merge ~/.Xresources
			xsetroot -cursor_name left_ptr
			exec xmonad
			;;
	icewm		) exec icewm;;
	*		) 
			exec $1
			;;
esac
