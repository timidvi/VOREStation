var/global/list/turf/processing_turfs = list()

/datum/controller/process/turf/setup()
	name = "turf"
	schedule_interval = 20 // every 2 seconds

/datum/controller/process/turf/doWork()
	for(last_object in processing_turfs)
		var/turf/T = last_object
		if(T.process() == PROCESS_KILL)
			processing_turfs.Remove(T)
		SCHECK

/datum/controller/process/turf/statProcess()
	..()
	stat(null, "[processing_turfs.len] turf\s")
/var/global/datum/telltale/code_controllers_Processes_turf_dm = new("[__FILE__]")
