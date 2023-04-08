//The job depends on the station trait that might, or might not happen
/datum/job/gimmick
	title = "Gimmick"
	description = "Who you might become today? Nobody knows."
	faction = FACTION_STATION
	total_positions = 0
	spawn_positions = 0
	supervisors = "someone"
	exp_granted_type = EXP_TYPE_SPECIAL
	outfit = /datum/outfit/job/gimmick
	plasmaman_outfit = /datum/outfit/plasmaman
	paycheck = PAYCHECK_CREW

	paycheck_department = ACCOUNT_CIV
	display_order = JOB_DISPLAY_ORDER_ASSISTANT

	department_for_prefs = /datum/job_department/assistant

	family_heirlooms = list(/obj/item/storage/toolbox/mechanical/old/heirloom, /obj/item/clothing/gloves/cut/heirloom)

	mail_goodies = list(
		/obj/effect/spawner/random/food_or_drink/donkpockets = 10,
		/obj/item/clothing/mask/gas = 10,
		/obj/item/clothing/gloves/color/fyellow = 7,
		/obj/item/choice_beacon/music = 5,
		/obj/item/toy/sprayoncan = 3,
		/obj/item/crowbar/large = 1
	)

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS
	rpg_title = "Mysterious"
	config_tag = "GIMMICK"

/datum/outfit/job/gimmick
	name = "Gimmick Job"
	jobtype = /datum/job/gimmick
