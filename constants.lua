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

T.minigames = {"reach", "catch", "boxes"}

T.minigamesPrice = {
	catch = 4,
	boxes = 8,
}

T.levelsAmount = {
	reach = 42,
	catch = 6,
	boxes = 9,
}

T.collectibles = {
	reach = {4, 8, 12, 14, 17, 21, 24, 26, 28, 31, 34, 39},
	catch = {},
	boxes = {5},
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
