/obj/effect/decal/cleanable
	var/list/random_icon_states = list()

/obj/effect/decal/cleanable/clean_blood(var/ignore = 0)
	if(!ignore)
		qdel(src)
		return
	..()

/obj/effect/decal/cleanable/New()
	if (random_icon_states && length(src.random_icon_states) > 0)
		src.icon_state = pick(src.random_icon_states)
	..()

/var/global/datum/telltale/code_game_objects_effects_decals_cleanable_dm = new("[__FILE__]")
