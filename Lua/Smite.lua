if CLIENT then return end
if SERVER then
    -- csqrb#7132 <-- CEO of coding
    Game.AddCommand("smite", "we do a little trolling", function () end, getValidArgs, isCheat)
    Game.AssignOnClientRequestExecute("smite", function(client,cursor,args) -- function(client,cursor,args)
        if args[1] == "FentanylFun" then
            local clientpl = seekforplayer(args[2])
                local fentanylfuni = AfflictionPrefab.Prefabs["opiateoverdose"]
                local limb = clientpl.Character.AnimController.MainLimb
                clientpl.Character.CharacterHealth.ApplyAffliction(limb, fentanylfuni.Instantiate(40),true)
        elseif args[1] == "Burn" then
            local clientpl = seekforplayer(args[2])
                local Burn = AfflictionPrefab.Prefabs["burn"]
                local limb = clientpl.Character.AnimController.MainLimb
                clientpl.Character.CharacterHealth.ApplyAffliction(limb, Burn.Instantiate(40),true)
        elseif args[1] == "Orangeboi" then
            local clientpl = seekforplayer(args[2])
                local troll = Character.Create("orangeboy", clientpl.Character.WorldPosition,0)
                clientpl.SetClientCharacter(troll)
        elseif args[1] == "Radiation" then
            local clientpl = seekforplayer(args[2])
                local rad = AfflictionPrefab.Prefabs["radiationsickness"]
                local limb = clientpl.Character.AnimController.MainLimb
                clientpl.Character.CharacterHealth.ApplyAffliction(limb, rad.Instantiate(40),true)
        elseif args[1] == "MechanicDisease" then
            local clientpl = seekforplayer(args[2])
                local drunk = AfflictionPrefab.Prefabs["drunk"]
                local limb = clientpl.Character.AnimController.MainLimb
                clientpl.Character.CharacterHealth.ApplyAffliction(limb, drunk.Instantiate(80),true)
        elseif args[1] == "Boom" then
            local clientpl = seekforplayer(args[2])
                Game.Explode(clientpl.Character.WorldPosition, 30, 50, 50)
        elseif args[1] == "Help" or args[1] == "help" then
            print("(smite Mode ''Person'') \n Tool for more SS13 like administrating expirience!! try it! \n FentanylFun \n Burn \n Orangeboi \n Radiation \n MechanicDisease \n Boom")
        end
    end)
end