-- load other files

composer = require("composer")
widget = require("widget")
C = require("constants")
appodeal = require("plugin.appodeal")
toast = require("libs.toast")



-- init ad plugin

local function adListener(event)
	if event.phase == "init" then
		appodeal.load("rewardedVideo")
	elseif event.phase == "failed" then
		toast.show("Sorry, ad is not available right now")
	elseif event.phase == "closed" then
		if event.type == "rewardedVideo" and event.data ~= nil and event.data.finished == true then
			appodeal.afterReward()
		end
	end
end

appodeal.init(adListener, {appKey = "06d42448e1660f48d3a5c5d4d9f7a6395f91d3a59a03fbfa"})



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

function drawCollectiblesAmount(view)
	local collectibleImage = display.newImageRect(view, C.collectibleCollectedImage, C.menuButtonHeight, C.menuButtonHeight)
	collectibleImage.x = display.contentWidth - collectibleImage.width / 2
	collectibleImage.y = C.topPanelHeight / 2

	local amount = system.getPreference("app", "points", "number") or 0
	local currentX = collectibleImage.x - collectibleImage.width / 2 - C.pixelSize

	if (amount > 0) then
		while amount > 0 do
			digit = amount % 10
			
			local digitImage = display.newImageRect(view, "sprites/digits/"..digit..".png", C.menuButtonHeight, C.menuButtonHeight)
			digitImage.x = currentX
			digitImage.y = collectibleImage.y

			amount = math.floor(amount / 10)
			currentX = currentX - C.pixelSize * 7
			if digit == 0 or digit == 4 then -- yep, hardcoded digit image width
				currentX = currentX - C.pixelSize
			end
		end
	else
		local digitImage = display.newImageRect(view, "sprites/digits/0.png", C.menuButtonHeight, C.menuButtonHeight)
		digitImage.x = currentX
		digitImage.y = collectibleImage.y
	end
end

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
		if lastLevelOpened <= C.levelsAmount[minigame] then
			minigames[#minigames + 1] = minigame
		end
	end
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