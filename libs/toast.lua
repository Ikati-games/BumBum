-- Original by KrDPNsk
-- https://github.com/KrDPNsk/simple_toast

local toast = nil
local toastFont = native.systemFont
local toastFontSize = 14
local duration, objX, objY

local function showToast(label, duration, gravity)
	local function removeToast()
		if toast ~= nil then
			if toast.label ~= nil then
				toast.label:removeSelf()
				toast.label = nil
			end

			toast:removeSelf()
			toast = nil
		end
	end

	removeToast()


	if not duration then
		duration = 3000
	elseif duration == "short" then
		duration = 1500
	elseif duration == "normal" then
		duration = 3000
	elseif duration == "long" then
		duration = 5000
	end

	if not gravity then
		objX = display.contentCenterX
		objY = display.viewableContentHeight - 36
	elseif gravity == "center" then
		objX = display.contentCenterX
		objY = display.contentCenterY
	elseif gravity == "top" then
		objX = display.contentCenterX
		objY = 36
	elseif gravity == "bottom" then
		objX = display.contentCenterX
		objY = display.viewableContentHeight - 36
	end

	toast = display.newRoundedRect(objX, objY, 32, 32, 32)
	toast:setFillColor(0.5)
	toast.alpha = 0.75
	toast.label = display.newText(label, objX, objY, toastFont, toastFontSize)
	toast.width = toast.label.contentWidth + 32
	toast.height = toast.label.contentHeight + 10

	timer.performWithDelay(duration, removeToast)

	return true
end

return {show = showToast}