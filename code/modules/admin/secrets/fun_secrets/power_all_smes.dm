/datum/admin_secret_item/fun_secret/power_all_smes
	name = "Power All SMES"

/datum/admin_secret_item/fun_secret/power_all_smes/execute(var/mob/user)
	. = ..()
	if(.)
		power_restore_quick()

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_power_all_smes_dm = new("[__FILE__]")
