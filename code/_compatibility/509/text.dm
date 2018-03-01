#if DM_VERSION < 510

/proc/replacetext(text, find, replacement)
	return jointext(splittext(text, find), replacement)

#endif
/var/global/datum/telltale/code__compatibility_____text_dm = new("[__FILE__]")
