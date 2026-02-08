
Data = {
    -- Feel free to add as many categories as you desire :D
    ['Categories'] = {
        { label = 'Vehicles' },
        { label = 'Weapons' },
        { label = 'Keys' },
    },

    ['Items'] = {

        { 
            label = 'Common Key', -- item label
            category = 'Keys', -- category for the item
            coins = 85, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/8k9xlc.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveItem({
                    item = 'common_key',
                    count = 1,
                 })

                Configuration.notify('You recieved 1x Common key')
            end
        },

        { 
            label = 'Rare Key', -- item label
            category = 'Keys', -- category for the item
            coins = 125, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/7yudyu.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveItem({
                    item = 'rare_key',
                    count = 1,
                 })

                Configuration.notify('You recieved 1x Rare key')
            end
        },

        { 
            label = 'Legendary Key', -- item label
            category = 'Keys', -- category for the item
            coins = 200, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/uplivo.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveItem({
                    item = 'legend_key',
                    count = 1,
                 })

                Configuration.notify('You recieved 1x Legendary key')
            end
        },
        { 
            label = 'Exotic Key', -- item label
            category = 'Keys', -- category for the item
            coins = 300, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/2w3eys.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveItem({
                    item = 'exotic_key',
                    count = 1,
                 })

                Configuration.notify('You recieved 1x Exotic key')
            end
        },


        { 
            label = 'AK-47 WS', -- item label
            category = 'Weapons', -- category for the item
            coins = 5000, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/4uv343.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2AK47',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'AK-S PS', -- item label
            category = 'Weapons', -- category for the item
            coins = 800, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/g080vd.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2AKS',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'AR-15 WBA', -- item label
            category = 'Weapons', -- category for the item
            coins = 2000, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/dc9n2g.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2AR15',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'ARP Red Tige', -- item label
            category = 'Weapons', -- category for the item
            coins = 1850, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/mcy5bl.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2ARP',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'AS-Val WP', -- item label
            category = 'Weapons', -- category for the item
            coins = 2500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/y6owqo.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2ASVAL',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'PP Bizon', -- item label
            category = 'Weapons', -- category for the item
            coins = 3000, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/mdou2q.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2BIZON',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SILVER ASVAL', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/1d6qx2.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_SILVERASVAL',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'CZ75 Matrix', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/sdxojh.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2CZ75',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Draco WWH', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/keuwgz.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2DRACO',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Scorp Evo MPC', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/yz2afw.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2EVO',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 17S', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/nqbmvm.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G17S',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 18C', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/6hfi4w.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G18C',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Renetti MM', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/8ihnup.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2REN',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 22S', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/2yfxen.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G22S',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Glock 41S', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/bu16nv.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2G41S',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'HK-416 Hearts', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/z7ejva.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2HK416',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Krig-C BI', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/9ec1o4.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2KRIGC',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Kriss Vector F', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/rm79im.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2KVECTOR',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MP-9 MGL', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/mg1g72.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MP9',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MP5 WP', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/2t6tc9.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MP5',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'M4 CQC', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/suoboq.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2M4CQC',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'M4A1 ML', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/caj6sa.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2M4A1',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MK17 CQC', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/h9gtuk.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MKCQC',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'MPL TS', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/na6gd5.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2MPL',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'PP-19 WYB', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/d2ek2h.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2PP19',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SCAR-H WR', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/bc67oi.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SCARH',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SIG 556 MS', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/aqy8j3.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SIG556',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SIG MCX', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/vn6791.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SIGMCX',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'SPAS-12', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/yfs1db.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SPAS12',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'Superi MGP', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/ks0g8d.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2SUPERI',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        { 
            label = 'UMP-45 WD', -- item label
            category = 'Weapons', -- category for the item
            coins = 4500, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/pqq9lj.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)

                giveWeapon({
                    weapon = 'WEAPON_BANKSONGP2UMP45',
                    ammo = 200,
                 })
                
                Configuration.notify('This new weapon seems super cool')
            end
        },

        --Vehicles
        { 
            label = 'The BRM', -- item label
            category = 'Vehicles', -- category for the item
            coins = 12000, -- how many coins needed to purchase
            sale = '0', -- if you dont want a sale then set to 0 (will take a % off when above)
            image = 'https://files.catbox.moe/8pesr9.png', -- image for the item
            autoClose = true, -- will automatically close the shop when purchased

            ---@param data table 
            --- All above is included in data for example: data.Label, data.category, data.coins etc.
            onPurchase = function(data)
                giveVehicle({
                    model = '335brm', -- model of the vehicle 
                    spawn = true, -- do you want the vehicle to spawn on the player?
                    save = true, -- do you want the vehicle to save in the players garage?
                    label = data.label -- vehicle name from coinshop
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
                    model = 'vanz170', -- model ofaddervehicle 
                    spawn = true, -- do you want the vehicle to spawn on the player?
                    save = true, -- do you want the vehicle to save in the players garage?
                    label = data.label -- vehicle name from coinshop
                })

                Configuration.notify('This new vehicle seems super cool')
            end
        },
    }
}