var/maze_cell_count = 0

/datum/maze_cell
	var/name
	var/uid
	var/x
	var/y
	var/ox
	var/oy

/datum/maze_cell/New(var/nx,var/ny,var/nox,var/noy)
	maze_cell_count++
	uid = maze_cell_count
	name = "cell #[uid]"
	x = nx
	y = ny
	ox = nox
	oy = noy
/var/global/datum/telltale/code_modules_random_map_mazes_maze_cell_dm = new("[__FILE__]")
