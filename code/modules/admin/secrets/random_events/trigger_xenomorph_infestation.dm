/datum/admin_secret_item/random_event/trigger_xenomorph_infestation
	name = "Trigger a Xenomorph Infestation"

/datum/admin_secret_item/random_event/trigger_xenomorph_infestation/execute(var/mob/user)
	. = ..()
	if(.)
		return xenomorphs.attempt_random_spawn()

/var/global/datum/telltale/code_modules_admin_secrets_random_events_trigger_xenomorph_infestation_dm = new("[__FILE__]")
