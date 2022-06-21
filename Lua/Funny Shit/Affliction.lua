Game.AddCommand("affliction", "hee-hee-hi-ha", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("affliction", function(client,cursor,args)
    if args[1] == "Help" or args[1] == "help" then
        print("(affliction affname ''person'' power)")
    else
        afflictionadd(args[1], seekforplayer(args[2]), args[3])
    end
end)
