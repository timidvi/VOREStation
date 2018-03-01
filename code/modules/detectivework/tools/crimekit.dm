//crime scene kit
/obj/item/weapon/storage/briefcase/crimekit
	name = "crime scene kit"
	desc = "A stainless steel-plated carrycase for all your forensic needs. Feels heavy."
	icon = 'icons/obj/forensics.dmi'
	icon_state = "case"
	storage_slots = 14

/obj/item/weapon/storage/briefcase/crimekit/New()
	..()
	new /obj/item/weapon/storage/box/swabs(src)
	new /obj/item/weapon/storage/box/fingerprints(src)
	new /obj/item/weapon/reagent_containers/spray/luminol(src)
	new /obj/item/device/uv_light(src)
	new /obj/item/weapon/forensics/sample_kit(src)
	new /obj/item/weapon/forensics/sample_kit/powder(src)
/var/global/datum/telltale/code_modules_detectivework_tools_crimekit_dm = new("[__FILE__]")
