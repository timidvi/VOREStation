/datum/admin_secret_item/fun_secret/fix_all_lights
	name = "Fix All Lights"

/datum/admin_secret_item/fun_secret/fix_all_lights/execute(var/mob/user)
	. = ..()
	if(!.)
		return

	for(var/obj/machinery/light/L in world)
		L.fix()

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_fix_all_lights_dm = new("[__FILE__]")
