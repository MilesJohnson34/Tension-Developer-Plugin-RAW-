local WhiteListedUsers = {
  "connber1005",
	"MilesGamingOdyssey",
	"Angelshampaly1145",
	"ALEXTRUITT21",
	"1geko3",
  "mikael_tgg",
}

local toolbar = plugin:CreateToolbar("EX INC. | Tension DevTools")
local OpenGUIButton = toolbar:CreateButton("EX INC. | Tension DevTools", "Use the Tension Developer Tools plugin, only for developers of the hit Roblox game called Tension by EX Inc. We are exl.")

OpenGUIButton.Click:Connect(function()
    local StudioService = game:GetService("StudioService")
local Players = game:GetService("Players")

local loggedInUserId = StudioService:GetUserId()
local loggedInUserName = Players:GetNameFromUserIdAsync(loggedInUserId)
print("Hello,", loggedInUserName)
  end)
