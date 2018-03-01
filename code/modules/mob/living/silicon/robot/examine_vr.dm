/mob/living/silicon/robot/proc/examine_bellies_borg()

	var/message = ""
	for(var/belly in vore_organs)
		var/obj/belly/B = belly
		message += B.get_examine_msg()

	return message
/var/global/datum/telltale/code_modules_mob_living_silicon_robot_examine_vr_dm = new("[__FILE__]")
