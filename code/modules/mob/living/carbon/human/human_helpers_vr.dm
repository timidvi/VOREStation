var/static/icon/ingame_hud_vr = icon('icons/mob/hud_vr.dmi')
var/static/icon/ingame_hud_med_vr = icon('icons/mob/hud_med_vr.dmi')

/mob/living/carbon/human/make_hud_overlays()
	. = ..()
	hud_list[HEALTH_VR_HUD]   = gen_hud_image(ingame_hud_med_vr, src, "100", plane = PLANE_CH_HEALTH_VR)
	hud_list[STATUS_R_HUD]    = gen_hud_image(ingame_hud_vr, src, plane = PLANE_CH_STATUS_R)
	hud_list[BACKUP_HUD]      = gen_hud_image(ingame_hud_vr, src, plane = PLANE_CH_BACKUP)
	hud_list[VANTAG_HUD]      = gen_hud_image(ingame_hud_vr, src, plane = PLANE_CH_VANTAG)

/var/global/datum/telltale/code_modules_mob_living_carbon_human_human_helpers_vr_dm = new("[__FILE__]")
