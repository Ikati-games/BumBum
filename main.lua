-- load other files

composer = require("composer")
widget = require("widget")
C = require("constants")



-- preserve pixels without blur

display.setDefault("magTextureFilter", "nearest")
display.setDefault("minTextureFilter", "nearest")



-- load sounds

buttonPressSound = audio.loadSound(C.buttonPressSound)
buttonReleaseSound = audio.loadSound(C.buttonReleaseSound)



-- default settings on first run

if not system.getPreference("app", "hasAppRunBefore", "boolean") then
	system.setPreferences( "app", {
		hasAppRunBefore = true,
		sound = true,
		music = true,
		points = 0,
	})
end



-- back button

local function goBack()
	local previousSceneName = composer.getScene(composer.getSceneName("current")).previousScene

	if previousSceneName then
		composer.removeScene(composer.getSceneName("current"))
		composer.gotoScene(previousSceneName)
	end
end

backButton = widget.newButton({
	top = C.pixelSize,
	left = C.pixelSize,
	width = C.settingsButtonWidth,
	height = C.menuButtonHeight,
	defaultFile = "sprites/button/button_back.png",
	overFile = "sprites/button/button_back_pressed.png",
	onPress = function() 
		if (system.getPreference("app", "sound", "boolean")) then
			audio.play(buttonPressSound)
		end
	end,
	onRelease = function()
		if (system.getPreference("app", "sound", "boolean")) then
			audio.play(buttonReleaseSound)
		end
		goBack()
	end
})

Runtime:addEventListener("key", function(event) 
	if (event.keyName == "back" and event.phase == "up") then
		goBack()
		return true
	end
end)



-- starting

composer.gotoScene("scenes.main_menu")