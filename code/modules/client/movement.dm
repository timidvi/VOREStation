
/client/New()
	..()
	dir = NORTH

/client/verb/spinleft()
	set name = "Spin View CCW"
	set category = "OOC"
	dir = turn(dir, 90)

/client/verb/spinright()
	set name = "Spin View CW"
	set category = "OOC"
	dir = turn(dir, -90)


/var/global/datum/telltale/code_modules_client_movement_dm = new("[__FILE__]")
