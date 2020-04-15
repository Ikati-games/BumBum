local T = {}

T.menuBackgroundImage = "sprites/background/menu.png"

T.menuButtonHeight = display.contentHeight/10

T.menuButtonOptions = function(curY, text, func)
	return {
		x = display.contentCenterX, 
		y = curY,
		width = display.contentWidth*9/10,
		height = T.menuButtonHeight,
		label = text,
		defaultFile = "sprites/button/buttonlong.png",
		overFile = "sprites/button/buttonlong_pressed.png",
		labelColor = {default = {0, 0, 1}},
		font = "fonts/joystix.monospace.ttf",
		fontSize = 26,
		onRelease = func,
	}
end

T.menuButtonInterval = 20

return T