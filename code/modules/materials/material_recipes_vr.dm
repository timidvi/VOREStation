
/material/steel/generate_recipes()
	. = ..()
	recipes += new/datum/stack_recipe("light switch frame", /obj/item/frame/lightswitch, 2)

/var/global/datum/telltale/code_modules_materials_material_recipes_vr_dm = new("[__FILE__]")
