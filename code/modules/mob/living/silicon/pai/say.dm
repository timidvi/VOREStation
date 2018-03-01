/mob/living/silicon/pai/say(var/msg)
	if(silence_time)
		src << "<font color=green>Communication circuits remain uninitialized.</font>"
	else
		..(msg)
/var/global/datum/telltale/code_modules_mob_living_silicon_pai_say_dm = new("[__FILE__]")
