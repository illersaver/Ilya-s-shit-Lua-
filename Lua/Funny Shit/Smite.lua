    -- csqrb#7132 <-- CEO of coding
local switch = {
    ["FentanylFun"] = function()
       --Cool drugs
        local clientpl = seekforplayer(args[2])
        local fentanylfuni = AfflictionPrefab.Prefabs["opiateoverdose"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, fentanylfuni.Instantiate(40),true)
    end,
    ["Burn"] = function()
       --"Ma friki'n tee ma bri'ish lads"
        local clientpl = seekforplayer(args[2])
        local Burn = AfflictionPrefab.Prefabs["burn"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, Burn.Instantiate(40),true)
    end,
    ["Orangeboi"] = function()
        --Ok
        local clientpl = seekforplayer(args[2])
        local troll = Character.Create("orangeboy", clientpl.Character.WorldPosition,0)
        clientpl.SetClientCharacter(troll)
    end,
    ["Radiation"] = function()
        --Sralker:Ten Samusa
        local clientpl = seekforplayer(args[2])
        local rad = AfflictionPrefab.Prefabs["radiationsickness"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, rad.Instantiate(40),true)
    end,
    ["MechanicDisease"] = function()
            --Germany
        local clientpl = seekforplayer(args[2])
        local drunk = AfflictionPrefab.Prefabs["drunk"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, drunk.Instantiate(80),true)
    end,
    ["Boom"] = function()
        --Testicular torsion
        local clientpl = seekforplayer(args[2])
        Game.Explode(clientpl.Character.WorldPosition, 30, 50, 50)
    end,
    ["Help" or "help"] = function()
        print("(smite Mode ''Person'') \n Tool for more SS13 like administrating expirience!! try it! \n FentanylFun \n Burn \n Orangeboi \n Radiation \n MechanicDisease \n Boom")            
    end
}
Game.AddCommand("smite", "we do a little trolling", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("smite", function(client,cursor,args) -- function(client,cursor,args)
    local trolling = switch[args[1]]
    if(trolling) then
        trolling()
    end
end)