/datum/controller/process/event/setup()
	name = "event controller"
	schedule_interval = 20 // every 2 seconds

/datum/controller/process/event/doWork()
	event_manager.process()
/var/global/datum/telltale/code_controllers_Processes_event_dm = new("[__FILE__]")
