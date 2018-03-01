/datum/admin_secret_item/admin_secret/show_ai_laws
	name = "Show AI laws"

/datum/admin_secret_item/admin_secret/show_ai_laws/execute(var/mob/user)
	. = ..()
	if(.)
		user.client.holder.output_ai_laws()

/var/global/datum/telltale/code_modules_admin_secrets_admin_secrets_show_ai_laws_dm = new("[__FILE__]")
