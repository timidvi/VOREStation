/datum/event/spontaneous_appendicitis/vorestation/start()
	for(var/mob/living/carbon/human/H in shuffle(living_mob_list))
		var/area/A = get_area(H)
		if(!A)
			continue
		if(!(A.z in using_map.station_levels))
			continue
		if(A.flags & RAD_SHIELDED)
			continue
		if(H.client && H.appendicitis())
			break

/var/global/datum/telltale/code_modules_events_spontaneous_appendicitis_vr_dm = new("[__FILE__]")
