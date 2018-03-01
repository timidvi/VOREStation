/var/global/spacevines_spawned = 0

/datum/event/spacevine
	announceWhen	= 60

/datum/event/spacevine/start()
	spacevine_infestation()
	spacevines_spawned = 1

/datum/event/spacevine/announce()
	level_seven_announcement()

/var/global/datum/telltale/code_modules_events_spacevine_dm = new("[__FILE__]")
