/datum/admin_secret_item/fun_secret/make_all_areas_powered
	name = "Make All Areas Powered"

/datum/admin_secret_item/fun_secret/make_all_areas_powered/execute(var/mob/user)
	. = ..()
	if(.)
		power_restore()

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_make_all_areas_powered_dm = new("[__FILE__]")
