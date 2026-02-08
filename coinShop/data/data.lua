-- Helper function to get item image from ox_inventory
local function getItemImage(itemName)
    -- Returns the path to the item image in ox_inventory
    return string.format('%s%s.png', Configuration.InventoryImagePath, itemName)
end

Data = {
    -- Feel free to add as many categories as you desire :D
    ['Categories'] = {
        { label = 'Vehicles' },
        { label = 'Weapons' },
        { label = 'Keys' },
    },

    ['Items'] = {

        -- KEYS CATEGORY (keeping original images as these are custom)
        { 
            label = 'Common Key',
            category = 'Keys',
            coins = 85,
            sale = '0',
            image = 'https://files.catbox.moe/8k9xlc.png',
            autoClose = true,

            onPurchase = function(data)
                giveItem({
                    item = 'common_key',
                    count = 1,
                })

                Configuration.notify('You recieved 1x Common key')
            end
        },

        { 
            label = 'Rare Key',
            category = 'Keys',
            coins = 125,
            sale = '0',
            image = 'https://files.catbox.moe/7yudyu.png',
            autoClose = true,

            onPurchase = function(data)
                giveItem({
                    item = 'rare_key',
                    count = 1,
                })

                Configuration.notify('You recieved 1x Rare key')
            end
        },

        { 
            label = 'Legendary Key',
            category = 'Keys',
            coins = 200,
            sale = '0',
            image = 'https://files.catbox.moe/uplivo.png',
            autoClose = true,

            onPurchase = function(data)
                giveItem({
                    item = 'legend_key',
                    count = 1,
                })

                Configuration.notify('You recieved 1x Legendary key')
            end
        },

        { 
            label = 'Exotic Key',
            category = 'Keys',
            coins = 300,
            sale = '0',
            image = 'https://files.catbox.moe/2w3eys.png',
            autoClose = true,

            onPurchase = function(data)
                giveItem({
                    item = 'exotic_key',
                    count = 1,
                })

                Configuration.notify('You recieved 1x Exotic key')
            end
        },

        -- WEAPONS CATEGORY (using ox_inventory images)
        { 
            label = 'AK-47 WS',
            category = 'Weapons',
            coins = 5000,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2AK47'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2AK47',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'AK-S PS',
            category = 'Weapons',
            coins = 800,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2AKS'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2AKS',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'AR-15 WBA',
            category = 'Weapons',
            coins = 2000,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2AR15'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2AR15',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'ARP Red Tige',
            category = 'Weapons',
            coins = 1850,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2ARP'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2ARP',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'AS-Val WP',
            category = 'Weapons',
            coins = 2500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2ASVAL'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2ASVAL',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'PP Bizon',
            category = 'Weapons',
            coins = 3000,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2BIZON'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2BIZON',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SILVER ASVAL',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_SILVERASVAL'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_SILVERASVAL',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'CZ75 Matrix',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2CZ75'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2CZ75',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Draco WWH',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2DRACO'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2DRACO',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Scorp Evo MPC',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2EVO'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2EVO',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 17S',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2G17S'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G17S',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 18C',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2G18C'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G18C',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Renetti MM',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2REN'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2REN',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 22S',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2G22S'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G22S',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 41S',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2G41S'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G41S',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'HK-416 Hearts',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2HK416'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2HK416',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Krig-C BI',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2KRIGC'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2KRIGC',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Kriss Vector F',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2KVECTOR'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2KVECTOR',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MP-9 MGL',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2MP9'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MP9',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MP5 WP',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2MP5'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MP5',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'M4 CQC',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2M4CQC'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2M4CQC',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'M4A1 ML',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2M4A1'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2M4A1',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MK17 CQC',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2MKCQC'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MKCQC',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MPL TS',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2MPL'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MPL',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'PP-19 WYB',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2PP19'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2PP19',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SCAR-H WR',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2SCARH'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SCARH',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SIG 556 MS',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2SIG556'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SIG556',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SIG MCX',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2SIGMCX'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SIGMCX',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SPAS-12',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2SPAS12'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SPAS12',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Superi MGP',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2SUPERI'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SUPERI',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'UMP-45 WD',
            category = 'Weapons',
            coins = 4500,
            sale = '0',
            image = getItemImage('WEAPON_BANKSONGP2UMP45'),
            autoClose = true,

            onPurchase = function(data)
                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2UMP45',
                    ammo = 200,
                })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        -- VEHICLES CATEGORY (keeping original images)
        { 
            label = 'The BRM',
            category = 'Vehicles',
            coins = 12000,
            sale = '0',
            image = 'https://files.catbox.moe/8pesr9.png',
            autoClose = true,

            onPurchase = function(data)
                giveVehicle({
                    model = '335brm',
                    spawn = true,
                    save = true,
                    label = data.label
                })
                
                Configuration.notify('This new vehicle seems super cool')
            end
        },

        { 
            label = 'Demon', 
            category = 'Vehicles', 
            coins = 11000, 
            sale = '0', 
            image = 'https://files.catbox.moe/0udsty.png',
            autoClose = true,

            onPurchase = function(data)
                giveVehicle({
                    model = 'vanz170',
                    spawn = true,
                    save = true,
                    label = data.label
                })

                Configuration.notify('This new vehicle seems super cool')
            end
        },
    }
}