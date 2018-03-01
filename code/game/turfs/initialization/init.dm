/datum/turf_initializer/proc/InitializeTurf(var/turf/T)
	return

/area
	var/datum/turf_initializer/turf_initializer = null

/area/LateInitialize()
	. = ..()
	if(turf_initializer)
		for(var/turf/simulated/T in src)
			turf_initializer.InitializeTurf(T)

/var/global/datum/telltale/code_game_turfs_initialization_init_dm = new("[__FILE__]")
