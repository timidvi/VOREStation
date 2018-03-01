/datum/holodeck_program
	var/target
	var/list/ambience = null

/datum/holodeck_program/New(var/target, var/list/ambience = null)
	src.target = target
	src.ambience = ambience

/var/global/datum/telltale/code_modules_holodeck_HolodeckPrograms_dm = new("[__FILE__]")
