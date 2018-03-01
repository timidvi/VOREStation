/datum/event/blob
	announceWhen	= 12
	endWhen			= 120

	var/obj/structure/blob/core/Blob


/datum/event/blob/start()
	var/turf/T = pick(blobstart)
	if(!T)
		kill()
		return

	Blob = new /obj/structure/blob/core/random_medium(T)


/datum/event/blob/tick()
	if(!Blob || !Blob.loc)
		Blob = null
		kill()
		return

/var/global/datum/telltale/code_modules_events_blob_dm = new("[__FILE__]")
