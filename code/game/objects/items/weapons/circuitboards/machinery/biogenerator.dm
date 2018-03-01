#ifndef T_BOARD
#error T_BOARD macro is not defined but we need it!
#endif

/obj/item/weapon/circuitboard/biogenerator
	name = T_BOARD("biogenerator")
	build_path = /obj/machinery/biogenerator
	board_type = new /datum/frame/frame_types/machine
	origin_tech = list(TECH_DATA = 2)
	req_components = list(
							/obj/item/weapon/stock_parts/matter_bin = 1,
							/obj/item/weapon/stock_parts/manipulator = 1)
/var/global/datum/telltale/code_game_objects_items_weapons_circuitboards_machinery_biogenerator_dm = new("[__FILE__]")
