/mob/living/silicon/pai/death(gibbed)
	if(card)
		card.removePersonality()
		//if(gibbed) //VOREStation Edit Start. This prevents pAIs from joining back into their card after the card's killed
		src.loc = get_turf(card)
		qdel(card)
		/*else
			close_up()
			qdel(card)*/ //VOREStation Edit End.
	if(mind)
		qdel(mind)
	..(gibbed)
	ghostize()
	qdel(src)

/var/global/datum/telltale/code_modules_mob_living_silicon_pai_death_dm = new("[__FILE__]")
