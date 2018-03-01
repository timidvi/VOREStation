/mob/living/carbon/human/Logout()
	..()
	if(species) species.handle_logout_special(src)
	return
/var/global/datum/telltale/code_modules_mob_living_carbon_human_logout_dm = new("[__FILE__]")
