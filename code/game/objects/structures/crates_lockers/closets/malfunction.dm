/obj/structure/closet/malf/suits
	desc = "It's a storage unit for operational gear."
	icon_state = "syndicate"
	icon_closed = "syndicate"
	icon_opened = "syndicateopen"

/obj/structure/closet/malf/suits/New()
	..()
	new /obj/item/weapon/tank/jetpack/void(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/head/helmet/space/void(src)
	new /obj/item/clothing/suit/space/void(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/cell(src)
	new /obj/item/device/multitool(src)

/var/global/datum/telltale/code_game_objects_structures_crates_lockers_closets_malfunction_dm = new("[__FILE__]")
