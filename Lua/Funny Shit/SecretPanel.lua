local switch = {
    ["Help"] = function()
            print("(secretpanel -Mode-) \n secret panel for administrating stuff \n FixAll")
    end,
    ["FixAll"] = function()
            Game.ExecuteCommand("fixwalls")
            Game.ExecuteCommand("fixitems")
            Game.ExecuteCommand("fixhulls")
    end
}
-- csqrb#7132 <-- CEO of coding
Game.AddCommand("secretpanel", "hee-hee-hi-ha", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("secretpanel", function(client,cursor,args) -- function(client,cursor,args)
    local trolling = switch[args[1]]
    if(trolling) then
        trolling()
    end
end)