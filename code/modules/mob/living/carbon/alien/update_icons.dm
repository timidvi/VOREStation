/mob/living/carbon/alien/regenerate_icons()
	overlays = list()
	update_icons()

/mob/living/carbon/alien/update_icons()

	var/state = 0
	if(amount_grown > max_grown*0.75)
		state = 2
	else if(amount_grown > max_grown*0.25)
		state = 1

	if(stat == DEAD)
		icon_state = "[initial(icon_state)][state]_dead"
	else if (stunned)
		icon_state = "[initial(icon_state)][state]_stun"
	else if(lying || resting)
		icon_state = "[initial(icon_state)][state]_sleep"
	else
		icon_state = "[initial(icon_state)][state]"

/var/global/datum/telltale/code_modules_mob_living_carbon_alien_update_icons_dm = new("[__FILE__]")
