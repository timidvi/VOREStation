/**********************Input and output plates**************************/

/obj/machinery/mineral/input
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	name = "Input area"
	density = 0
	anchored = 1.0
	New()
		icon_state = "blank"

/obj/machinery/mineral/output
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x"
	name = "Output area"
	density = 0
	anchored = 1.0
	New()
		icon_state = "blank"
/var/global/datum/telltale/code_modules_mining_machine_input_output_plates_dm = new("[__FILE__]")
