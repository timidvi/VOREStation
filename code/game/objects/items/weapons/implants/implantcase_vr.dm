/obj/item/weapon/implantcase/vrlanguage
	name = "glass case - 'language'"
	desc = "A case containing a language implant."
	icon_state = "implantcase-r"

/obj/item/weapon/implantcase/vrlanguage/New()
	src.imp = new /obj/item/weapon/implant/vrlanguage( src )
	..()
	return
/var/global/datum/telltale/code_game_objects_items_weapons_implants_implantcase_vr_dm = new("[__FILE__]")
