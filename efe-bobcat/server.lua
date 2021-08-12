ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
if (GetCurrentResourceName() == "efe-bobcat") then
else
	print("")
	print("--------------------------------")
	print("Scriptin ismi efe-bobcat olmali.")
	print("Scriptin ismi efe-bobcat olmali.")
	print("Scriptin ismi efe-bobcat olmali.")
	print("Scriptin ismi efe-bobcat olmali.")
	print("Scriptin ismi efe-bobcat olmali.")
	print("Scriptin ismi efe-bobcat olmali.")
	print("Scriptin ismi efe-bobcat olmali.")
	print("--------------------------------")
	print("")
	ExecuteCommand('stop efe-bobcat')
end

ESX.RegisterServerCallback('efe:bobcatpolice', function(source, cb)
	local xPlayers = ESX.GetPlayers()
	CopsConnected = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end
	cb(CopsConnected)
end)


RegisterServerEvent("efe:particleserver")
AddEventHandler("efe:particleserver", function(method)
    TriggerClientEvent("efe:ptfxparticle", -1, method)
end)

RegisterServerEvent("efe:particleserversec")
AddEventHandler("efe:particleserversec", function(method)
    TriggerClientEvent("efe:ptfxparticlesec", -1, method)
end)