Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function OpenLocationVoitureMenu()

	local VoitureMenu = RageUI.CreateMenu("Location", "Location de voiture", 1, 1, "commonmenu", "gradient_nav", 5, --[[Rouge]] 255, --[[Vert]] 196, --[[Bleu]] 0);

	function RageUI.PoolMenus:Example()
		VoitureMenu:IsVisible(function(Items)
			-- Items

			for k, v in pairs(Config.Voiture.Vehicule) do
				Items:AddButton(v.nom, "~y~Louer le véhicule de votre choix !",{ IsDisabled = false, RightLabel = "~g~"..v.prix.." $" }, function(onSelected)
					if (onSelected) then
						TriggerServerEvent('Xel_Location:Buy', v.nom, v.model, v.prix)
						CreateThread(function ()
							RageUI.CloseAll()
						end)
					end
				end)
			end	
	
		end, function(Panels)
		end)
	end

	RageUI.Visible(VoitureMenu, not RageUI.Visible(VoitureMenu))
end

function SpawnCar(model)
	RequestModel(model)

	local playerPed = PlayerPedId(-1)
	local spawnpos = Config.Voiture.SpawnPoint
	local x, y, z = table.unpack(spawnpos)

	while not HasModelLoaded(model) do Citizen.Wait(10) end

	local pos = GetEntityCoords(PlayerPedId())
	local vehiclespawn = CreateVehicle(model, x, y, z, Config.Voiture.SpawnRotation,true, true)
	SetVehicleNumberPlateText(vehiclespawn, "Location")
	SetPedIntoVehicle(playerPed --[[ Ped ]], vehiclespawn --[[ Vehicle ]], -1 --[[ integer ]])
	
end

-- Faire spawn le véhicule
RegisterNetEvent('Xel_Location:SpawnCar')
AddEventHandler('Xel_Location:SpawnCar', function(model)
	print(model)
	RequestModel(model)

	local playerPed = PlayerPedId(-1)
	local spawnpos = Config.Voiture.SpawnPoint
	local x, y, z = table.unpack(spawnpos)

	while not HasModelLoaded(model) do Citizen.Wait(10) end

	local pos = GetEntityCoords(PlayerPedId())
	local vehiclespawn = CreateVehicle(model, x, y, z, Config.Voiture.SpawnRotation,true, true)
	SetVehicleNumberPlateText(vehiclespawn, "Location")
	SetPedIntoVehicle(playerPed --[[ Ped ]], vehiclespawn --[[ Vehicle ]], -1 --[[ integer ]])

end)

Citizen.CreateThread(function()
	if Config.Voiture.SpawnPed then
		function LoadModel(model)
			while not HasModelLoaded(model) do
				RequestModel(model)
				Wait(1)
			end
		end
		
		local pedspawn = Config.Voiture.PosPed
		local x, y, z = table.unpack(pedspawn)

		LoadModel(Config.Voiture.ModelPed)
		Ped = CreatePed(2, GetHashKey(Config.Voiture.ModelPed), x, y, z-0.96, Config.Voiture.PedRotation, 0, 0)
		FreezeEntityPosition(Ped, 1)
		SetEntityInvincible(Ped, true)
		SetBlockingOfNonTemporaryEvents(Ped, 1)
	end
end)

Citizen.CreateThread(function()

	-- Transformation du vector3 en table
	local v = Config.Voiture.position
	local x, y, z = table.unpack(v)

	-- Création du blip hors de la boucle while pour éviter des problèmes

	local blip = AddBlipForCoord(x, y, z)

	SetBlipSprite(blip, Config.BlipId)
	SetBlipScale (blip, Config.BlipTaille)
	SetBlipColour(blip, Config.BlipCouleur)
	SetBlipAsShortRange(blip, Config.BlipRange)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName(Config.BlipName)
	EndTextCommandSetBlipName(blip)
	
	while true do

		local playerCoords = GetEntityCoords(PlayerPedId())
		local distance = #(playerCoords - v)

        if distance < 1 then
            ESX.ShowHelpNotification(Config.Voiture.HelpNotification)

			if IsControlJustPressed(0, 51) then
				OpenLocationVoitureMenu()
			end

	    end
		Citizen.Wait(5)
	end

end)