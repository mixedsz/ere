ESX, QBCore = nil

local function init()
    if Configuration.Framework == 'ESX' then 
        ESX = exports['core']:getSharedObject()
    elseif Configuration.Framework == 'QB' then 
        QBCore = exports['qb-core']:GetCoreObject()
    else
        -- customize for standalone users :D
    end
    return
end

---@param message string
function debug(message)
    if not Configuration.Debug or type(message) ~= 'string' then return end 
    print('(^STABLE^5)(^9CS^7): '..message)
end

CreateThread(init)