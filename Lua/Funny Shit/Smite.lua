    -- csqrb#7132 <-- CEO of coding
local smite = {
    ["FentanylFun"] = function(clientpl)
       --Cool drugs
       afflictionadd("opiateoverdose", clientpl, 40)
    end,
    ["Burn"] = function(clientpl)
       --"Ma friki'n tee ma bri'ish lads"
       afflictionadd("burn", clientpl, 40)
    end,
    ["Orangeboi"] = function(clientpl)
        --Ok
        local troll = Character.Create("orangeboy", clientpl.Character.WorldPosition,0)
        clientpl.SetClientCharacter(troll)
    end,
    ["Radiation"] = function(clientpl)
        --Sralker:Ten Samusa
        afflictionadd("radiationsickness", clientpl, 40)
    end,
    ["MechanicDisease"] = function(clientpl)
        --Germany
        afflictionadd("drunk", clientpl, 80)
    end,
    ["Boom"] = function(clientpl)
        --Testicular torsion
        Game.Explode(clientpl.Character.WorldPosition, 30, 50, 50)
    end,
    ["Help"] = function()
        --Help'in
        print("(smite Mode ''Person'') \n Tool for more SS13 like administrating expirience!! try it! \n FentanylFun \n Burn \n Orangeboi \n Radiation \n MechanicDisease \n Boom")
    end
}
    --Cool shit, if you wanna troll someone
local antismite = {
    --Cool assbeating stuff
    ["Syndistuff"] = function(clientpl)
        spawniteminv("Police baton", clientpl)
        spawniteminv("smg", clientpl)
        spawniteminv("smgmagazine", clientpl)
    end,
    --I'M FUCKING INVINCIBLE
    ["Coolafflictions"] = function(clientpl)
        afflictionadd("strengthen", clientpl, 600)
        afflictionadd("huskinfectionresistance", clientpl, 600)
        afflictionadd("paralysisresistance", clientpl, 800)
        afflictionadd("haste", clientpl, 600)
        afflictionadd("durationincrease", clientpl, 600)
    end,
    --Help'in(Again)
    ["Help"] = function()
        print("(antismite Mode ''Person'') \n Syndistuff\n Coolafflictions")
    end
}
    --Commands
Game.AddCommand("smite", "we do a little trolling", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("smite", function(client,cursor,args) -- function(client,cursor,args)
    local clientpl = seekforplayer(args[2])
    local smite = smite[args[1]]
    if(smite) then
        smite(clientpl)
    end
end)
Game.AddCommand("antismite", "we do a little helping", function () end, getValidArgs, isCheat)
Game.AssignOnClientRequestExecute("antismite", function(client,cursor,args) -- function(client,cursor,args)
    local clientpl = seekforplayer(args[2])
    local antismite = antismite[args[1]]
    if(antismite) then
        antismite(clientpl)
    end
end)