/datum/event/spontaneous_appendicitis/start()
	for(var/mob/living/carbon/human/H in shuffle(living_mob_list))
		if(H.client && H.appendicitis())
			break

/var/global/datum/telltale/code_modules_events_spontaneous_appendicitis_dm = new("[__FILE__]")
