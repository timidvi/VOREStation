/turf/simulated/floor/flesh
	name = "flesh"
	desc = "This slick flesh ripples and squishes under your touch"
	icon_state = "flesh-floor"
	icon = 'icons/turf/stomach_vr.dmi'

/turf/simulated/floor/flesh/colour
	name = "flesh"
	desc = "This slick flesh ripples and squishes under your touch"
	icon_state = "colorable-floor"
	icon = 'icons/turf/stomach_vr.dmi'

/turf/simulated/floor/flesh/attackby()
	return

/turf/simulated/floor/flesh/ex_act(severity)
	return
/var/global/datum/telltale/code_game_turfs_simulated_floor_types_vr_dm = new("[__FILE__]")
