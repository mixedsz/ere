-- This file handles redeem code functionality

local redeemCodes = {}
local playerCooldowns = {}

lib.callback.register('bs:cs:checkCode', function(source, code)
    local identifier = GetPlayerIdentifier(source, 0)
    
    -- Check cooldown
    if playerCooldowns[identifier] and (os.time() - playerCooldowns[identifier]) < Configuration.RedeemCooldown then
        TriggerClientEvent('bs:cs:updateUI', source, 'setCSError', {
            message = Language['cooldown'],
            error = true
        })
        return false
    end
    
    playerCooldowns[identifier] = os.time()
    
    -- Check if code exists (implement your code validation here)
    if not redeemCodes[code] then
        TriggerClientEvent('bs:cs:updateUI', source, 'setCSError', {
            message = Language['invalid_code'],
            error = true
        })
        return false
    end
    
    -- Give coins
    local coinsToGive = redeemCodes[code]
    updateUserCoins(source, 'add', coinsToGive)
    
    TriggerClientEvent('bs:cs:updateUI', source, 'setCSError', {
        message = string.format(Language['valid_code'], coinsToGive),
        error = false
    })
    
    -- Remove code after use (optional)
    redeemCodes[code] = nil
    
    return true
end)

-- Function to add redeem codes (can be called from another script)
function AddRedeemCode(code, coins)
    redeemCodes[code] = coins
end

-- Export for external use
exports('AddRedeemCode', AddRedeemCode)