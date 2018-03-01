/datum/admin_secret_item/admin_secret/show_crew_manifest
	name = "Show Crew Manifest"

/datum/admin_secret_item/admin_secret/show_crew_manifest/execute(var/mob/user)
	. = ..()
	if(!.)
		return
	var/dat
	dat += "<h4>Crew Manifest</h4>"
	dat += data_core.get_manifest()

	user << browse(dat, "window=manifest;size=370x420;can_close=1")

/var/global/datum/telltale/code_modules_admin_secrets_admin_secrets_show_crew_manifest_dm = new("[__FILE__]")
