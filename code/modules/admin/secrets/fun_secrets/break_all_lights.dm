/datum/admin_secret_item/fun_secret/break_all_lights
	name = "Break All Lights"

/datum/admin_secret_item/fun_secret/break_all_lights/execute(var/mob/user)
	. = ..()
	if(.)
		lightsout(0,0)

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_break_all_lights_dm = new("[__FILE__]")
