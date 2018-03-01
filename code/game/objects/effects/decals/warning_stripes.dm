/obj/effect/decal/warning_stripes
	icon = 'icons/effects/warning_stripes.dmi'
	layer = 2

/obj/effect/decal/warning_stripes/New()
	. = ..()
	var/turf/T=get_turf(src)
	var/image/I=image(icon, icon_state = icon_state, dir = dir)
	I.color=color
	T.overlays += I
	qdel(src)

/var/global/datum/telltale/code_game_objects_effects_decals_warning_stripes_dm = new("[__FILE__]")
