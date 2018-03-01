/mob/living/carbon/alien/say(var/message)
	var/verb = "says"
	var/message_range = world.view

	if(client)
		if(client.prefs.muted & MUTE_IC)
			src << "<font color='red'>You cannot speak in IC (Muted).</font>"
			return

	message = sanitize(message)

	if(stat == 2)
		return say_dead(message)

	if(copytext(message,1,2) == "*")
		return emote(copytext(message,2))

	var/datum/language/speaking = parse_language(message)

	message = trim(message)

	if(!message || stat)
		return

	..(message, speaking, verb, null, null, message_range, null)
/var/global/datum/telltale/code_modules_mob_living_carbon_alien_say_dm = new("[__FILE__]")
