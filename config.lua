Config = {}

Config.Recipes = {
    {
        result = { name = "watering_can", label = "Watering Can", count = 1 },
        ingredients = {
            { name = "water_refill", count = 1 },
            { name = "wateringcan_empty", count = 1 }
        },
        usableItem = "water_refill",
        animation = {
            dict = "missheistfbisetup1",
            name = "hassle_intro_loop_f",
            time = 8000
        }
    },
    {
        result = { name = "rollpaper", label = "Rolling Paper", count = 6 },
        ingredients = {
            { name = "rollpapers", count = 1 },
        },
        usableItem = "rollpapers",
        animation = {
            dict = "missheistfbisetup1",
            name = "hassle_intro_loop_f",
            time = 5000
        }
    },
    -- {
    --     result = { name = "weapon_pistol", label = "Pistole", count = 1 },
    --     ingredients = {
    --         { name = "steel", count = 1 },
    --         { name = "wood", count = 5 }
    --     },
    --     usableItem = "steel",
    --     animation = {
    --         dict = "missheistfbisetup1",
    --         name = "hassle_intro_loop_f",
    --         time = 5000
    --     }
    -- },
}


