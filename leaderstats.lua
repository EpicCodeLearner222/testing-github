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

local data
    local success, fail = pcall(function()
data = dataStore:GetAsync(plr.UserId.."-data")
      end)
    if success then
      print("Got data successfully!")
      cash.Value = data
    else
warn("Failed to get data")
end)
