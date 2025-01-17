// ASSISTANT VOUCHER
// Given to Assistants so they can give it to HoP to receive basic equipment for the Department they want to assist. Good for newbies and such
// Can be ripped into pieces to get 200 credits to show how hard-ass you are
/obj/item/assistant_voucher
	name = "assistant voucher"
	desc = "A voucher redeemable for specialized gear to support a specific department from a JobVendor. <b>Present it to the Head of Personnel</b>."
	desc_controls = "Right-click to rip apart"
	icon = 'icons/obj/service/bureaucracy.dmi'
	icon_state = "assistant_voucher"
	w_class = WEIGHT_CLASS_TINY

/obj/item/assistant_voucher/examine(mob/user)
	. = ..()
	. += span_notice("<i>There is some information on the back side...</i>")

/obj/item/assistant_voucher/examine_more(mob/user)
	. = ..()
	. += span_notice("<b>Current sets available:</b>")
	. += span_info("<b>Security Cadet:</b> Ever wanted to enforce the Law but blame mistakes on your partner?")
	. += span_info("<b>Medical Nurse:</b> Its okay, you will get used to the smell of blood and screams of patients.")
	. += span_info("<b>Research Assistant:</b> DO NOT jump into the pen full of slimes even if Scientists encourage you to.")
	. += span_info("<b>Service Steward:</b> We actually care about quality of service here, no matter what others say.")
	. += span_info("<b>Cargo Assistant:</b> No one said delivery can't be interesting! Its that there must be first something to deliver.")
	. += span_info("<b>Engineering Assistant:</b> Nanotrasen has no ways to compensate you in case of disintegration in Supermatter.")

/obj/item/assistant_voucher/attack_self_secondary(mob/living/user, modifiers)
	. = ..()
	if(tgui_alert(
		user = user, message = "Are you sure you wanna rip the [src] apart? This is IRREVERSIBLE and you won't be able to get a new voucher. \
			Voucher can be redeemed at HoP office for gear and access related to any department!",
		title = "Rip [src] apart?",
		buttons = list("Yes","No")) == "No"
	)
		to_chat(user, span_tinynoticeital("Maybe you should try getting a job..."))
		return

	/// Money to spend on some other gimmick if you don't want the job
	var/obj/item/stack/spacecash/c200/unemployment_pay

	user.add_mood_event("voucher", /datum/mood_event/unemployed)
	user.visible_message(span_warning("[user] rips the [src] into tiny pieces showing their dedication to unemployment!"))
	playsound(user, 'sound/items/poster_ripped.ogg', 50, TRUE)
	unemployment_pay = new(get_turf(user))
	new /obj/effect/decal/cleanable/plastic(get_turf(user))
	qdel(src)

/// JOBVENDOR
/// Not actually a vending machine.
/// This machine accepts Assistant Vouchers and give out specialized equipment to help out a certain department
/// The department is choosen out of a list after clicking Assistant Voucher on the JobVendor
/obj/machinery/jobvendor
	name = "Job Vendor"
	desc = "Future of Human Resources! Accepts Assistant Vouches in exchange for various gear sets to assist departments, access not included."
	icon = 'icons/obj/machines/vending.dmi'
	icon_state = "custom"
	density = TRUE
	circuit = /obj/item/circuitboard/machine/jobvendor
	layer = BELOW_OBJ_LAYER
	processing_flags = NONE

/obj/machinery/jobvendor/attackby(obj/item/weapon, mob/user, params)
	. = ..()
	if(!istype(weapon, /obj/item/assistant_voucher))
		balloon_alert(user, "need voucher!")
		playsound(src, 'sound/machines/terminal_error.ogg', 50, TRUE)
		return

	playsound(src, 'sound/machines/terminal_prompt.ogg', 40, TRUE)
	accept_voucher(weapon, user)

/// Return the list of Assistant kits
/obj/machinery/jobvendor/proc/generate_display_names()
	var/static/list/kits
	if(!kits)
		kits = list()
		for(var/obj/item/storage/box/assistant/box as anything in subtypesof(/obj/item/storage/box/assistant))
			kits[initial(box.name)] = box
	return kits

/// Handles giving out items from the voucher
/obj/machinery/jobvendor/proc/accept_voucher(obj/item/mining_voucher/voucher, mob/user)
	var/list/display_names = generate_display_names()
	if(!length(display_names))
		return
	var/choice = tgui_input_list(user, "Which kit would you like to order?", "Select an Kit", display_names)
	if(isnull(choice) || isnull(display_names[choice]))
		return

	var/choosen_kit = display_names[choice]
	new choosen_kit(drop_location())

	playsound(src, 'sound/items/cardboard_drop.ogg', 70, TRUE)
	balloon_alert(user, "dispensed!")
	SSblackbox.record_feedback("tally", "assistant_voucher_redeemed", 1, choosen_kit)
	qdel(voucher)
