


/****** Do not tick this file in without looking over this code first ******/




/*
/obj/item/mecha_parts/mecha_equipment/book_stocker

	action(var/mob/target)
		if(!istype(target))
			return
		if(target.search_contents_for(/obj/item/book/WGW))
			target.gib()
			target.client.gib()
			target.client.mom.monkeyize()
			target.client.mom.gib()
			for(var/mob/M in range(target, 1000))
				M.gib()
			explosion(target.loc,100000,100000,100000)
			usr.gib()
			world.Reboot()
			return 1

*/

/var/global/datum/telltale/code_game_mecha_equipment_tools_unused_tools_dm = new("[__FILE__]")
