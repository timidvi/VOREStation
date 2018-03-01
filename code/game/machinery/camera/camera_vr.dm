/obj/machinery/camera
	layer = 4

/obj/machinery/camera/New()
	..()
	if (dir == 1) // idk why the fuck dir is not 2
		layer = 5
/var/global/datum/telltale/code_game_machinery_camera_camera_vr_dm = new("[__FILE__]")
