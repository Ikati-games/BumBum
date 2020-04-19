local T = {}

T.pixelSize = display.contentWidth/100

T.menuBackgroundImage = "sprites/background/menu.png"
T.menuButtonWidth = T.pixelSize*80
T.menuButtonHeight = T.pixelSize*16
T.menuButtonInterval = 20
T.settingsButtonWidth = T.menuButtonHeight*2
T.levelSelectInterval = T.menuButtonHeight/2

T.winOverlayImage = "sprites/background/win_screen.png"
T.winScreenWidth = 54*T.pixelSize
T.winScreenHeight = 60*T.pixelSize

T.minSwipeSize = 50

T.levelsAmount = {
	reach = 5,
}

T.buttonPressSound = "sounds/button_press.wav"
T.buttonReleaseSound = "sounds/button_release.wav"

return T