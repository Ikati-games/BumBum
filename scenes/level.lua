local composer = require("composer")
local tiled = require "com.ponywolf.ponytiled"



local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local mapData = require("levels."..event.params.minigameId.."."..event.params.levelId)
	local map = tiled.new(mapData)
	map.xScale = display.contentWidth / map.width
	map.yScale = map.xScale
	map.x = display.contentCenterX - map.width * map.xScale / 2
	map.y = display.contentCenterY - map.height * map.yScale / 2
end)
return scene
