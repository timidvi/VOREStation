//Vorestation universal translator implant.

/obj/item/weapon/implanter/vrlanguage
	name = "implanter-language"

/obj/item/weapon/implanter/vrlanguage/New()
	src.imp = new /obj/item/weapon/implant/vrlanguage( src )
	..()
	update()
	return

/var/global/datum/telltale/code_game_objects_items_weapons_implants_implanter_vr_dm = new("[__FILE__]")
