-- Variables
local players = game.Players

players.PlayerAdded:Connect(function(plr)
local leaderstats = Instance.new("Folder", plr)
leaderstats.Name = "leaderstats"

local cash = Instance.new("NumberValue", leaderstats)
cash.Name = "Cash"
cash.Value = 0


end)
