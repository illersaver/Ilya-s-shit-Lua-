--Seek(sex) for people you want
function seekforplayer(player) 
    for i, cl in ipairs(Client.ClientList) do
        if cl.Name == player then
            return cl
        end
    end
end
function afflictionadd(type, player, power)
    local bruh = AfflictionPrefab.Prefabs[type]
    local limb = player.Character.AnimController.MainLimb
    player.Character.CharacterHealth.ApplyAffliction(limb, bruh.Instantiate(tonumber(power)),true)
end