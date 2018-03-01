/mob/living/simple_animal/mouse
	no_vore = 1 //Mice can't eat others due to the amount of bugs caused by it.




/mob/living/simple_animal/mouse/attack_hand(mob/living/hander)
	src.get_scooped(hander) //For one-click mouse scooping under any conditions. They knew what they were getting into!

/var/global/datum/telltale/code_modules_mob_living_simple_animal_animals_mouse_vr_dm = new("[__FILE__]")
