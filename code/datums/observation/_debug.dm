/****************
* Debug Support *
****************/
var/datum/all_observable_events/all_observable_events = new()

/datum/all_observable_events
	var/list/events

/datum/all_observable_events/New()
	events = list()
	..()

/var/global/datum/telltale/code_datums_observation__debug_dm = new("[__FILE__]")
