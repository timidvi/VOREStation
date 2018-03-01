/datum/admin_secret_item/fun_secret/remove_internal_clothing
	name = "Remove 'Internal' Clothing"

/datum/admin_secret_item/fun_secret/remove_internal_clothing/execute(var/mob/user)
	. = ..()
	if(!.)
		return

	for(var/obj/item/clothing/under/O in world)
		qdel(O)

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_remove_internal_clothing_dm = new("[__FILE__]")
