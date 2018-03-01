/*
	This state always returns STATUS_INTERACTIVE
*/
/var/global/datum/topic_state/interactive/interactive_state = new()

/datum/topic_state/interactive/can_use_topic(var/src_object, var/mob/user)
	return STATUS_INTERACTIVE

/var/global/datum/telltale/code_modules_nano_interaction_interactive_dm = new("[__FILE__]")
