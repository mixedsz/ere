Configuration = {
    Framework = 'ESX',
    Debug = true,
    Users = 'users',
    RedeemCooldown = 10,
    InventoryImagePath = 'nui://ox_inventory/web/images/',

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
            iconColor = '#00d4ff'
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
        Theme = 'linear-gradient(135deg, #00d4ff 0%, #ff00ff 100%)',
        PrimaryColor = '#00d4ff',
        SecondaryColor = '#ff00ff',
        AccentColor = '#b300ff',
        Discord = 'https://discord.gg/gcrz', 
        Store = 'https://store.gulfcoastrp.com',
        Logo = 'nui://coinShop/web/assets/logo.png',
        SoundEffects = {
            Enabled = false, -- Disabled to avoid audio errors
            Volume = 0.05
        }
    },
}