import XMonad
import XMonad.Config.Azerty
import XMonad.Util.EZConfig(additionalKeys)

main = xmonad $ azertyConfig
	{ 
	terminal    = "urxvt"
	, modMask     = mod4Mask
	, borderWidth = 3
	}
	`additionalKeys`
	[
	((0                     , 0x1008FF11), spawn "amixer set Master 2-"),
	((0                     , 0x1008FF13), spawn "amixer set Master 2+"),
	((0                     , 0x1008FF12), spawn "amixer set Master toggle")
	]
