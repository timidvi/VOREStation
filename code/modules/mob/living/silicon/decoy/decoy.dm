/mob/living/silicon/decoy
	name = "AI"
	icon = 'icons/mob/AI.dmi'//
	icon_state = "ai"
	anchored = 1 // -- TLE
	canmove = 0

/mob/living/silicon/decoy/New()
	src.icon = 'icons/mob/AI.dmi'
	src.icon_state = "ai"
	src.anchored = 1
	src.canmove = 0
/var/global/datum/telltale/code_modules_mob_living_silicon_decoy_decoy_dm = new("[__FILE__]")
