// The suit part
/obj/item/clothing/suit/storage/hooded/wearable_mob
	name = "goo suit"
	desc = "A suit made of a friend! Probably a friend, anyway."
	icon_state = "carp_casual"
	item_state_slots = list(slot_r_hand_str = "carp_casual", slot_l_hand_str = "carp_casual")
	
	body_parts_covered = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	flags_inv = HIDEJUMPSUIT | HIDETIE | HIDEHOLSTER
	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL | AIRTIGHT
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	cold_protection = UPPER_TORSO | LOWER_TORSO | ARMS | LEGS
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02

	slowdown = 1 //Balancing?

	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/emergency/oxygen,/obj/item/device/suit_cooling_unit)

	valid_accessory_slots = null
	
	action_button_name = "Toggle Head Coverage"
	hoodtype = /obj/item/clothing/head/hood/wearable_mob

	var/mob/living/worn_mob

/obj/item/clothing/suit/storage/hooded/wearable_mob/New(loc,var/mob/living/wearable)
	..(loc)
	if(wearable)
		put_mob(wearable)

/obj/item/clothing/suit/storage/hooded/wearable_mob/Destroy()
	if(worn_mob)
		undo_wearing(ismob(loc) ? loc : null)
	return ..()

/obj/item/clothing/suit/storage/hooded/wearable_mob/dropped()
	if(pockets)
		var/atom/dest = drop_location(src)
		for(var/obj/item/I in pockets)
			pockets.remove_from_storage(I, dest)
	qdel(src)

/obj/item/clothing/suit/storage/hooded/wearable_mob/proc/put_mob(var/mob/living/wearable)
	wearable.be_worn(src)
	wearable.forceMove(src)
	worn_mob = wearable

/obj/item/clothing/suit/storage/hooded/wearable_mob/proc/undo_wearing(var/mob/user)
	if(user)
		to_chat(user,"<span class='notice'>[worn_mob] bloops back into their normal shape under you as you remove them.</span>")
		worn_mob.forceMove(drop_location(user))
	else
		worn_mob.forceMove(drop_location(src))

	worn_mob.stop_being_worn(src)
	worn_mob = null

// The "helmet" part, a hood
/obj/item/clothing/head/hood/wearable_mob
	name = "goo helmet"
	desc = "A helmet made of some sort of amorphous material."
	icon_state = "carp_casual"
	item_state_slots = list(slot_r_hand_str = "carp_casual", slot_l_hand_str = "carp_casual")
	
	flags = PHORONGUARD
	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL | AIRTIGHT
	body_parts_covered = HEAD | FACE | EYES
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	cold_protection = HEAD
	permeability_coefficient = 0.01

	valid_accessory_slots = null
