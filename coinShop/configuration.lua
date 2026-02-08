Configuration = {
    Framework = 'ESX', ---@type "ESX" | "QB" | "Standalone" --Export can be adjusted in server/source/source.lua
    Debug = true,
    Users = 'users',

    RedeemCooldown = 10, -- Prevents spamming a non existent redeem code

    ---@param message string
    notify = function(message)
        lib.notify({
            title = 'Coin System',
            description = message,
            showDuration = true,
            position = 'top',
            style = {
                backgroundColor = '#000000b3',
                color = '#C1C2C5',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'coins',
            iconColor = '#ff0000'
        })
    end,

    enterShop = function()
        DisplayRadar(false)
        -- This function will be executed when the coin shop is opened
        -- example of usage: exports['hudScript']:hideHud()
    end,

    exitShop = function()
        DisplayRadar(true)
        -- This function will be executed when the coin shop is closed
        -- example of usage: exports['hudScript']:showHud()
    end,

    Command = {
        Enabled = true, 
        Command = 'cs'
    },

    Customization = {
        Theme = 'rgba(212, 0, 0, 0.9)',
        Discord = 'https://discord.gg/ragerp', 
        Logo = 'https://r2.fivemanage.com/pub/g0gmeqg1xagc.png', -- Watermark
        SoundEffects = {
            Enabled = true,
            Volume = 0.05 --- 0 - 1
        } --[[
        Customization for the coin shop ]]
    },
}
