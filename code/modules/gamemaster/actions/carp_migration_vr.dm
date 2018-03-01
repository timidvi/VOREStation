/datum/gm_action/carp_migration/announce()
	var/announcement = "Unknown biological entities have been detected near the asteroid, please stand-by."
	command_announcement.Announce(announcement, "Lifesign Alert")
/var/global/datum/telltale/code_modules_gamemaster_actions_carp_migration_vr_dm = new("[__FILE__]")
