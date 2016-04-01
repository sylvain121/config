import XMonad
import XMonad.Config.Azerty

main = xmonad azertyConfig
	{ terminal    = "urxvt"
	, modMask     = mod4Mask
	, borderWidth = 3
	}
