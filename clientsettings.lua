-- Variables

local plr = game.Players.LocalPlayer
local settings = plr:WaitForChild("Settings")

-- Music Settings Variables & Functions
local music = settings:FindFirstChild("Music")

music.Changed:Connect(function()
    if music.Value == true then
      workspace.Sound.Enabled = false
    else
      workspace.Sound.Enabled = true
    end
  end)
