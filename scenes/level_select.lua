local C = require("constants")
local composer = require("composer")
local scene_getter = require("scenes.menu_scene_getter")



function gotoLevel(minigameId, levelId)
	composer.gotoScene("scenes.level", {
		params = {
			minigameId = minigameId,
			levelId = levelId
		}
	})
end



local minigamesLevels = {
	[1] = {
		{
			img = "sprites/button/button_reach.png",
			imgPressed = "sprites/button/button_reach_pressed.png",
			func = function() gotoLevel(1, 1) end,
		},
		{
			img = "sprites/button/button_reach.png",
			imgPressed = "sprites/button/button_reach_pressed.png",
			func = function() gotoLevel(1, 2) end,
		},
	},
	[2] = {
		{
			img = "sprites/button/button_reach.png",
			imgPressed = "sprites/button/button_reach_pressed.png",
			func = function() gotoLevel(2, 1) end,
		},
		{
			img = "sprites/button/button_reach.png",
			imgPressed = "sprites/button/button_reach_pressed.png",
			func = function() gotoLevel(2, 2) end,
		},
	}
}

function getMinigames(params)
	return minigamesLevels[params.minigameId]
end



return scene_getter(getMinigames, 10)