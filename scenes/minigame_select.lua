local C = require("constants")
local composer = require("composer")
local lfs = require("lfs")
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
	lfs.chdir(system.pathForFile("minigames", system.ResourcesDirectory))
	for folder in lfs.dir(lfs.currentdir()) do
		if lfs.attributes(folder, "mode") == "directory" and folder ~= "." and folder ~= ".." then
			local data = require("minigames."..folder..".data")
			table.insert(minigames, {
				img = data.img,
				imgPressed = data.imgPressed,
				func = function() gotoLevelSelection(folder) end,
			})
		end
	end
	return minigames
end



return scene_getter(getMinigames)