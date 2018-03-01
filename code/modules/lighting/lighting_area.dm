/area
	luminosity           = TRUE
	var/dynamic_lighting = TRUE

/area/New()
	. = ..()

	if(dynamic_lighting)
		luminosity = FALSE
/var/global/datum/telltale/code_modules_lighting_lighting_area_dm = new("[__FILE__]")
