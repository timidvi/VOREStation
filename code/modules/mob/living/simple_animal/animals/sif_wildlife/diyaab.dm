/mob/living/simple_animal/retaliate/diyaab
	name = "diyaab"
	desc = "A small pack animal. Although omnivorous, it will hunt meat on occasion."
	faction = "diyaab"
	icon_state = "diyaab"
	icon_living = "diyaab"
	icon_dead = "diyaab_dead"
	icon = 'icons/jungle.dmi'

	faction = "diyaab"
	cooperative = 1

	maxHealth = 25
	health = 25
	speed = 1
	move_to_delay = 1

	melee_damage_lower = 1
	melee_damage_upper = 8

	attacktext = list("gouged")
	cold_damage_per_tick = 0

	speak_chance = 5
	speak = list("Awrr?","Aowrl!","Worrl")
	emote_see = list("sniffs the air cautiously","looks around")
	emote_hear = list("snuffles")
/var/global/datum/telltale/code_modules_mob_living_simple_animal_animals_sif_wildlife_diyaab_dm = new("[__FILE__]")
