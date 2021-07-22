ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(200)

        if Config.BannedRatio[tostring(GetAspectRatio())] then
            Citizen.Wait(5000)
            ESX.ShowNotification("La tua proporzione schermo non è ammessa nel nostro server, cambiala o sarai kickato")
            Citizen.Wait(Config.TimeBeforeBan)
            if Config.BannedRatio[tostring(GetAspectRatio())] then
                TriggerServerEvent("zg-bannedratio:KickPlayer")
            end
        else
            Citizen.Wait(1500)
        end
    end

end)
