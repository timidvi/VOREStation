/datum/admin_secret_item/admin_secret/traitors_and_objectives
	name = "Show current traitors and objectives"

/datum/admin_secret_item/admin_secret/traitors_and_objectives/execute(var/mob/user)
	. = ..()
	if(.)
		user.client.holder.check_antagonists()

/var/global/datum/telltale/code_modules_admin_secrets_admin_secrets_traitors_and_objectives_dm = new("[__FILE__]")
