/datum/teleport/proc/try_televore()
	//Destination is in a belly
	if(isbelly(destination.loc))
		var/obj/belly/B = destination.loc
	
		teleatom.forceMove(get_turf(B)) //So we can splash the sound and sparks and everything.
		playSpecials(destination,effectout,soundout)
		teleatom.forceMove(B)
		return 1

	//No fun!
	return 0
	
/var/global/datum/telltale/code_datums_helper_datums_teleport_vr_dm = new("[__FILE__]")
