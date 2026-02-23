local WhiteListedUsers = {
    "connber1005",
    "MilesGamingOdyssey",
    "Angelshampaly1145",
    "ALEXTRUITT21",
    "1geko3",
    "mikael_tgg",
}

local toolbar = plugin:CreateToolbar("EX INC. | Tension DevTools")
local OpenGUIButton = toolbar:CreateButton(
    "EX INC. | Tension DevTools",
    "Use the Tension Developer Tools plugin"
)

OpenGUIButton.Click:Connect(function()
    local StudioService = game:GetService("StudioService")
    local Players = game:GetService("Players")

    local loggedInUserId = StudioService:GetUserId()

    local success, loggedInUserName = pcall(function()
        return Players:GetNameFromUserIdAsync(loggedInUserId)
    end)

    if success then
        print("Hello,", loggedInUserName)
    else
        warn("Failed to get username:", loggedInUserId)
    end
end)
