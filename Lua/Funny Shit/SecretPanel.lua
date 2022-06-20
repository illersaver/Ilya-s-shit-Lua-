if CLIENT then return end
if SERVER then
    -- csqrb#7132 <-- CEO of coding
    Game.AddCommand("secretpanel", "hee-hee-hi-ha", function () end, getValidArgs, isCheat)
    Game.AssignOnClientRequestExecute("secretpanel", function(client,cursor,args) -- function(client,cursor,args)
        if args[1] == "Help" or args[1] == "help" then
            print("(secretpanel -Mode-) \n secret panel for administrating stuff \n FixAll")
        end
        if args[1] == "FixAll" then
            Game.ExecuteCommand("fixwalls")
            Game.ExecuteCommand("fixitems")
            Game.ExecuteCommand("fixhulls")
        end
    end)
end