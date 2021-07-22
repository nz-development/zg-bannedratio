RegisterServerEvent("zg-bannedratio:KickPlayer")
AddEventHandler("zg-bannedratio:KickPlayer", function()
    DropPlayer(source, Config.KickMessage)
end)
