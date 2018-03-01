
proc/HasAbove(var/z)
	return 0
proc/HasBelow(var/z)
	return 0
// These give either the turf or null.
proc/GetAbove(var/turf/turf)
	return null
proc/GetBelow(var/turf/turf)
	return null
/var/global/datum/telltale/code_modules_multiz_disabled_dm = new("[__FILE__]")
