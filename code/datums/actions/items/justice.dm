/// Used by the JUSTICE skillchip, gives ability to open Space Law
/datum/action/item_action/justice
	name = "Space Law database"
	button_icon = 'icons/obj/service/library.dmi'
	button_icon_state = "bookSpaceLaw"
	desc = "Access the Space Law at any place, any time!"
	/// The virtual Space Law book
	var/obj/item/book/manual/wiki/authroity/security_space_law/space_law

/datum/action/item_action/justice/Grant(mob/grant_to)
	. = ..()
	space_law = new
	space_law.silent = TRUE

/datum/action/item_action/justice/Remove(mob/remove_from)
	. = ..()
	qdel(space_law)

/datum/action/item_action/justice/Trigger(trigger_flags)
	. = ..()
	to_chat(owner, span_notice("You blink and holographic Space Law opens infront of your eyes!"))
	SEND_SOUND(owner, 'sound/machines/terminal_prompt.ogg')
	space_law.attack_self(owner)
