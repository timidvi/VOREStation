/atom/movable/proc/can_be_injected_by(var/atom/injector)
	if(!Adjacent(get_turf(injector)))
		return FALSE
	if(!reagents)
		return FALSE
	if(!reagents.get_free_space())
		return FALSE
	return TRUE

/obj/can_be_injected_by(var/atom/injector)
	return is_open_container() && ..()

/mob/living/can_be_injected_by(var/atom/injector)
	return ..() && (can_inject(null, 0, BP_TORSO) || can_inject(null, 0, BP_GROIN))
/var/global/datum/telltale/code_modules_reagents_Chemistry_Reagents_Helpers_dm = new("[__FILE__]")
