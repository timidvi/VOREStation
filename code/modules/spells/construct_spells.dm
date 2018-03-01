//////////////////////////////Construct Spells/////////////////////////

proc/findNullRod(var/atom/target)
	if(istype(target,/obj/item/weapon/nullrod))
		return 1
	else if(target.contents)
		for(var/atom/A in target.contents)
			if(findNullRod(A))
				return 1
	return 0

/var/global/datum/telltale/code_modules_spells_construct_spells_dm = new("[__FILE__]")
