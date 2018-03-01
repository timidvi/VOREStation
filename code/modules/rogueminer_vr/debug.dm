/client/proc/debug_rogueminer()
	set category = "Debug"
	set name = "Debug RogueMiner"
	set desc = "Debug the RogueMiner controller."

	if(!holder)	return
	debug_variables(rm_controller)
	feedback_add_details("admin_verb","DRM")
/var/global/datum/telltale/code_modules_rogueminer_vr_debug_dm = new("[__FILE__]")
