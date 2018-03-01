/mob/observer/eye/Life()
	..()
	// If we lost our client, reset the list of visible chunks so they update properly on return
	if(owner == src && !client)
		visibleChunks.Cut()
	/*else if(owner && !owner.client)
		visibleChunks.Cut()*/

/var/global/datum/telltale/code_modules_mob_freelook_life_dm = new("[__FILE__]")
