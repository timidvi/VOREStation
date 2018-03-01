/datum/admin_secret_item/fun_secret/break_some_lights
	name = "Break Some Lights"

/datum/admin_secret_item/fun_secret/break_some_lights/execute(var/mob/user)
	. = ..()
	if(.)
		lightsout(1,2)

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_break_some_lights_dm = new("[__FILE__]")
