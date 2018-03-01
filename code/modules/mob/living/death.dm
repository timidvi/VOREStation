/mob/living/death()
	clear_fullscreens()
	//VOREStation Edit - Mob spawner stuff
	if(source_spawner)
		source_spawner.get_death_report(src)
		source_spawner = null
	//VOREStation Edit End
	. = ..()
/var/global/datum/telltale/code_modules_mob_living_death_dm = new("[__FILE__]")
