require 'lib/BugZilla/phaseCycler'


script.on_init(function(_)
  PhaseCycler:Init()
end)


script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  PhaseCycler:OnSettingsChanged(event)
end)


script.on_event(defines.events.on_tick, function(event)
  PhaseCycler:OnTick(event)
end)