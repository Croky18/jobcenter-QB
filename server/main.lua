local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('customjob:setJob', function(job)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        Player.Functions.SetJob(job, 0)
        TriggerClientEvent('QBCore:Notify', src, "Job gewijzigd naar: " .. job, "success")
    end
end)
