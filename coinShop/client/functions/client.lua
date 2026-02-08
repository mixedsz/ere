---@param action string
---@param data table
---@param focus bool
function nui(action, data, focus)
    SendNUIMessage({
        action = action,
        data = data
    })

    if focus ~= nil then 
        SetNuiFocus(focus, focus)
    end
end

function giveVehicle(data)
    data.plate = generatePlate()

    if data.spawn then 
        local vehicleModel = joaat(data.model)
        RequestModel(vehicleModel)
        while not HasModelLoaded(vehicleModel) do
            Wait(1)
        end
        vehicle = CreateVehicle(vehicleModel, GetEntityCoords(cache.ped), GetEntityHeading(cache.ped), true, true)
        SetVehicleNumberPlateText(vehicle, data.plate)
        TaskWarpPedIntoVehicle(cache.ped, vehicle, -1)
        
        
        local iden, name = lib.callback.await('chaos:fetchiden', false)

        Entity(vehicle).state:set('owner', iden, true)
        Entity(vehicle).state:set('plate', data.plate, true)
        Entity(vehicle).state:set('name', name, true)
    end

    if not vehicle then 
        data.props = {
            plate = data.plate,
            model = joaat(data.model)
        }
    else 
        data.props = lib.getVehicleProperties(vehicle)
    end

    local success = lib.callback.await('bs:cs:giveVehicle', false, data)
end

function giveItem(data)
    local success = lib.callback.await('bs:cs:giveItem', false, data)
end

function giveMoney(data)
    local success = lib.callback.await('bs:cs:giveMoney', false, data)
end

function giveWeapon(data)
    local success = lib.callback.await('bs:cs:giveWeapon', false, data)
end

RegisterNetEvent('bs:cs:updateUI', nui)