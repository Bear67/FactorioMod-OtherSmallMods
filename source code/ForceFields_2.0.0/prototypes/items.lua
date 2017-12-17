data:extend(
  {
    {
      type = "item-subgroup",
      name = "forcefields",
      group = "combat",
      order = "z"
    },

    {
      type = "item",
      name = "forcefield-emitter",
      icon = "__ForceFields__/graphics/forcefield-emitter-icon.png",
      icon_size = 32,
      flags = {"goes-to-quickbar"},
      subgroup = "forcefields",
      order = "f[forcefield-emitter]",
      place_result = "forcefield-emitter",
      stack_size = 50
    },
    
    {
      type = "item",
      name = "forcefield-tool",
      icon = "__ForceFields__/graphics/config-tool.png",
      icon_size = 32,
      flags = {"goes-to-quickbar"},
      subgroup = "forcefields",
      order = "f[forcefield-tool]",
      place_result = "forcefield-tool",
      stack_size = 2
    }
  }
)