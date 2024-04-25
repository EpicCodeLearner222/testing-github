local partsFolder = workspace:GetDescendants()

for i,v in pairs(partsFolder) do
if v.Name == "RainbowPart" or v:GetAttribute("Rainbow", true) then
    while true do
      v.BrickColor = BrickColor.random()
      wait(1)
    end
end
