///Those are meet at the Escape Pods
/obj/item/storage/pod
	name = "emergency gear"
	desc = "A wall mounted safe containing survival gear. Will only open in emergencies."
	anchored = TRUE
	density = FALSE
	icon = 'icons/obj/storage/storage.dmi'
	icon_state = "emergency_locked"
	/// Is it locked or unlocked?
	var/unlocked = FALSE
	/// Was it emagged open?
	var/emagged = FALSE

/obj/item/storage/pod/update_icon_state()
	. = ..()
	icon_state = "emergency[unlocked ? "" : "_locked"]"

/obj/item/storage/pod/examine(mob/user)
	. = ..()
	. += span_notice("Currently its <b>[unlocked ? "unlocked" : "locked"]</b>.")
	if(SSsecurity_level.get_current_level_as_number() >= SEC_LEVEL_RED)
		. += span_warning("It is possible to unlock it manually with <b>your hands</b> at this moment.")
	else
		. += span_notice("It is not possible to unlock it at this moment.")

MAPPING_DIRECTIONAL_HELPERS(/obj/item/storage/pod, 32)

/obj/item/storage/pod/PopulateContents()
	new /obj/item/clothing/head/helmet/space/fragile(src)
	new /obj/item/clothing/head/helmet/space/fragile(src)
	new /obj/item/clothing/suit/space/fragile(src)
	new /obj/item/clothing/suit/space/fragile(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/tank/internals/oxygen/red(src)
	new /obj/item/tank/internals/oxygen/red(src)
	new /obj/item/pickaxe/emergency(src)
	new /obj/item/pickaxe/emergency(src)
	new /obj/item/survivalcapsule(src)
	new /obj/item/storage/toolbox/emergency(src)
	new /obj/item/bodybag/environmental(src)
	new /obj/item/bodybag/environmental(src)

/obj/item/storage/pod/attackby(obj/item/W, mob/user, params)
	lock_check(user)
	if(unlocked)
		return ..()

/obj/item/storage/pod/attackby_secondary(obj/item/weapon, mob/user, params)
	lock_check(user)
	if(!unlocked)
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	return ..()

/obj/item/storage/pod/attack_hand(mob/user, list/modifiers)
	lock_check(user)
	if(unlocked)
		atom_storage?.show_contents(user)
	return TRUE

/obj/item/storage/pod/MouseDrop(over_object, src_location, over_location)
	lock_check(usr)
	if(unlocked)
		return ..()

/obj/item/storage/pod/attack_hand_secondary(mob/user, list/modifiers)
	lock_check(user)
	if(!unlocked)
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	return ..()

/obj/item/storage/pod/AltClick(mob/user)
	lock_check(user)
	if(!unlocked)
		return
	return ..()

/obj/item/storage/pod/emag_act(mob/user, obj/item/card/emag/emag_card)
	if(unlocked || emagged)
		return

	unlocked = TRUE
	emagged = TRUE
	balloon_alert(user, "unlocked!")
	playsound(src, SFX_SPARKS, 75, TRUE, SHORT_RANGE_SOUND_EXTRARANGE)
	update_appearance()

/obj/item/storage/pod/proc/lock_check(mob/user)
	if(emagged)
		return

	if(SSsecurity_level.get_current_level_as_number() < SEC_LEVEL_RED)
		balloon_alert(user, "no emergency!")
		unlocked = FALSE
		update_appearance()
		return

	if(unlocked)
		return

	balloon_alert(user, "unlocking...")
	playsound(src, 'sound/machines/locktoggle.ogg', 50, TRUE)
	if(do_after(user, 2 SECONDS, target = src))
		balloon_alert(user, "unlocked!")
		playsound(src, 'sound/machines/click.ogg', 30, TRUE)
		unlocked = TRUE
		update_appearance()

/// Those can be meet on the station
/obj/item/storage/pod/station
	name = "emergency space suits"
	desc = "A wall mounted safe containing space suits. Will only open in emergencies."

/obj/item/storage/pod/station/PopulateContents()
	if(prob(20))
		new /obj/item/pneumatic_cannon/flare(src)
		new /obj/item/storage/box/flares

	new /obj/item/clothing/head/helmet/space/fragile(src)
	new /obj/item/clothing/head/helmet/space/fragile(src)
	new /obj/item/clothing/suit/space/fragile(src)
	new /obj/item/clothing/suit/space/fragile(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/tank/internals/oxygen/red(src)
	new /obj/item/tank/internals/oxygen/red(src)

MAPPING_DIRECTIONAL_HELPERS(/obj/item/storage/pod/station, 32)
