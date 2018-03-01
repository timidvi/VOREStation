/mob/living/proc/ventcrawl()
	set name = "Crawl through Vent"
	set desc = "Enter an air vent and crawl through the pipe system."
	set category = "Abilities"
	var/pipe = start_ventcrawl()
	if(pipe)
		handle_ventcrawl()

/var/global/datum/telltale/code_modules_ventcrawl_ventcrawl_verb_dm = new("[__FILE__]")
