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
T.loseOverlayImage = "sprites/background/lose_screen.png"
T.winScreenWidth = 54*T.pixelSize
T.winScreenHeight = 60*T.pixelSize

T.confirmationOverlayImage = "sprites/background/confirmation_screen.png"
T.confirmationScreenWidth = 54*T.pixelSize
T.confirmationScreenHeight = 34*T.pixelSize

T.minSwipeSize = 25

T.levelsAmount = {
	catch = 6,
	reach = 30,
}

T.collectibles = {
	catch = {},
	reach = {5, 9, 13, 18, 19, 25, 27, 28}
}
T.collectibleCollectedImage = "sprites/change/change_f1.png"
T.collectibleUncollectedImage = "sprites/change/change_uncollected.png"



T.sounds = {
	buttonPress = "sounds/button_press.wav",
	buttonRelease = "sounds/button_release.wav",

	step = "sounds/step.wav",
	trap = "sounds/trap.wav",
	collect = "sounds/collect.wav",
	janitor = {
		"sounds/janitor1.wav",
		"sounds/janitor2.wav",
		"sounds/janitor3.wav",
		"sounds/janitor4.wav",
		"sounds/janitor5.wav",
		"sounds/janitor6.wav",
	},
	reach_win = "sounds/trash.wav",
	platePress = "sounds/plate_press.wav",
	plateRelease = "sounds/plate_unpress.wav",
}



return T
