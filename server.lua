ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(500)
    end

    for _, recipe in ipairs(Config.Recipes) do
        ESX.RegisterUsableItem(recipe.usableItem, function(source)
            TriggerClientEvent('crafting:startCrafting', source, recipe.usableItem)
        end)
    end
end)

RegisterServerEvent('crafting:removeIngredients')
AddEventHandler('crafting:removeIngredients', function(recipe)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    if xPlayer == nil then
        print("Error: xPlayer could not be found (source: " .. tostring(source) .. ")")
        return
    end

    local hasAllIngredients = true

    for _, ingredient in ipairs(recipe.ingredients) do
        local item = xPlayer.getInventoryItem(ingredient.name)
        if item.count < ingredient.count then
            hasAllIngredients = false
            break
        end
    end

    if hasAllIngredients then
        for _, ingredient in ipairs(recipe.ingredients) do
            xPlayer.removeInventoryItem(ingredient.name, ingredient.count)
        end
        xPlayer.addInventoryItem(recipe.result.name, recipe.result.count)

        TriggerClientEvent("esx:showNotification", source, "You have made " .. recipe.result.count .. "x " .. recipe.result.label .. ".")
    else
        TriggerClientEvent("esx:showNotification", source, "You don't have all the necessary items or ingredients.")
    end
end)

