/datum/admin_secret_item/admin_secret/show_game_mode
	name = "Show Game Mode"

/datum/admin_secret_item/admin_secret/show_game_mode/can_execute(var/mob/user)
	if(!ticker)
		return 0
	return ..()

/datum/admin_secret_item/admin_secret/show_game_mode/execute(var/mob/user)
	. = ..()
	if(!.)
		return
	if (ticker.mode) alert("The game mode is [ticker.mode.name]")
	else alert("For some reason there's a ticker, but not a game mode")

/var/global/datum/telltale/code_modules_admin_secrets_admin_secrets_show_game_mode_dm = new("[__FILE__]")
