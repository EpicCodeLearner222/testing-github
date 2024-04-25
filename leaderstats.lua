-- Variables
local players = game.Players
local dss = game:GetService("DataStoreService")
local dataStore = dss:GetDataStore("MainGameData", 1)

players.PlayerAdded:Connect(function(plr)
local leaderstats = Instance.new("Folder", plr)
leaderstats.Name = "leaderstats"

local cash = Instance.new("NumberValue", leaderstats)
cash.Name = "Cash"
cash.Value = 0

        local settings = Instance.new("Folder", plr)
        settings.Name = "Settings"

        local music = Instance.new("BoolValue", settings)
        music.Name = "Music"
        music.Value = false

local data
        local data2
    local success, fail = pcall(function()
data = dataStore:GetAsync(plr.UserId.."-data")
                data2 = dataStore:GetAsync(plr.UserId.."-music")
      end)
    if success then
      print("Got data successfully!")
      cash.Value = data
            music.Value = data2
    else
warn("Failed to get data")
end)
