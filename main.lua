-- load other files

composer = require("composer")
widget = require("widget")
C = require("constants")



-- preserve pixels without blur

display.setDefault("magTextureFilter", "nearest")
display.setDefault("minTextureFilter", "nearest")



-- default settings on first run

if not system.getPreference("app", "hasAppRunBefore", "boolean") then
	system.setPreferences("app", {
		hasAppRunBefore = true,
		sound = true,
		music = true,
	})
end



-- sounds

local sounds = {}
function playSound(sound)
	if not sounds[sound] then
		if type(C.sounds[sound]) == "table" then
			sounds[sound] = {}
			for i, soundPath in ipairs(C.sounds[sound]) do
				sounds[sound][i] = audio.loadSound(soundPath)
			end
		else
			sounds[sound] = audio.loadSound(C.sounds[sound])
		end
	end

	if (system.getPreference("app", "sound", "boolean")) then
		local soundToPlay = sounds[sound]
		if type(soundToPlay) == "table" then
			soundToPlay = soundToPlay[math.random(#soundToPlay)]
		end
		audio.play(soundToPlay)
	end
end

local oldButtonCreator = widget.newButton
widget.newButton = function(params)
	local button = oldButtonCreator(params)

	button.onPress = params.onPress
	button._view._onPress = function()
		playSound("buttonPress")
		if button.onPress then button.onPress() end
	end

	button.onRelease = params.onRelease
	button._view._onRelease = function()
		playSound("buttonRelease")
		if button.onRelease then button.onRelease() end
	end

	return button
end



-- back button

local function goBack()
	local previousSceneName = composer.getScene(composer.getSceneName("current")).previousScene

	if previousSceneName then
		composer.removeScene(composer.getSceneName("current"))
		composer.gotoScene(previousSceneName)
	end
end

backButton = widget.newButton({
	top = C.pixelSize,
	left = 3*C.pixelSize,
	width = C.settingsButtonWidth,
	height = C.menuButtonHeight,
	defaultFile = "sprites/button/button_back.png",
	overFile = "sprites/button/button_back_pressed.png",
	onRelease = function()
		goBack()
	end
})

Runtime:addEventListener("key", function(event) 
	if (event.keyName == "back" and event.phase == "up") then
		goBack()
		return true
	end
end)



-- drawing functions

function drawTopPanel(view) 
	local topPanel = display.newImageRect("sprites/background/top_panel.png", C.topPanelImageWidth, C.topPanelImageHeight)
	topPanel.x = display.contentCenterX
	topPanel.y = -C.topPanelImageHeight / 2 + C.topPanelHeight
	view:insert(topPanel)
end

function drawBackground(view)
	local sky = display.newRect(
		view,
		display.contentCenterX,
		display.contentCenterY,
		display.contentWidth,
		display.contentHeight
	)
	sky:setFillColor(0, 1, 1) -- the most background color

	local grassBottom = display.newRect(
		view,
		display.contentCenterX,
		0,
		display.contentWidth,
		C.pixelSize*40 -- height = 40
	)
	grassBottom.y = display.contentHeight - grassBottom.height / 2 -- stick to bottom
	grassBottom:setFillColor(0.2, 1, 0.4)

	local grassTop = display.newRect(
		view,
		display.contentCenterX,
		0,
		display.contentWidth,
		C.pixelSize*13 -- height = 13
	)
	grassTop.y = grassBottom.y - grassBottom.height / 2 - grassTop.height / 2 -- stick to top of grassBottom
	grassTop:setFillColor(0, 1, 0)
end



-- other helper functions

function getRandomLevel()
	local minigames = {}
	for minigame in pairs(C.levelsAmount) do
		local lastLevelOpened = system.getPreference("app", "lastLevelOpened_"..minigame, "number") or 1
		local data = require("minigames."..minigame)
		if lastLevelOpened <= C.levelsAmount[minigame] or data.getRandomMapData then
			minigames[#minigames + 1] = minigame
		end
	end
	for _, v in pairs(minigames) do print(v) end
	if #minigames > 0 then
		local minigameId = minigames[math.random(#minigames)]
		local levelId = system.getPreference("app", "lastLevelOpened_"..minigameId, "number") or 1
		return minigameId, levelId
	else
		return false
	end
end



-- starting

composer.gotoScene("scenes.main_menu")