/datum/absorbed_dna
	var/name
	var/datum/dna/dna
	var/speciesName
	var/list/languages
	var/identifying_gender
	var/list/flavour_texts

/datum/absorbed_dna/New(var/newName, var/newDNA, var/newSpecies, var/newLanguages, var/newIdentifying_Gender, var/list/newFlavour)
	..()
	name = newName
	dna = newDNA
	speciesName = newSpecies
	languages = newLanguages
	identifying_gender = newIdentifying_Gender
	flavour_texts = newFlavour ? newFlavour.Copy() : null
/var/global/datum/telltale/code_game_gamemodes_changeling_absorbed_dna_dm = new("[__FILE__]")
