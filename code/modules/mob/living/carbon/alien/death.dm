/mob/living/carbon/alien/death(gibbed)
	if(!gibbed && dead_icon)
		icon_state = dead_icon
	return ..(gibbed,death_msg)
/var/global/datum/telltale/code_modules_mob_living_carbon_alien_death_dm = new("[__FILE__]")
