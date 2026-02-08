-- Add coins command
RegisterCommand('addcoins', function(source, args)
    if source == 0 then -- Console command
        local targetId = tonumber(args[1])
        local amount = tonumber(args[2])
        
        if not targetId or not amount then
            print('Usage: addcoins [id] [amount]')
            return
        end
        
        local success = updateUserCoins(targetId, 'add', amount)
        if success then
            print('Added '..amount..' coins to player '..targetId)
            TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                playerCoins = fetchUserCoins(targetId)
            })
        end
    end
end, true)

-- Remove coins command
RegisterCommand('removecoins', function(source, args)
    if source == 0 then
        local targetId = tonumber(args[1])
        local amount = tonumber(args[2])
        
        if not targetId or not amount then
            print('Usage: removecoins [id] [amount]')
            return
        end
        
        local success = updateUserCoins(targetId, 'remove', amount)
        if success then
            print('Removed '..amount..' coins from player '..targetId)
            TriggerClientEvent('bs:cs:updateUI', targetId, 'updateCS', {
                playerCoins = fetchUserCoins(targetId)
            })
        end
    end
end, true)