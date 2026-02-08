local function init()
    TriggerEvent('chat:addSuggestion', '/addcoins', 'Add coins to another player', {
        { name="id", help="Player ID" },
        { name="coins", help="Amount of coins you want to add" }
    })

    TriggerEvent('chat:addSuggestion', '/removecoins', 'Remove coins from another player', {
        { name="target", help="Player ID" },
        { name="coins", help="Amount of coins you want to remove" }
    })
    return
end


local chars <const> = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
function generatePlate()
    local charTable = {}
    for c in chars:gmatch"." do
        table.insert(charTable, c)
    end
    
    local firstPlate, secondPlate = '', ''  

    for i = 1, 4 do
        secondPlate = secondPlate .. charTable[math.random(1, #charTable)] 
        firstPlate = firstPlate .. charTable[math.random(1, #charTable)] 
    end

    local plate = firstPlate.." "..secondPlate

    return plate
end

CreateThread(init)
RegisterNetEvent('coinShop:notify', Configuration.notify)