greg_slim_compat = greg_slim_compat or {}

local technology_patch = {
    ["logistic-science-pack"] = {
        { type = "unlock-recipe", recipe = "basic-slim-inserter" },
        { type = "unlock-recipe", recipe = "basic-double-slim-inserter" },
        { type = "unlock-recipe", recipe = "basic-loader-slim-inserter" },
        { type = "unlock-recipe", recipe = "long-slim-inserter" },
        { type = "unlock-recipe", recipe = "long-double-slim-inserter" },
    },
    ["fast-inserter"] = {
        { type = "unlock-recipe", recipe = "fast-slim-inserter" },
        { type = "unlock-recipe", recipe = "fast-double-slim-inserter" },
        { type = "unlock-recipe", recipe = "fast-loader-slim-inserter" }
    },
    ["bulk-inserter"] = {
        { type = "unlock-recipe", recipe = "stack-slim-inserter" },
        { type = "unlock-recipe", recipe = "stack-double-slim-inserter" },
        { type = "unlock-recipe", recipe = "fast2-loader-slim-inserter" }
    }
}

greg_slim_compat.util.slim_inserter_technology_patch(technology_patch)
