/datum/controller/process/game_master/setup()
	name = "\improper GM controller"
	schedule_interval = 600 // every 60 seconds

/datum/controller/process/game_master/doWork()
	game_master.process()
/var/global/datum/telltale/code_controllers_Processes_game_master_dm = new("[__FILE__]")
