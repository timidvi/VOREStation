/mob/observer/dead/Logout()
	..()
	spawn(0)
		if(src && !key)	//we've transferred to another mob. This ghost should be deleted.
			qdel(src)

/var/global/datum/telltale/code_modules_mob_dead_observer_logout_dm = new("[__FILE__]")
