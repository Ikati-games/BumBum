local composer = require("composer")



-- The scene

local scene = composer.newScene()
scene:addEventListener("create", function(event)
	display.newText(scene.view, string.format("Level %d-%d", event.params.minigameId, event.params.levelId), display.contentCenterX, 100, native.systemFont, 44)
end)
return scene
