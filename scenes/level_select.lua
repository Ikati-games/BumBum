local scene_getter = require("scenes.menu_scene_getter")



function gotoLevel(minigameId, levelId)
	composer.gotoScene("scenes.level", {
		params = {
			minigameId = minigameId,
			levelId = levelId
		}
	})
end



function getLevels(params)
	local levels = {}
	for i = 1, C.levelsAmount[params.minigameId] do
		local levelId = i;
		table.insert(levels, {
			img = "sprites/button/button_sound.png",
			imgPressed = "sprites/button/button_music.png",
			func = function() gotoLevel(params.minigameId, levelId) end,
		})
	end
	return levels
end



return scene_getter(getLevels)