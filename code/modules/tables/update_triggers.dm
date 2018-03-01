/obj/structure/window/New()
	..()
	for(var/obj/structure/table/T in view(src, 1))
		T.update_connections()
		T.update_icon()

/obj/structure/window/Destroy()
	var/oldloc = loc
	. = ..()
	for(var/obj/structure/table/T in view(oldloc, 1))
		T.update_connections()
		T.update_icon()

/obj/structure/window/Move()
	var/oldloc = loc
	. = ..()
	if(loc != oldloc)
		for(var/obj/structure/table/T in view(oldloc, 1) | view(loc, 1))
			T.update_connections()
			T.update_icon()
/var/global/datum/telltale/code_modules_tables_update_triggers_dm = new("[__FILE__]")
