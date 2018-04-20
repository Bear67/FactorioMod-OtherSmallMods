require "lib/utilities/prototyping"

--------------------------------------------------------------------------------
----- Basic science pack 2                                                 -----
--------------------------------------------------------------------------------
-- disable the recipe
data.raw["recipe"]["science-pack-2"].enabled = false

-- remove recipe unlock from other technologies
removeRecipeUnlock("oil-processing", "chemical-plant")

-- create research for recipes
data:extend({
  {
    type = "technology",
    name = "basic-science-research-1",
    icon = "__MoreScience__/graphics/science-symbol.png",
    icon_size = 2000,
    prerequisites = {
      "automation-2",
      "logistics",
      "steel-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-science-fluid-1",
      },
      {
        type = "unlock-recipe",
        recipe = "basic-science-fluid-2",
      },
      {
        type = "unlock-recipe",
        recipe = "science-pack-2",
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant",
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
        {"science-pack-1", 2},
      },
      time = 5
    },
    upgrade = false,
    order = "c-a"
  },
})

-- add prerequisites on the technology
removePrerequisiteTechnology("research-speed-1", "electronics")
addPrerequisiteTechnology("research-speed-2", "basic-science-research-1")

removePrerequisiteTechnology("electric-energy-distribution-1", "electronics")
removePrerequisiteTechnology("electric-energy-distribution-1", "steel-processing")
addPrerequisiteTechnology("electric-energy-distribution-1", "basic-science-research-1")



--------------------------------------------------------------------------------
----- Basic science pack 2 - bottling                                      -----
--------------------------------------------------------------------------------
data:extend({
  {
    type = "technology",
    name = "bottling-research",
    icon = "__MoreScience__/graphics/science-symbol.png",
    icon_size = 2000,
    prerequisites = {
      "basic-science-research-1",
      "fluid-handling",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "glass",
      },
      {
        type = "unlock-recipe",
        recipe = "cork",
      },
      {
        type = "unlock-recipe",
        recipe = "empty-bottle",
      },
      {
        type = "unlock-recipe",
        recipe = "purified-water",
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
        {"science-pack-1", 2},
      },
      time = 5
    },
    upgrade = false,
    order = "c-a"
  },
})

-- Fix research tree for bottling-research
addPrerequisiteTechnology("research-speed-2", "bottling-research")



--------------------------------------------------------------------------------
----- Basic science pack 3                                                 -----
--------------------------------------------------------------------------------

-- remove recipe unlock from other technologies
removeRecipeUnlock("advanced-electronics", "science-pack-3")

-- create research for recipes
data:extend({
  {
    type = "technology",
    name = "basic-science-research-2",
    icon = "__MoreScience__/graphics/science-symbol.png",
    icon_size = 2000,
    prerequisites = {
      "basic-science-research-1",
      "advanced-electronics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-science-fluid-3",
      },
      {
        type = "unlock-recipe",
        recipe = "science-pack-3",
      },
    },
    unit =
    {
      count = 75,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 3},
        {"basic-automation-science-pack", 5},
      },
      time = 5
    },
    order = "a-d-c"
  },
})

-- add prerequisites on the technology
addPrerequisiteTechnology("research-speed-4", "basic-science-research-2")
addPrerequisiteTechnology("battery-mk2-equipment", "advanced-electronics-2")

-- logistics network
addPrerequisiteTechnology("electric-engine", "basic-science-research-2")
addScienceIngredient("electric-engine", 1, "science-pack-3")
addScienceIngredient("robotics", 1, "science-pack-3")
addScienceIngredient("flying", 1, "science-pack-3")
addScienceIngredient("construction-robotics", 1, "science-pack-3")
addScienceIngredient("logistic-robotics", 1, "science-pack-3")

-- train network
addScienceIngredient("railway", 1, "science-pack-3")
addScienceIngredient("automated-rail-transportation", 1, "science-pack-3")
addScienceIngredient("rail-signals", 1, "science-pack-3")
addScienceIngredient("fluid-wagon", 1, "science-pack-3")
addScienceIngredient("logistics-2", 1, "science-pack-3")

-- vehicles
addScienceIngredient("automobilism", 1, "science-pack-3")

-- automation
addPrerequisiteTechnology("advanced-material-processing-2", "basic-science-research-2")
addPrerequisiteTechnology("advanced-oil-processing", "basic-science-research-2")
addPrerequisiteTechnology("advanced-electronics-2", "basic-science-research-2")
addPrerequisiteTechnology("electric-energy-distribution-2", "basic-science-research-2")

-- automation: modules
addPrerequisiteTechnology("speed-module-2", "basic-science-research-2")
addPrerequisiteTechnology("productivity-module-2", "basic-science-research-2")
addPrerequisiteTechnology("effectivity-module-2", "basic-science-research-2")

-- power
addPrerequisiteTechnology("nuclear-power", "basic-science-research-2")

-- automation bonusses
addPrerequisiteTechnology("mining-productivity-4", "basic-science-research-2")



--------------------------------------------------------------------------------
----- Advanced science pack 1                                              -----
--------------------------------------------------------------------------------

-- remove recipe unlock from other technologies
removeRecipeUnlock("advanced-material-processing-2", "production-science-pack")

-- create research for recipes
data:extend({
  {
    type = "technology",
    name = "advanced-science-research-1",
    icon = "__MoreScience__/graphics/science-symbol.png",
    icon_size = 2000,
    prerequisites = {
      "basic-science-research-2",
      "advanced-material-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-science-fluid-1",
      },
      {
        type = "unlock-recipe",
        recipe = "production-science-pack",
      },
    },
    unit =
    {
      count = 300,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 3},
        {"science-pack-3", 5},
        {"basic-automation-science-pack", 7},
      },
      time = 5
    },
    order = "a-d-c"
  },
})

-- add prerequisites on the technology
addPrerequisiteTechnology("research-speed-5", "advanced-science-research-1")

-- automation
addPrerequisiteTechnology("automation-3", "advanced-science-research-1")
addPrerequisiteTechnology("coal-liquefaction", "advanced-science-research-1")

-- automation: modules
addPrerequisiteTechnology("productivity-module-3", "advanced-science-research-1")

-- logistics network
addPrerequisiteTechnology("worker-robots-storage-2", "advanced-science-research-1")
addPrerequisiteTechnology("worker-robots-speed-3", "advanced-science-research-1")
addPrerequisiteTechnology("character-logistic-slots-4", "advanced-science-research-1")

-- power
addPrerequisiteTechnology("nuclear-fuel-reprocessing", "advanced-science-research-1")

-- automation bonusses
addPrerequisiteTechnology("mining-productivity-8", "advanced-science-research-1")

-- logistics bonusses
addPrerequisiteTechnology("inserter-capacity-bonus-4", "advanced-science-research-1")
