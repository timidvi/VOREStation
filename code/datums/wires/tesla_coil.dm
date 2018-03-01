/datum/wires/tesla_coil
	wire_count = 1
	holder_type = /obj/machinery/power/tesla_coil

var/const/WIRE_ZAP = 1

/datum/wires/tesla_coil/CanUse(mob/living/L)
	var/obj/machinery/power/tesla_coil/T = holder
	if(T && T.panel_open)
		return 1
	return 0

/datum/wires/tesla_coil/UpdatePulsed(index)
	var/obj/machinery/power/tesla_coil/T = holder
	switch(index)
		if(WIRE_ZAP)
			T.zap()
	..()

/var/global/datum/telltale/code_datums_wires_tesla_coil_dm = new("[__FILE__]")
