/mob/living/carbon/human/Login()
	..()
	update_hud()
	if(species) species.handle_login_special(src)
	return
/var/global/datum/telltale/code_modules_mob_living_carbon_human_login_dm = new("[__FILE__]")
