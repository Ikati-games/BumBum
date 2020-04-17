function setSetting(settingName, value)
	local s = {}
	s[settingName] = value
	system.setPreferences("app", s)
end



local buttonImages = {
	on = "sprites/button/button_on.png",
	onPressed = "sprites/button/button_on_pressed.png",
	off = "sprites/button/button_off.png",
	offPressed = "sprites/button/button_off_pressed.png",
}



local settings = {
	{
		img = "sprites/button/button_music.png",
		settingName = "music",
		default = true,
	},
	{
		img = "sprites/button/button_sound.png",
		settingName = "sound",
		default = true,
	},
}



local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local background = display.newImageRect(scene.view, C.menuBackgroundImage, display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local menuHeight = #settings * C.menuButtonHeight + (#settings - 1) * C.menuButtonInterval
	local firstButtonY = (display.contentHeight - menuHeight) / 2
	local currentY = C.menuButtonHeight / 2 + firstButtonY
	for i = 1, #settings do
		local icon = display.newImageRect(scene.view, settings[i].img, C.menuButtonHeight, C.menuButtonHeight)
		icon.x = display.contentWidth / 2 - C.settingsButtonWidth / 2 - C.menuButtonInterval / 2
		icon.y = currentY

		local buttons = {}
		local settingValue = system.getPreference("app", settings[i].settingName, "boolean")

		-- true means that button will enable setting and currently it is disabled
		buttons[true] = widget.newButton({
			x = icon.x + icon.width / 2 + C.settingsButtonWidth / 2 + C.menuButtonInterval, 
			y = currentY,
			width = C.settingsButtonWidth,
			height = C.menuButtonHeight,
			defaultFile = buttonImages.off,
			overFile = buttonImages.offPressed,
		})
		scene.view:insert(buttons[true])

		-- false means that button will disable setting and currently it is enabled
		buttons[false] = widget.newButton({
			x = icon.x + icon.width / 2 + C.settingsButtonWidth / 2 + C.menuButtonInterval, 
			y = currentY,
			width = C.settingsButtonWidth,
			height = C.menuButtonHeight,
			defaultFile = buttonImages.on,
			overFile = buttonImages.onPressed,
		})
		scene.view:insert(buttons[false])

		-- add click handlers
		buttons[true]._view._onRelease = function()
			setSetting(settings[i].settingName, true)
			buttons[true].isVisible = false
			buttons[false].isVisible = true
		end
		buttons[false]._view._onRelease = function()
			setSetting(settings[i].settingName, false)
			buttons[true].isVisible = true
			buttons[false].isVisible = false
		end

		-- if we could not get preference, set its default value
		if (settingValue == nil) then
			setSetting(settings[i].settingName, settings[i].default)
			settingValue = settings[i].default
		end

		-- hide button which (enables, if already enabled / disables, if already disabled)
		buttons[settingValue].isVisible = false

    	currentY = currentY + C.menuButtonHeight + C.menuButtonInterval
    end
end)
return scene