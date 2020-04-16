local C = require("constants")
local composer = require("composer")
local scene_getter = require("scenes.menu_scene_getter")



function gotoLevelSelection(id)
	print(id)
	composer.gotoScene("scenes.level_select", {
		params = {
			minigameId = id
		}
	})
end



local minigames = {
	{
		img = "sprites/button/button_reach.png",
		imgPressed = "sprites/button/button_reach_pressed.png",
		func = function() gotoLevelSelection(1) end,
	},
	{
		img = "sprites/button/button_reach.png",
		imgPressed = "sprites/button/button_reach_pressed.png",
		func = function() gotoLevelSelection(2) end,
	},
}

local menuHeight = #minigames * C.menuButtonHeight + (#minigames - 1) * C.menuButtonInterval
local firstButtonY = (display.contentHeight - menuHeight) / 2

return scene_getter(function() return minigames end, firstButtonY)