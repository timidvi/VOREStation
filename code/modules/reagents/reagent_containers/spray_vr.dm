/obj/item/weapon/reagent_containers/spray/windowsealant
	name = "Krak-b-gone"
	desc = "A spray bottle of silicate sealant for rapid window repair."
	icon = 'icons/obj/items_vr.dmi'
	icon_state = "windowsealant"
	item_state = "spraycan"
	possible_transfer_amounts = null
	volume = 80

/obj/item/weapon/reagent_containers/spray/windowsealant/New()
	..()
	reagents.add_reagent("silicate", 80)
/var/global/datum/telltale/code_modules_reagents_reagent_containers_spray_vr_dm = new("[__FILE__]")
