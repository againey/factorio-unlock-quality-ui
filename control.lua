local function lock_quality_interface()
	for force_name, force in pairs(game.forces) do
		force.lock_quality("quality-ui-unlocker")
	end
end

local function unlock_quality_interface()
	for force_name, force in pairs(game.forces) do
		force.unlock_quality("quality-ui-unlocker")
	end
end

local function on_init()
	if settings.global["unlock-quality-ui-unlock-quality-ui"].value then
		unlock_quality_interface()
	end
end

local function on_runtime_mod_setting_changed(event)
	if event.setting == "unlock-quality-ui-unlock-quality-ui" then
		if settings.global["unlock-quality-ui-unlock-quality-ui"].value then
			unlock_quality_interface()
		else
			lock_quality_interface()
		end
	end
end

script.on_init(on_init)
script.on_event(defines.events.on_runtime_mod_setting_changed, on_runtime_mod_setting_changed)
