/datum/controller/process/vote/setup()
	name = "vote"
	schedule_interval = 10 // every second

/datum/controller/process/vote/doWork()
	vote.process()

/var/global/datum/telltale/code_controllers_Processes_vote_dm = new("[__FILE__]")
