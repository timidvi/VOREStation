/datum/admin_secret_item/admin_secret/show_signalers
	name = "Show Last Signalers"

/datum/admin_secret_item/admin_secret/show_signalers/name()
	return "Show Last [length(lastsignalers)] Signaler\s"

/datum/admin_secret_item/admin_secret/show_signalers/execute(var/mob/user)
	. = ..()
	if(!.)
		return

	var/dat = "<B>Showing last [length(lastsignalers)] signalers.</B><HR>"
	for(var/sig in lastsignalers)
		dat += "[sig]<BR>"
	user << browse(dat, "window=lastsignalers;size=800x500")

/var/global/datum/telltale/code_modules_admin_secrets_admin_secrets_show_signalers_dm = new("[__FILE__]")
