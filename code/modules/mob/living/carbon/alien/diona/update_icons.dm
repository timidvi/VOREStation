/mob/living/carbon/alien/diona/update_icons()

	if(stat == DEAD)
		icon_state = "[initial(icon_state)]_dead"
	else if(lying || resting || stunned)
		icon_state = "[initial(icon_state)]_sleep"
	else
		icon_state = "[initial(icon_state)]"

	overlays.Cut()
	if(hat)
		overlays |= get_hat_icon(hat, 0, -8)
/var/global/datum/telltale/code_modules_mob_living_carbon_alien_diona_update_icons_dm = new("[__FILE__]")
