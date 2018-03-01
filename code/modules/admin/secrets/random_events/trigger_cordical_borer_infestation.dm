/datum/admin_secret_item/random_event/trigger_cordical_borer_infestation
	name = "Trigger a Cortical Borer infestation"

/datum/admin_secret_item/random_event/trigger_cordical_borer_infestation/execute(var/mob/user)
	. = ..()
	if(.)
		return borers.attempt_random_spawn()

/var/global/datum/telltale/code_modules_admin_secrets_random_events_trigger_cordical_borer_infestation_dm = new("[__FILE__]")
