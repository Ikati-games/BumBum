display.setDefault("magTextureFilter", "nearest")
display.setDefault("minTextureFilter", "nearest")

composer = require("composer")
C = require("constants")
widget = require("widget")

buttonPressSound = audio.loadSound(C.buttonPressSound)
buttonReleaseSound = audio.loadSound(C.buttonReleaseSound)

if not system.getPreference("app", "hasAppRunBefore", "boolean") then
	system.setPreferences( "app", {
		hasAppRunBefore = true,
		sound = true,
		music = true,
	})
end

composer.gotoScene("scenes.main_menu")