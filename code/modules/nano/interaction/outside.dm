/var/global/datum/topic_state/default/outside/outside_state = new()

/datum/topic_state/default/outside/can_use_topic(var/src_object, var/mob/user)
	if(user in src_object)
		return STATUS_CLOSE
	return ..()

/var/global/datum/telltale/code_modules_nano_interaction_outside_dm = new("[__FILE__]")
