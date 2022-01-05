ESX = nil
local paalla = false
local AllBlips = {}
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterCommand("ShopsON", function(source, args, rawCommand)
	paalla = true
	Blipit()

end, false)
RegisterCommand("ShopsOFF", function(source, args, rawCommand)
	paalla = false
	Blipit()
end, false)

function Blipit()
	if paalla then

		Blips = {
			[1] = {x = 373.875,   y = 325.896,  z = 102.566, n = "Store"},
			[2] = {x = 2557.458,  y = 382.282,  z = 107.622, n = "Store"},
			[3] = {x = -3038.939, y = 585.954,  z = 6.908, n = "Store"},
			[4] = {x = -1487.553, y = -379.107,  z = 39.163, n = "Store"},
			[5] = {x = 1392.562,  y = 3604.684,  z = 33.980, n = "Store"},
			[6] = {x = -2968.243, y = 390.910,   z = 14.043, n = "Store"},
			[7] = {x = 2678.916,  y = 3280.671, z = 54.241, n = "Store"},
			[8] = {x = -48.519,   y = -1757.514, z = 28.421, n = "Store"},
			[9] = {x = 1163.373,  y = -323.801,  z = 68.205, n = "Store"},
			[10] = {x = -707.501,  y = -914.260,  z = 18.215, n = "Store"},
			[11] = {x = -1820.523, y = 792.518,   z = 137.118, n = "Store"},
			[12] = {x = 1698.388,  y = 4924.404,  z = 41.063, n = "Store"},
			[13] = {x = 1961.464,  y = 3740.672, z = 31.343, n = "Store"},
			[14] = {x = 1135.808,  y = -982.281,  z = 45.415, n = "Store"},
			[15] = {x = 25.88,     y = -1347.1,   z = 28.5, n = "Store"},
			[16] = {x = -1393.409, y = -606.624,  z = 29.319, n = "Store"},
			[17] = {x = 547.431,   y = 2671.710, z = 41.156, n = "Store"},
			[18] = {x = -3241.927, y = 1001.462, z = 11.830, n = "Store"},
			[19] = {x = 1166.024,  y = 2708.930,  z = 37.157, n = "Store"},
			[20] = {x = 1729.216,  y = 6414.131, z = 34.037, n = "Store"},
		}

		for i=1, #Blips, 1 do

			local blip2 = AddBlipForCoord(vector3(Blips[i].x, Blips[i].y, Blips[i].z))
				
				SetBlipSprite (blip2, 52)
				SetBlipDisplay(blip2, 4)
				SetBlipScale  (blip2, 0.6)
				SetBlipColour (blip2, 29)
				SetBlipAsShortRange(blip2, true)
				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString('' .. Blips[i].n)
				EndTextCommandSetBlipName(blip2)
				table.insert(AllBlips, blip2)
		end

		else
			for i=1, #AllBlips, 1 do
				RemoveBlip(AllBlips[i])
			end
		end
	
end

