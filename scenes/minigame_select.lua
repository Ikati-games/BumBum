local scene_getter = require("scenes.menu_scene_getter")



local function gotoLevelSelection(id)
	composer.gotoScene("scenes.level_select", {
		params = {
			minigameId = id
		}
	})
end



local function getMinigames(params)
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



local scene = scene_getter(getMinigames)
scene:addEventListener("show", function(event)
	-- if there is only one minigame, skip this scene
	
	local theOnlyMinigame = nil
	for minigame in pairs(C.levelsAmount) do
		if theOnlyMinigame ~= nil then return end
		theOnlyMinigame = minigame
	end

	local previousScene = composer.getSceneName("previous")
	if previousScene == "scenes.level_select" then
		composer.gotoScene("scenes.main_menu")
	elseif previousScene == "scenes.main_menu" then
		composer.gotoScene("scenes.level_select", {
			params = {
				minigameId = theOnlyMinigame
			}
		})
	end
end)
scene.previousScene = "scenes.main_menu"
return scene