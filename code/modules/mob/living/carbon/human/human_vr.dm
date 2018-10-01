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
	return species ? species.handle_wearing(wearing_item) : null

/mob/living/carbon/human/stop_being_worn(var/obj/wearing_item)
	return species ? species.handle_stop_wearing(wearing_item) : null
