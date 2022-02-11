ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('dpr_Location:AchatVehicule')
AddEventHandler('dpr_Location:AchatVehicule', function(Nom, Vehicule, Price)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    local car = Vehicule
    if xPlayer.getAccount('bank').money >= Price then 
        xPlayer.removeAccountMoney('bank', Price)
        TriggerClientEvent('dpr_Location:spawnCar', _src, car)
        Citizen.Wait(500)
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Location', 'Véhicule', 'Votre véhicule arrive d\'ici peu !', 'CHAR_CASTRO', 1)
        Citizen.Wait(10000)
		TriggerClientEvent('esx:showAdvancedNotification', _src, 'Banque', 'Conseiller', "Un prélèvement de ~r~"..Price.." ~s~a été effectué sur votre compte pour ~r~une location ~s~!", 'CHAR_BANK_MAZE', 1)
    else 
        Citizen.Wait(500) 
        TriggerClientEvent('esx:showAdvancedNotification', _src, 'Banque', 'Conseiller', "Vous n'avez pas suffisament d'argent sur votre compte bancaire ~s~!", 'CHAR_BANK_MAZE', 1)
    end
end)

RegisterNetEvent('dpr_Location:RetourVehicule')
AddEventHandler('dpr_Location:RetourVehicule', function()
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    xPlayer.addAccountMoney('bank', 250)
    Citizen.Wait(500)
    TriggerClientEvent('esx:showAdvancedNotification', _src, 'Location', 'Véhicule', 'Votre véhicule a était repris !', 'CHAR_CASTRO', 1)
    Citizen.Wait(10000)
	TriggerClientEvent('esx:showAdvancedNotification', _src, 'Banque', 'Conseiller', "Un paiement de ~g~250$ ~s~a été effectué sur votre compte pour le retour ~r~d'une location ~s~!", 'CHAR_BANK_MAZE', 1)
end)