//
// Mapping subsystem handles initialization of random map elements at server start
// On VOREStation that means loading our random roundstart engine!
//
SUBSYSTEM_DEF(mapping)
	name = "Mapping"
	init_order = INIT_ORDER_MAPPING
	flags = SS_NO_FIRE

	var/obj/effect/landmark/engine_loader/engine_loader

/datum/controller/subsystem/mapping/Recover()
	flags |= SS_NO_INIT // Make extra sure we don't initialize twice.

/datum/controller/subsystem/mapping/Initialize(timeofday)
	loadWorld()
	loadEngine()
	// TODO - This probably should be here
	// // Pick a random away mission.
	// createRandomZlevel()
	// Mining generation probably should be here too
	// TODO - Other stuff related to maps and areas could be moved here too.  Look at /tg
	if(using_map)
		loadLateMaps()
	generateHoloMinimaps()
	..()

/datum/controller/subsystem/mapping/proc/loadWorld()
	var/dmm_suite/loader = new()
//	loader.load_map("maps/tether/tether-01-surface.dmm", 1, 1, 1 x_offset as num, y_offset as num, z_offset as num, cropMap as num, measureOnly as num, no_changeturf as num)

	var/list/files = list(
			"maps/tether/tether-01-surface1.dmm",
			"maps/tether/tether-02-surface2.dmm",
			"maps/tether/tether-03-surface3.dmm",
			"maps/tether/tether-04-transit.dmm",
			"maps/tether/tether-05-station1.dmm",
			"maps/tether/tether-06-station2.dmm",
			"maps/tether/tether-07-station3.dmm",
			"maps/tether/tether-08-mining.dmm",
			"maps/tether/tether-09-solars.dmm",
			"maps/tether/tether-10-colony.dmm"
		)
	// check that the total z count of all maps matches the list of traits
	testing("[__LINE__] - maxz=[world.maxz]")
	var/total_z = 0
	for (var/full_path in files)
		var/bounds = loader.load_map(file(full_path), 1, 1, 1, cropMap=FALSE, measureOnly=TRUE)
		files[full_path] = total_z  // save the start Z of this file
		total_z += bounds[MAP_MAXZ] - bounds[MAP_MINZ] + 1

	testing("[__LINE__] - maxz=[world.maxz]")
	// load the maps
	var/list/errorList = list()
	var/start_z = 1
	for (var/full_path in files)
		testing("Loading [full_path] at 0,0,[start_z + files[full_path]]")
		if(!loader.load_map(file(full_path), 0, 0, start_z + files[full_path], no_changeturf = TRUE))
			errorList |= full_path
			error("Loading [full_path] failed!")
	testing("[__LINE__] - maxz=[world.maxz]")
	qdel_null(loader)

/datum/controller/subsystem/mapping/proc/loadEngine()
	if(!engine_loader)
		return // Seems this map doesn't need an engine loaded.

	var/turf/T = get_turf(engine_loader)
	if(!isturf(T))
		to_world_log("[log_info_line(engine_loader)] not on a turf! Cannot place engine template.")
		return

	// Choose an engine type
	var/datum/map_template/engine/chosen_type = null
	if (LAZYLEN(config.engine_map))
		var/chosen_name = pick(config.engine_map)
		chosen_type = map_templates[chosen_name]
		if(!istype(chosen_type))
			error("Configured engine map [chosen_name] is not a valid engine map name!")
	if(!istype(chosen_type))
		var/list/engine_types = list()
		for(var/map in map_templates)
			var/datum/map_template/engine/MT = map_templates[map]
			if(istype(MT))
				engine_types += MT
		chosen_type = pick(engine_types)
	to_world_log("Chose Engine Map: [chosen_type.name]")
	admin_notice("<span class='danger'>Chose Engine Map: [chosen_type.name]</span>", R_DEBUG)

	// Annihilate movable atoms
	engine_loader.annihilate_bounds()
	//CHECK_TICK //Don't let anything else happen for now
	// Actually load it
	chosen_type.load(T)

/datum/controller/subsystem/mapping/proc/loadLateMaps()
	var/list/deffo_load = using_map.lateload_z_levels
	var/list/maybe_load = using_map.lateload_single_pick

	for(var/list/maplist in deffo_load)
		if(!islist(maplist))
			error("Lateload Z level [maplist] is not a list! Must be in a list!")
			continue
		for(var/mapname in maplist)
			var/datum/map_template/MT = map_templates[mapname]
			if(!istype(MT))
				error("Lateload Z level \"[mapname]\" is not a valid map!")
				continue
			MT.load_new_z(centered = FALSE)
			CHECK_TICK

	if(LAZYLEN(maybe_load))
		var/picklist = pick(maybe_load)

		if(!picklist) //No lateload maps at all
			return

		if(!islist(picklist)) //So you can have a 'chain' of z-levels that make up one away mission
			error("Randompick Z level [picklist] is not a list! Must be in a list!")
			return

		for(var/map in picklist)
			var/datum/map_template/MT = map_templates[map]
			if(!istype(MT))
				error("Randompick Z level \"[map]\" is not a valid map!")
			else
				MT.load_new_z(centered = FALSE)

/datum/controller/subsystem/mapping/stat_entry(msg)
	if (!Debug2)
		return // Only show up in stat panel if debugging is enabled.
	. = ..()

/var/global/datum/telltale/code_controllers_subsystems_mapping_vr_dm = new("[__FILE__]")
