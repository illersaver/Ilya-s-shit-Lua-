if CLIENT then return end
if SERVER then
    --Cool sign
    print("\n=-=-=-=-=-=-=-=-=-=-=-=\n          Ilya's shit 0.0.3 \n                   by Ilya \n=-=-=-=-=-=-=-=-=-=-=-= \n Type (''command'' Help), if you need too understand what it does\n list \n smite \n antismite \n secretpanel\n affliction")
    Game.AddCommand("list", "hee-hee-hi-ha", function () end, getValidArgs, isCheat)
    Game.AssignOnClientRequestExecute("list", function(client,cursor,args)
        print("('command' Help) for info\n list \n smite \n antismite \n secretpanel\n affliction")
    end)
    --Cool shit
        require("Funny Shit.Smite")
        require("Funny Shit.SecretPanel")
        require("Funny Shit.FunctionTest")
        require("Funny Shit.Affliction")
end