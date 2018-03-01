/area/engineering/power_alert(var/alarming)
	if (alarming)
		investigate_log("has a power alarm!","singulo")
	..()

/var/global/datum/telltale/code_modules_power_singularity_investigate_dm = new("[__FILE__]")
