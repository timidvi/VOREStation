/datum/artifact_effect/emp
	name = "emp"
	effect_type = EFFECT_ELECTRO

/datum/artifact_effect/emp/New()
	..()
	effect = EFFECT_PULSE

/datum/artifact_effect/emp/DoEffectPulse()
	if(holder)
		var/turf/T = get_turf(holder)
		empulse(T, effectrange/4, effectrange/3, effectrange/2, effectrange)
		return 1

/var/global/datum/telltale/code_modules_xenoarcheaology_effects_emp_dm = new("[__FILE__]")
