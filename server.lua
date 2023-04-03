ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded', function(player, xPlayer)
    for k,v in pairs(GetPlayerIdentifiers(player)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            local discordid = string.sub(v, string.len("discord:") + 1)
            exports['only_namesync']:UpdateNickname(xPlayer.name, discordid)
        end
    end
end)