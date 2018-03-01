/datum/admin_secret_item/fun_secret/send_strike_team
	name = "Send Strike Team"

/datum/admin_secret_item/fun_secret/send_strike_team/can_execute(var/mob/user)
	if(!ticker) return 0
	return ..()

/datum/admin_secret_item/fun_secret/send_strike_team/execute(var/mob/user)
	. = ..()
	if(.)
		return user.client.strike_team()

/var/global/datum/telltale/code_modules_admin_secrets_fun_secrets_send_strike_team_dm = new("[__FILE__]")
