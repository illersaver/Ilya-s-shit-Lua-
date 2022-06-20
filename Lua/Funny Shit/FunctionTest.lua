    --Seek(sex) for people you want
    function seekforplayer(player) 
        for i, cl in ipairs(Client.ClientList) do
            if cl.Name == player then
                return cl
            end
        end
    end