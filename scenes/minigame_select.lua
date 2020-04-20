local scene_getter = require("scenes.menu_scene_getter")



function gotoLevelSelection(id)
	composer.gotoScene("scenes.level_select", {
		params = {
			minigameId = id
		}
	})
end



function getMinigames(params)
	minigames = {}
	for minigame in pairs(C.levelsAmount) do
		local data = require("minigames."..minigame)
		table.insert(minigames, {
			img = data.img,
			imgPressed = data.imgPressed,
			func = function() gotoLevelSelection(minigame) end,
		})
	end
	return minigames
end



scene = scene_getter(getMinigames)
scene.previousScene = "scenes.main_menu"
return scene