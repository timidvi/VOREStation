/*/datum/gear/head/cap/sol
	display_name = "cap, sol"
	path = /obj/item/clothing/head/soft/sol*/

/datum/gear/head/headbando
	display_name = "basic headband"
	path = /obj/item/clothing/head/fluff/headbando

/datum/gear/head/headbando/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)
/var/global/datum/telltale/code_modules_client_preference_setup_loadout_loadout_head_vr_dm = new("[__FILE__]")
