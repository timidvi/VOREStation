var/datum/antagonist/mutineer/loyalist/loyalists

/datum/antagonist/mutineer/loyalist
	role_text = "Loyalist"
	role_text_plural = "Loyalists"
	id = MODE_LOYALIST

/datum/antagonist/mutineer/loyalist/New()
	..(1)
	loyalists = src

/var/global/datum/telltale/code_game_antagonist_mutiny_loyalist_dm = new("[__FILE__]")
