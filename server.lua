ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('Xel_Location:Buy')
AddEventHandler('Xel_Location:Buy', function(nom, model, prix)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)

    if xPlayer.getAccount('bank').money >= prix then
        xPlayer.removeAccountMoney('bank', prix)
        TriggerClientEvent('esx:showAdvancedNotification', _src, '~y~Location', 'Service Publique', "Merci pour votre location d'une ~b~"..nom.." ~s~pour ~g~"..prix.." $" , 'CHAR_LS_TOURIST_BOARD', 1)
        TriggerClientEvent('Xel_Location:SpawnCar', _src, model)
    else
        TriggerClientEvent('esx:showAdvancedNotification', _src, '~y~Location', 'Service Publique', "Vous n'avez pas assez d'argent sur votre compte Bancaire" , 'CHAR_LS_TOURIST_BOARD', 1)
    end
end)