local T = {}

T.pixelSize = display.contentWidth/100

T.menuBackgroundImage = "sprites/background/menu.png"
T.menuButtonWidth = T.pixelSize*80
T.menuButtonHeight = T.pixelSize*16
T.menuButtonInterval = 20
T.settingsButtonWidth = T.menuButtonHeight*2
T.levelSelectInterval = T.menuButtonHeight/2

T.topPanelHeight = T.menuButtonHeight + T.pixelSize * 3
T.topPanelImageWidth = 100*T.pixelSize
T.topPanelImageHeight = 150*T.pixelSize

T.winOverlayImage = "sprites/background/win_screen.png"
T.winScreenWidth = 54*T.pixelSize
T.winScreenHeight = 60*T.pixelSize

T.confirmationOverlayImage = "sprites/background/confirmation_screen.png"
T.confirmationScreenWidth = 54*T.pixelSize
T.confirmationScreenHeight = 34*T.pixelSize

T.minSwipeSize = 25

T.levelsAmount = {
	reach = 20,
}

T.collectibles = {
	reach = {5, 9, 13, 19}
}
T.collectibleCollectedImage = "sprites/change/change_f1.png"
T.collectibleUncollectedImage = "sprites/change/change_uncollected.png"

T.sounds = {
	buttonPress = "sounds/button_press.wav",
	buttonRelease = "sounds/button_release.wav",
}

return T