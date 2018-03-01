// Special floor type for Point of Interests.

/turf/simulated/floor/dungeon
	block_tele = TRUE // Anti-cheese.

/turf/simulated/floor/dungeon/ex_act()
	return
/var/global/datum/telltale/code_game_turfs_simulated_dungeon_floor_dm = new("[__FILE__]")
