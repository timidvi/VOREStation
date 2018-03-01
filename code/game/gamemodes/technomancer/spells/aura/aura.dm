/obj/item/weapon/spell/aura
	name = "aura template"
	desc = "If you can read me, the game broke!  Yay!"
	icon_state = "generic"
	cast_methods = null
	aspect = null
	var/glow_color = "#FFFFFF"

/obj/item/weapon/spell/aura/New()
	..()
	set_light(calculate_spell_power(7), calculate_spell_power(4), l_color = glow_color)
	processing_objects |= src
	log_and_message_admins("has started casting [src].")

/obj/item/weapon/spell/aura/Destroy()
	processing_objects -= src
	log_and_message_admins("has stopped maintaining [src].")
	return ..()

/obj/item/weapon/spell/aura/process()
	return

/var/global/datum/telltale/code_game_gamemodes_technomancer_spells_aura_aura_dm = new("[__FILE__]")
