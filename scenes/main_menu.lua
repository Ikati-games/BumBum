local scene_getter = require("scenes.menu_scene_getter")



function continueGame()

end



local buttons = {
	{
		img = "sprites/button/button_play.png",
		imgPressed = "sprites/button/button_play_pressed.png",
		func = continueGame,
	},
	{
		img = "sprites/button/button_levels.png",
		imgPressed = "sprites/button/button_levels_pressed.png",
		func = function() composer.gotoScene("scenes.minigame_select") end,
	},
	{
		img = "sprites/button/button_settings.png",
		imgPressed = "sprites/button/button_settings_pressed.png",
		func = function() composer.gotoScene("scenes.settings") end,
	},
}



return scene_getter(function() return buttons end)