    -- csqrb#7132 <-- CEO of coding
local switch = {
    ["FentanylFun"] = function(clientpl)
       --Cool drugs
        local fentanylfuni = AfflictionPrefab.Prefabs["opiateoverdose"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, fentanylfuni.Instantiate(40),true)
    end,
    ["Burn"] = function(clientpl)
       --"Ma friki'n tee ma bri'ish lads"
        local Burn = AfflictionPrefab.Prefabs["burn"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, Burn.Instantiate(40),true)
    end,
    ["Orangeboi"] = function(clientpl)
        --Ok
        local troll = Character.Create("orangeboy", clientpl.Character.WorldPosition,0)
        clientpl.SetClientCharacter(troll)
    end,
    ["Radiation"] = function(clientpl)
        --Sralker:Ten Samusa
        local rad = AfflictionPrefab.Prefabs["radiationsickness"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, rad.Instantiate(40),true)
    end,
    ["MechanicDisease"] = function(clientpl)
            --Germany
        local drunk = AfflictionPrefab.Prefabs["drunk"]
        local limb = clientpl.Character.AnimController.MainLimb
        clientpl.Character.CharacterHealth.ApplyAffliction(limb, drunk.Instantiate(80),true)
    end,
    ["Boom"] = function(clientpl)
        --Testicular torsion
        Game.Explode(clientpl.Character.WorldPosition, 30, 50, 50)
    end,
    ["Lol"] = function(clientpl)
        --Rip and Tear
        local x = 10       
        local Blunt = AfflictionPrefab.Prefabs["blunttrauma"]
        local limb = clientpl.Character.AnimController.MainLimb            
        repeat
            clientpl.Character.CharacterHealth.ApplyAffliction(limb, Blunt.Instantiate(100),true)
            x = x-1
        until x == 0
    end,
    ["Help"] = function()
        print("(smite Mode ''Person'') \n Tool for more SS13 like administrating expirience!! try it! \n FentanylFun \n Burn \n Orangeboi \n Radiation \n MechanicDisease \n Boom")            
    end
}
Game.AddCommand("smite", "we do a little trolling", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("smite", function(client,cursor,args) -- function(client,cursor,args)
    local clientpl = seekforplayer(args[2])
    local trolling = switch[args[1]]
    if(trolling) then
        trolling(clientpl)
    end
end)