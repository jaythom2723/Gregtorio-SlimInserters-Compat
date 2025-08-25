greg_slim_compat = greg_slim_compat or {}
greg_slim_compat.util = greg_slim_compat.util or {}

local function _check_recipe_unlock(technology_effects, effect_to_check)
    for _, effect in pairs(technology_effects) do
        if effect.type == "unlock-recipe" and effect.recipe == effect_to_check.recipe then
            return true
        end
    end

    return false
end

-- changes the unlock technologies for all of the slim inserter variants to be compatible with gregtorio
greg_slim_compat.util.slim_inserter_technology_patch = function(technology_patch)
    for tech_name, effects in pairs(technology_patch) do
        for _, effect in pairs(effects) do
            -- check if the technology already contains the recipe unlocks
            if _check_recipe_unlock(data.raw.technology[tech_name].effects, effect) then goto continue end

            table.insert(data.raw.technology[tech_name].effects, effect)

            ::continue::
        end
    end
end
