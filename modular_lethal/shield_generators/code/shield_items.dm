/obj/item/clothing/gloves/shield_bracers
	name = "Milano shielded bracers"
	desc = "A common pair of shield bracers, able to provide the user with a weak personal \
		shield. The shield will break after a single impact of any sort, and will take about a \
		minute to recharge fully."
	icon = 'modular_lethal/shield_generators/icons/shield_objects.dmi'
	icon_state = "bracers"
	worn_icon = 'modular_lethal/shield_generators/icons/shields_worn.dmi'
	resistance_flags = FIRE_PROOF
	siemens_coefficient = 0.5
	clothing_flags = THICKMATERIAL
	clothing_traits = list(TRAIT_CHUNKYFINGERS)

/obj/item/clothing/gloves/shield_bracers/Initialize(mapload)
	. = ..()
	AddComponent( \
		/datum/component/shielded/shield_belt, \
		max_charges = 1, \
		recharge_start_delay = 0, \
		charge_recovery = 0, \
		lose_multiple_charges = FALSE, \
		show_charge_as_alpha = FALSE, \
		shield_icon_file = 'modular_lethal/shield_generators/icons/shield_overlay.dmi', \
		shield_icon = "shield", \
		shield_inhand = FALSE, \
	)

/obj/item/clothing/shield_belt
	name = "Holdplacer shielded belt"
	desc = "A belt projector capable of providing a strong personal energy shield. \
	More capable than the 'Milano' bracers, this can absorb five shots before breaking, but recharges slowly."
	icon = 'modular_lethal/shield_generators/icons/shield_objects.dmi'
	icon_state = "belt"
	worn_icon = 'modular_lethal/shield_generators/icons/shields_worn.dmi'
	slot_flags = ITEM_SLOT_BELT
	resistance_flags = FIRE_PROOF
	siemens_coefficient = 0.5
	clothing_flags = THICKMATERIAL

/obj/item/clothing/shield_belt/Initialize(mapload)
	. = ..()
	AddComponent( \
		/datum/component/shielded/shield_belt, \
		max_charges = 5, \
		recharge_start_delay = 15 SECONDS, \
		charge_increment_delay = 15 SECONDS, \
		charge_recovery = 1, \
		lose_multiple_charges = FALSE, \
		show_charge_as_alpha = FALSE, \
		shield_icon_file = 'modular_lethal/shield_generators/icons/shield_overlay.dmi', \
		shield_icon = "shield", \
		shield_inhand = FALSE, \
	)
