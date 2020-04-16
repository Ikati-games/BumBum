local C = require("constants")
local composer = require("composer")
local lfs = require("lfs")
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
	local i = 1
	lfs.chdir(system.pathForFile("levels/"..params.minigameId, system.ResourcesDirectory))
	while lfs.attributes(i..".lua", "mode") == "file" do
		local levelId = i;
		table.insert(levels, {
			img = "sprites/button/button_sound.png",
			imgPressed = "sprites/button/button_music.png",
			func = function() gotoLevel(params.minigameId, levelId) end,
		})
		i = i + 1
	end
	return levels
end



return scene_getter(getLevels)