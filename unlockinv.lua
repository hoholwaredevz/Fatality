local LocalPlayer = game:GetService("Players").LocalPlayer
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local allSkins = {}

for i, v in next, game:GetService("StarterGui").Client.Rarities:GetChildren() do
	if v.Name ~= "Banana_Stock" then
		allSkins[1 + #allSkins] = {v.Name}
	end
end

local isUnlocked

local CurrentKnives = {
		"Bayonet",
		"Huntsman Knife",
		"Falchion Knife",
		"Karambit",
		"Gut Knife",
		"Butterfly Knife",
		"M9 Bayonet",
		"Banana",
		"Flip Knife",
		"Sickle",
		"Bearded Axe",
		"Cleaver"
	}
	local CurrentGloves = {
		"Sports Glove",
		"Strapped Glove",
		"Fingerless Glove",
		"Handwraps"
	}
    local inventorySelections = {}

	local equipHook = Client.equipitem
	Client.equipitem = function(invennum, team)

			local item2equip = Client.CurrentInventory[invennum]
			local physicalitem = item2equip[1]
			local splitter = string.split(physicalitem, "_")

			local weapon = splitter[1]
			local isKnife
			for i = 1, #CurrentKnives do
				if CurrentKnives[i] == weapon then
					isKnife = true
				end
			end

			local weapon = splitter[1]
			local isGlove
			for i = 1, #CurrentGloves do
				if CurrentGloves[i] == weapon then
					isGlove = true
				end
			end

			inventorySelections[1 + #inventorySelections] = {
				args = {invennum, team},
				item2equip = item2equip,
				physicalitem = physicalitem,
				splitter = splitter,
				weapon = splitter[1],
				skin = splitter[2],
				isKnife = isKnife,
				isGlove = isGlove
			}

			local seenItems = {}
			for i = #inventorySelections, 1, -1 do
				local entry = inventorySelections[i]
				local physicalItem = entry.weapon

				if seenItems[physicalItem] then
					if entry.skin ~= inventorySelections[seenItems[physicalItem]].skin then
						inventorySelections[seenItems[physicalItem]].skin = entry.skin
					end

					table.remove(inventorySelections, i)
				else
					seenItems[physicalItem] = i
				end
			end

			local knifeSeen
			for i = #inventorySelections, 1, -1 do
				local entry = inventorySelections[i]
				local isKnife = entry.isKnife

				if isKnife and knifeSeen then
					table.remove(inventorySelections, i)
				end

				if isKnife then
					knifeSeen = true
				end
			end

			local gloveSeen
			for i = #inventorySelections, 1, -1 do
				local entry = inventorySelections[i]
				local isGlove = entry.isGlove

				if isGlove and gloveSeen then
					table.remove(inventorySelections, i)
				end

				if isGlove then
					gloveSeen = true
				end
			end


		return equipHook(invennum, team)
	end

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

local isUnlocked

mt.__namecall = newcclosure(function(self, ...)
   local args = {...}
   if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
       return
   end
   if getnamecallmethod() == "FireServer" then
       if args[1] == LocalPlayer.UserId then
           return
       end
       if string.len(tostring(self)) == 38 then
           if not isUnlocked then
               isUnlocked = true
               for i,v in pairs(allSkins) do
                   local doSkip
                   for i2,v2 in pairs(args[1]) do
                       if v[1] == v2[1] then
                           doSkip = true
                       end
                   end
                   if not doSkip then
                       table.insert(args[1], v)
                   end
               end
           end
           return
       end
       if tostring(self) == "DataEvent" and args[1][4] then
           local currentSkin = string.split(args[1][4][1], "_")[2]
           if args[1][2] == "Both" then
               LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
               LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
           else
               LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
           end
       end
   end
   return oldNamecall(self, ...)
end)
   
setreadonly(mt, true)

Client.CurrentInventory = allSkins

local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
LocalPlayer.SkinFolder.TFolder:Destroy()
LocalPlayer.SkinFolder.CTFolder:Destroy()
TClone.Parent = LocalPlayer.SkinFolder
CTClone.Parent = LocalPlayer.SkinFolder
