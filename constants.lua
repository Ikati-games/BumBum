local T = {}

T.menuBackgroundImage = "sprites/background/menu.png"
T.menuButtonHeight = display.contentHeight/10
T.menuButtonWidth = display.contentWidth*9/10
T.menuButtonInterval = 20
T.settingsButtonWidth = T.menuButtonHeight*2
T.levelSelectInterval = T.menuButtonHeight/2

T.minSwipeSize = 50

T.levelsAmount = {
	reach = 3,
}

return T