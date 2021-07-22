ShowNotification = function(msg)
    SetNotificationTextEntry('STRING')
    AddTextComponentSubstringPlayerName(msg)
    DrawNotification(false, true)
end

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(500)

        if Config.BannedRatio[tostring(GetAspectRatio())] then
            Citizen.Wait(5000)
            ShowNotification("~r~Your screen ratio is not allowed on our server, change it or you will be kicked.")
            Citizen.Wait(Config.TimeBeforeBan)
            if Config.BannedRatio[tostring(GetAspectRatio())] then
                TriggerServerEvent("zg-bannedratio:KickPlayer")
            end
        end
    end

end)
