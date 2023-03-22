/obj/item/tape/typhoon
	name = "TGV Typhoon Tape"
	desc = "This should not be there."
	used_capacity = 10 MINUTES // so the tape is full and can't be recorded over
	storedinfo = list(
		"\[00:01\]<B>YOU SHOULD NOT HEAR THIS.</B>",
	)
	timestamp = list(
		1 SECONDS,
	)

/obj/item/tape/typhoon/briefing
	name = "TGV Typhoon Briefing #1"
	desc = "A dusty old tape. One of the sides has a recording."
	icon_state = "tape_red"
	storedinfo = list(
		"\[00:01\]<B>Capt. Alexandria:</B> Listen up marines! We got a distress call from a Nanotrasen <I>BUZZ</I> Research Station in this system!",
		"\[00:06\]<B>Capt. Alexandria:</B> We have responded to it, and now you all will be deploying to it on dropship Bastion!",
		"\[00:08\]<B>Capt. Alexandria:</B> But be aware, this station is just infested with xeno scum!",
		"\[00:12\]<B>Capt. Alexandria:</B> Now our FC wants to say something to you all.",
		"\[00:16\]<B>Maj. Stanislao:</B> We will fight for the lives of people in there!",
		"\[00:18\]<B>Maj. Stanislao:</B> We will kill all of the xenos!",
		"\[00:21\]<B>Maj. Stanislao:</B> Do you all understand? We cannot lose against those pests!",
		"\[00:23\]<I>lots of 'YES', 'OORAHS' and other weird monkey sounds are heard</I>",
		"\[00:26\]<B>Maj. Stanislao:</B> Now everyone board this shuttle! GO, GO, GO!",
		"\[00:28\]<B>Exec. Johnson:</B> Hey! I didn't said any-",
		"\[00:30\]<B>Maj. Stanislao:</B> Shut up CL nobody cares.",
		"\[00:30\]<B>Capt. Alexandria:</B> Shut up CL nobody cares.",
	)
	timestamp = list(
		1 SECONDS,
		7 SECONDS,
		12 SECONDS,
		16 SECONDS,
		22 SECONDS,
		27 SECONDS,
		31 SECONDS,
		37 SECONDS,
		42 SECONDS,
		47 SECONDS,
		52 SECONDS,
		54 SECONDS,
	)

//Clothing for the TGMC Typhoon. Can be used for any other marine needs.

/datum/armor/hats_marine //If you need a normal hat you can have it
	melee = 40
	bullet = 30
	laser = 25
	energy = 35
	bomb = 25
	bio = 10
	fire = 50
	acid = 60
	wound = 10

/datum/armor/hats_marine/decayed //Most of hats found are decayed, as those derelicts are really old
	melee = 20
	bullet = 15
	laser = 12
	energy = 17
	bomb = 12
	bio = 5
	fire = 25
	acid = 31
	wound = 5

//Hats
/obj/item/clothing/head/beret/marine
	name = "terragov marine corps beret"
	desc = "A beret used by the Marine Corps of TerraGov personnel. Offering protection while being in a style."
	icon_state = "beret_badge"
	greyscale_config = /datum/greyscale_config/beret_badge
	greyscale_config_worn = /datum/greyscale_config/beret_badge/worn
	greyscale_colors = "#6d8282#f0cc8f"
	armor_type = /datum/armor/hats_marine
	strip_delay = 80

/obj/item/clothing/head/beret/marine/decayed
	name = "old terragov marine corps beret"
	desc = "A beret used by the Marine Corps of TerraGov personnel. This one has already decayed over time, and lost most of its protective values."
	armor_type = /datum/armor/hats_marine/decayed

/obj/item/clothing/head/beret/marine/captain
	name = "terragov marine corps captain beret"
	desc = "A beret worn by the brave leader of a marine platoon. Offering protection while being in a style."
	greyscale_colors = "#FFFFFF#2E5EFF"

/obj/item/clothing/head/soft/marine
	name = "terragov marine corps officer cap"
	desc = "It's a robust baseball hat in tasteful dark brown color. It's usually given to staff officers of the TerraGov Marine Corps."
	icon_state = "marinesoft"
	soft_type = "marine"
	armor_type = /datum/armor/hats_marine
	strip_delay = 60
	dog_fashion = null
/obj/item/clothing/head/soft/marine/decayed
	name = "old terragov marine corps officer cap"
	desc = "It's a robust baseball hat in tasteful dark brown color. It's usually given to staff officers of the TerraGov Marine Corps. This one has already decayed over time, and lost most of its protective values."
	armor_type = /datum/armor/hats_marine/decayed

//Clothing
/obj/item/clothing/under/rank/security/head_of_security/formal/marine
	desc = "Uniform issued to the TerraGov Marine Corps officers."
	name = "terragov marine corps officer uniform"
	icon_state = "hostanclothes"

/obj/item/clothing/neck/cloak/cap/marine
	name = "terragov marine corps captain's cloak"
	desc = "Worn by the commander of a brave Marine platoon."
	icon_state = "marinecapcloak"


//Misc
/obj/item/radio/headset/marine //Just an cool looking bowman headset, without any special encryption keys
	name = "\proper the terragov marine corps bowman headset"
	desc = "The headset for the TerraGov Marine Corps personnel. Protects ears from flashbangs."
	icon_state = "marine_headset_alt"
	worn_icon_state = "marine_headset_alt"

/obj/item/radio/headset/marine/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))

//Those are ID cards to be placed around station near remains and such
/obj/item/card/id/typhoon/bravo_marine
	name = "TGV Typhoon Bravo Marine ID"
	desc = "A faded TGV Typhoon ID card. You can make out the rank \"Bravo Squad Marine\"."
	trim = /datum/id_trim/away/typhoon/bravo

/obj/item/card/id/typhoon/delta_marine
	name = "TGV Typhoon Delta Marine ID"
	desc = "A faded TGV Typhoon ID card. You can make out the rank \"Delta Squad Marine\"."
	trim = /datum/id_trim/away/typhoon/delta

/obj/item/card/id/typhoon/medical
	name = "TGV Typhoon Medical Officer ID"
	desc = "A faded TGV Typhoon ID card. You can make out the rank \"Medical Officer\"."
	trim = /datum/id_trim/away/typhoon/medical


//Corpses
//Making marine corpses would produce too much armor so I won't do that. Let's say the all have rotted, but why captain and staff officers didn't? Because.
/obj/effect/mob_spawn/corpse/human/typhoon/staffofficer
	name = "TGMC Staff Officer"
	outfit = /datum/outfit/typhoon/staffofficer

/datum/outfit/typhoon/staffofficer
	name = "TGMC Staff Officer"
	ears = /obj/item/radio/headset/marine
	uniform = /obj/item/clothing/under/rank/security/head_of_security/formal/marine
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/laceup
	head = /obj/item/clothing/head/soft/marine/decayed
	id = /obj/item/card/id
	id_trim = /datum/id_trim/away/typhoon/staff_officer

/obj/effect/mob_spawn/corpse/human/typhoon/captain
	name = "Capt. Alexandria Sanita"
	outfit = /datum/outfit/typhoon/captain

/datum/outfit/typhoon/captain
	name = "TGMC Commanding Officer"
	ears = /obj/item/radio/headset/marine
	uniform = /obj/item/clothing/under/rank/security/head_of_security/formal/marine
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/marine/captain
	neck = /obj/item/clothing/neck/cloak/cap/marine
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id
	id_trim = /datum/id_trim/away/typhoon/captain

/obj/effect/mob_spawn/corpse/human/typhoon/cargo
	name = "CPO. Alex Smith"
	outfit = /datum/outfit/typhoon/cargo

/datum/outfit/typhoon/cargo
	name = "TGMC Requisitions Officer"
	ears = /obj/item/radio/headset/marine
	uniform = /obj/item/clothing/under/rank/security/head_of_security/formal/marine
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/grenade/frag
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id
	id_trim = /datum/id_trim/away/typhoon/cargo

