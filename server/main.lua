ESX.RegisterUsableItem('repairkit', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    if Config.AllowMechanic then
        TriggerClientEvent('alpaka_repairkit:onUse', source)
    else
        if xPlayer.job.name ~= 'mechanic' then
            TriggerClientEvent('alpaka_repairkit:onUse', source)
        end
    end
end)

RegisterNetEvent('alpaka_repairkit:removeKit')
AddEventHandler('alpaka_repairkit:removeKit', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    if not Config.InfinityRepairkit then
        xPlayer.removeInventoryItem('repairkit', 1)
    end
end)