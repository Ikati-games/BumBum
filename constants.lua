local T = {}

T.menuBackgroundImage = "sprites/background/menu.png"

T.menuButtonHeight = display.contentHeight/10

T.menuButtonOptions = function(curY, img, imgPresses, func)
	return {
		x = display.contentCenterX, 
		y = curY,
		width = display.contentWidth*9/10,
		height = T.menuButtonHeight,
		defaultFile = img,
		overFile = imgPresses,
		onRelease = func,
	}
end

T.menuButtonInterval = 20

return T