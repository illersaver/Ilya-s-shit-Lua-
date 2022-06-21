Game.AddCommand("affliction", "hee-hee-hi-ha", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("affliction", function(client,cursor,args)
    if args[1] == "Help" or args[1] == "help" then
        print("(affliction affname ''person'' power)")
    else
    local bruh = AfflictionPrefab.Prefabs[args[1]]
    local limb = seekforplayer(args[2]).Character.AnimController.MainLimb
    seekforplayer(args[2]).Character.CharacterHealth.ApplyAffliction(limb, bruh.Instantiate(tonumber(args[3])),true)    
    end
end)
