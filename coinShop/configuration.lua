Configuration = {
    Framework = 'ESX', ---@type "ESX" | "QB" | "Standalone"
    Debug = true,
    Users = 'users',

    RedeemCooldown = 10,

    -- Inventory image path
    InventoryImagePath = 'nui://ox_inventory/web/images/', -- Path to your inventory images

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
            iconColor = '#00d4ff' -- Changed to blue
        })
    end,

    enterShop = function()
        DisplayRadar(false)
    end,

    exitShop = function()
        DisplayRadar(true)
    end,

    Command = {
        Enabled = true, 
        Command = 'cs'
    },

    Customization = {
        -- New gradient theme using your logo colors
        Theme = 'linear-gradient(135deg, #00d4ff 0%, #ff00ff 100%)', -- Blue to Pink gradient
        PrimaryColor = '#00d4ff', -- Cyan/Blue
        SecondaryColor = '#ff00ff', -- Pink/Magenta
        AccentColor = '#b300ff', -- Purple (mix of blue and pink)
        Discord = 'https://discord.gg/gcrz', 
        Store = 'https://store.gulfcoastrp.com',
        Logo = 'nui://coinShop/web/assets/logo.png', -- Your uploaded logo
        SoundEffects = {
            Enabled = true,
            Volume = 0.05
        }
    },
}