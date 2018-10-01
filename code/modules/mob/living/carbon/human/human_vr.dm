//Crazy alternate human stuff
/mob/living/carbon/human/New()
	. = ..()

	var/animal = pick("cow","chicken_brown", "chicken_black", "chicken_white", "chick", "mouse_brown", "mouse_gray", "mouse_white", "lizard", "cat2", "goose", "penguin")
	var/image/img = image('icons/mob/animal.dmi', src, animal)
	img.override = TRUE
	add_alt_appearance("animals", img, displayTo = alt_farmanimals)

/mob/living/carbon/human/Destroy()
	alt_farmanimals -= src

	. = ..()


/mob/living/carbon/human/convert_to_suit(var/mob/living/user)
	if(!species || !species.can_be_worn)
		return
		
	var/obj/item/clothing/suit/storage/hooded/wearable_mob/newsuit = new(user,src)
	var/value = user.equip_to_slot_or_del(newsuit, slot_wear_suit)

	return value

/mob/living/carbon/human/be_worn(var/obj/wearing_item)
	drop_most_big_things()
	return species ? species.handle_wearing(wearing_item, src) : null

/mob/living/carbon/human/stop_being_worn(var/obj/wearing_item)
	return species ? species.handle_stop_wearing(wearing_item, src) : null

/mob/living/carbon/human/proc/drop_most_big_things()
	var/list/things_to_drop = contents.Copy()
	var/list/things_to_not_drop = list(w_uniform,nif,l_store,r_store,wear_id,l_ear,r_ear) //And whatever else we decide for balancing.
	
	/* No for now, because insta-pepperspray or flash on unblob
	if(l_hand && l_hand.w_class <= ITEMSIZE_SMALL) //Hands but only if small or smaller
		things_to_not_drop += l_hand
	if(r_hand && r_hand.w_class <= ITEMSIZE_SMALL)
		things_to_not_drop += r_hand
	*/

	things_to_drop -= things_to_not_drop //Crunch the lists
	things_to_drop -= organs //Mah armbs
	things_to_drop -= internal_organs //Mah sqeedily spooch
	
	for(var/obj/item/I in things_to_drop) //rip hoarders
		drop_from_inventory(I)

	if(w_uniform && istype(w_uniform,/obj/item/clothing)) //No webbings tho. We do this after in case a suit was in the way
		var/obj/item/clothing/uniform = w_uniform
		if(LAZYLEN(uniform.accessories))
			for(var/obj/item/clothing/accessory/A in uniform.accessories)
				uniform.remove_accessory(null,A) //First param is user, but adds fingerprints and messages
