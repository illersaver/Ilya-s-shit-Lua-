if CLIENT then return end
if SERVER then
    function seekforplayer(player) 
        for i, cl in ipairs(Client.ClientList) do
            if cl.Name == player then
                clientpl = cl
            end
        end
        return clientpl
    end
end