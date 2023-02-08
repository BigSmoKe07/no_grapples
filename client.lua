Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPlayerWeaponDamageModifier(GetPlayerIndex(),Config.WeaponDmg)
        SetPlayerMeleeWeaponDamageModifier(GetPlayerIndex(),Config.MeleeDmg)
        while true do
            Citizen.Wait(0)
            Citizen.InvokeNative(0xB8DE69D9473B7593,PlayerPedId(),1)  -- GRAPPLE 
            Citizen.InvokeNative(0xB8DE69D9473B7593,PlayerPedId(),6)  -- _DISABLE_COMBAT_ACTION_AGAINST_OTHERS - this ped cant choke other peds now.
            Citizen.InvokeNative(0xB8DE69D9473B7593,PlayerPedId(),16) -- ADF EXECUTION
            Citizen.InvokeNative(0xB8DE69D9473B7593,PlayerPedId(),17) -- STEALTH KILL
            Citizen.InvokeNative(0xB8DE69D9473B7593,PlayerPedId(),20) -- ADF_STRUGGLE
            Citizen.InvokeNative(0xB8DE69D9473B7593,PlayerPedId(),30) -- ADF_DEFENSIVE_AREA_AUTO_GRAPPLE
        end
    end
end)

