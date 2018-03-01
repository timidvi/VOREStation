/mob/living/silicon/robot/Login()
	..()
	regenerate_icons()
	update_hud()

	show_laws(0)

	// Override the DreamSeeker macro with the borg version!
	client.set_hotkeys_macro("borgmacro", "borghotkeymode")

	// Forces synths to select an icon relevant to their module
	if(!icon_selected)
		choose_icon(icon_selection_tries, module_sprites)

/var/global/datum/telltale/code_modules_mob_living_silicon_robot_login_dm = new("[__FILE__]")
