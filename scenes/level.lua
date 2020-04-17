local composer = require("composer")
local tiled = require "libs.ponytiled"



local scene = composer.newScene()
scene:addEventListener("create", function(event)
	local path = "levels/"..event.params.minigameId
	local package_path = path:gsub("/", ".").."."..event.params.levelId
	local mapData = require(package_path)
	local map = tiled.new(mapData, path)
	map.xScale = display.contentWidth / map.width
	map.yScale = map.xScale
	map.x = display.contentCenterX - map.width * map.xScale / 2
	map.y = display.contentCenterY - map.height * map.yScale / 2
end)
return scene
