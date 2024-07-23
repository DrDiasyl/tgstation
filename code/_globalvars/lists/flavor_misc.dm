GLOBAL_LIST_INIT(color_list_ethereal, list(
	"Blue" = "#3399ff",
	"Bright Yellow" = "#ffff99",
	"Burnt Orange" = "#cc4400",
	"Cyan Blue" = "#00ffff",
	"Dark Blue" = "#6666ff",
	"Dark Fuschia" = "#cc0066",
	"Dark Green" = "#37835b",
	"Dark Red" = "#9c3030",
	"Dull Yellow" = "#fbdf56",
	"Faint Blue" = "#b3d9ff",
	"Faint Green" = "#ddff99",
	"Faint Red" = "#ffb3b3",
	"Green" = "#97ee63",
	"Orange" = "#ffa64d",
	"Pink" = "#ff99cc",
	"Purple" = "#ee82ee",
	"Red" = "#ff4d4d",
	"Seafoam Green" = "#00fa9a",
	"White" = "#f2f2f2",
))

GLOBAL_LIST_INIT(color_list_lustrous, list(
	"Cyan Blue" = "#00ffff",
	"Sky Blue" = "#37c0ff",
	"Blue" = "#3374ff",
	"Dark Blue" = "#5b5beb",
	"Bright Red" = "#fa2d2d",
))

GLOBAL_LIST_INIT(ghost_forms_with_directions_list, list(
	"catghost",
	"ghost_black",
	"ghost_blazeit",
	"ghost_blue",
	"ghost_camo",
	"ghost_cyan",
	"ghost_dblue",
	"ghost_dcyan",
	"ghost_dgreen",
	"ghost_dpink",
	"ghost_dred",
	"ghost_dyellow",
	"ghost_fire",
	"ghost_funkypurp",
	"ghost_green",
	"ghost_grey",
	"ghost_mellow",
	"ghost_pink",
	"ghost_pinksherbert",
	"ghost_purpleswirl",
	"ghost_rainbow",
	"ghost_red",
	"ghost_yellow",
	"ghost",
	"ghostian",
	"ghostian2",
	"ghostking",
	"skeleghost",
))
//stores the ghost forms that support directional sprites

GLOBAL_LIST_INIT(ghost_forms_with_accessories_list, list(
	"ghost_black",
	"ghost_blazeit",
	"ghost_blue",
	"ghost_camo",
	"ghost_cyan",
	"ghost_dblue",
	"ghost_dcyan",
	"ghost_dgreen",
	"ghost_dpink",
	"ghost_dred",
	"ghost_dyellow",
	"ghost_fire",
	"ghost_funkypurp",
	"ghost_green",
	"ghost_grey",
	"ghost_mellow",
	"ghost_pink",
	"ghost_pinksherbert",
	"ghost_purpleswirl",
	"ghost_rainbow",
	"ghost_red",
	"ghost_yellow",
	"ghost",
	"skeleghost",
))
//stores the ghost forms that support hair and other such things

GLOBAL_LIST_INIT(security_depts_prefs, sort_list(list(
	SEC_DEPT_ENGINEERING,
	SEC_DEPT_MEDICAL,
	SEC_DEPT_NONE,
	SEC_DEPT_SCIENCE,
	SEC_DEPT_SUPPLY,
)))

	//Backpacks
#define DBACKPACK "Department Backpack"
#define DDUFFELBAG "Department Duffel Bag"
#define DSATCHEL "Department Satchel"
#define DMESSENGER "Department Messenger Bag"
#define GBACKPACK "Grey Backpack"
#define GDUFFELBAG "Grey Duffel Bag"
#define GSATCHEL "Grey Satchel"
#define GMESSENGER "Grey Messenger Bag"
#define LSATCHEL "Leather Satchel"
GLOBAL_LIST_INIT(backpacklist, list(
	DBACKPACK,
	DDUFFELBAG,
	DSATCHEL,
	DMESSENGER,
	GBACKPACK,
	GDUFFELBAG,
	GSATCHEL,
	GMESSENGER,
	LSATCHEL,
))

	//Suit/Skirt
#define PREF_SUIT "Jumpsuit"
#define PREF_SKIRT "Jumpskirt"

//Uplink spawn loc
#define UPLINK_PDA "PDA"
#define UPLINK_RADIO "Radio"
#define UPLINK_PEN "Pen" //like a real spy!
#define UPLINK_IMPLANT "Implant"

	//Female Uniforms
GLOBAL_LIST_EMPTY(female_clothing_icons)

GLOBAL_LIST_INIT(scarySounds, list(
	'sound/effects/footstep/clownstep1.ogg',
	'sound/effects/footstep/clownstep2.ogg',
	'sound/effects/glassbr1.ogg',
	'sound/effects/glassbr2.ogg',
	'sound/effects/glassbr3.ogg',
	'sound/items/welder.ogg',
	'sound/items/welder2.ogg',
	'sound/machines/airlock.ogg',
	'sound/voice/hiss1.ogg',
	'sound/voice/hiss2.ogg',
	'sound/voice/hiss3.ogg',
	'sound/voice/hiss4.ogg',
	'sound/voice/hiss5.ogg',
	'sound/voice/hiss6.ogg',
	'sound/weapons/armbomb.ogg',
	'sound/weapons/taser.ogg',
	'sound/weapons/thudswoosh.ogg',
	'sound/weapons/shove.ogg',
))


// Reference list for disposal sort junctions. Set the sortType variable on disposal sort junctions to
// the index of the sort department that you want. For example, sortType set to 2 will reroute all packages
// tagged for the Cargo Bay.

/* List of sortType codes for mapping reference
0 Waste
1 Disposals - All unwrapped items and untagged parcels get picked up by a junction with this sortType. Usually leads to the recycler.
2 Cargo Bay
3 QM Office
4 Engineering
5 CE Office
6 Atmospherics
7 Security
8 HoS Office
9 Medbay
10 CMO Office
11 Chemistry
12 Research
13 RD Office
14 Robotics
15 HoP Office
16 Library
17 Chapel
18 Theatre
19 Bar
20 Kitchen
21 Hydroponics
22 Janitor
23 Genetics
24 Experimentor Lab
25 Ordnance
26 Dormitories
27 Virology
28 Xenobiology
29 Law Office
30 Detective's Office
*/

//The whole system for the sorttype var is determined based on the order of this list,
//disposals must always be 1, since anything that's untagged will automatically go to disposals, or sorttype = 1 --Superxpdude

//If you don't want to fuck up disposals, add to this list, and don't change the order.
//If you insist on changing the order, you'll have to change every sort junction to reflect the new order. --Pete

GLOBAL_LIST_INIT(TAGGERLOCATIONS, list("Disposals",
	"Cargo Bay", "QM Office", "Engineering", "CE Office",
	"Atmospherics", "Security", "HoS Office", "Medbay",
	"CMO Office", "Chemistry", "Research", "RD Office",
	"Robotics", "HoP Office", "Library", "Chapel", "Theatre",
	"Bar", "Kitchen", "Hydroponics", "Janitor Closet","Genetics",
	"Experimentor Lab", "Ordnance", "Dormitories", "Virology",
	"Xenobiology", "Law Office","Detective's Office"))

GLOBAL_LIST_INIT(station_prefixes, world.file2list("strings/station_prefixes.txt"))

GLOBAL_LIST_INIT(station_names, world.file2list("strings/station_names.txt"))

GLOBAL_LIST_INIT(station_suffixes, world.file2list("strings/station_suffixes.txt"))

GLOBAL_LIST_INIT(greek_letters, world.file2list("strings/greek_letters.txt"))

GLOBAL_LIST_INIT(phonetic_alphabet, world.file2list("strings/phonetic_alphabet.txt"))

GLOBAL_LIST_INIT(numbers_as_words, world.file2list("strings/numbers_as_words.txt"))

GLOBAL_LIST_INIT(wisdoms, world.file2list("strings/wisdoms.txt"))

/proc/generate_number_strings()
	var/list/L[198]
	for(var/i in 1 to 99)
		L += "[i]"
		L += "\Roman[i]"
	return L

GLOBAL_LIST_INIT(station_numerals, greek_letters + phonetic_alphabet + numbers_as_words + generate_number_strings())

GLOBAL_LIST_INIT(admiral_messages, list(
	"<i>Error: No comment given.</i>",
	"<i>null</i>",
	"Do you know how expensive these stations are?",
	"I was sleeping, thanks a lot.",
	"It's a good day to die!",
	"No.",
	"Stand and fight you cowards!",
	"Stop being paranoid.",
	"Stop wasting my time.",
	"Whatever's broken just build a new one.",
	"You knew the risks coming in.",
))

GLOBAL_LIST_INIT(junkmail_messages, world.file2list("strings/junkmail.txt"))

// All valid inputs to status display post_status
GLOBAL_LIST_INIT(status_display_approved_pictures, list(
	"blank",
	"shuttle",
	"default",
	"biohazard",
	"lockdown",
	"greenalert",
	"bluealert",
	"redalert",
	"deltaalert",
	"radiation",
	"currentalert", //For automatic set of status display on current level
))

// Members of status_display_approved_pictures that are actually states and not alert values
GLOBAL_LIST_INIT(status_display_state_pictures, list(
	"blank",
	"shuttle",
))

// Used when hitting a mindshielded person with Space Law book with TRAIT_JUSTICE
GLOBAL_LIST_INIT(space_law_mindshield_entries, list(
	"Killing for no reason? That's not how justice works, you maniac!",
	"Reminder: Excessive force isn't just illegal, it's stupid!",
	"Thinking of using deadly force? Think again, trigger-happy!",
	"Brig time, not beating time! Got it?",
	"Stop acting like a space cowboy, lawman!",
	"Executing prisoners? What are you, a judge? Stick to your job!",
	"Abuse your power one more time, and the brig will be your new home!",
	"Security isn't a license to kill, you moron!",
	"Ever heard of non-lethal takedowns? Try them sometime!",
	"Think before you shoot! You're not in a video game!",
	"Law and order, not law and slaughter, got it?",
	"Trigger discipline! Learn it, live it!",
	"Brutality isn't bravery, you thug!",
	"Use the cuffs, not the cuffs of your gun!",
	"Violence isn't the answer, unless the question is 'How do I get fired?'",
	"Trigger-happy? More like brain-dead!",
	"Stop playing judge, jury, and executioner, clown!",
	"Deadly force isn't your default, it's your last resort!",
	"Restraint is part of the job, psycho!",
	"Knock off the cowboy antics, Shitcurity!",
	"Killing prisoners? Welcome to your own personal brig tour!",
	"You're here to protect, not to purge!",
	"Stop pretending you're in an action movie!",
	"Ever heard of 'de-escalation'? Look it up!",
	"Your job is to keep the peace, not create a massacre!",
	"Overkill is a crime, not a tactic!",
	"Stun first, shoot later, if ever!",
	"You're not a space vigilante, stick to protocol!",
	"Use your brain, not your brawn!",
	"Security, not tyranny! Get it right!"
))

// Used when hitting a not mindshielded person with Space Law book with TRAIT_JUSTICE
GLOBAL_LIST_INIT(space_law_entries, list(
	"Remember, genius, Space Law isn't just for decoration!",
	"Suddenly, you remember that assaulting an officer is a felony. Who knew?",
	"Oh look, it's a walking violation of Section 302!",
	"Breaking and entering? Really? You must've skipped that chapter!",
	"Possession of contraband? Guess who's going to the brig!",
	"Forgot about the 'no kidnapping' rule, didn't you?",
	"You're not supposed to use explosives without permission. Boom, knowledge!",
	"Rioting? Did you leave your brain at home today?",
	"Wow, littering? Aim high, you criminal mastermind!",
	"Indecent exposure again? Buy some clothes!",
	"Trespassing much? Doors have access for a reason!",
	"Drug possession? Are you a botanist now?",
	"Think fast! Spreading disinformation is still illegal!",
	"Disturbing the peace? I see a new career as a mime!",
	"Accidental manslaughter? Next time, try not to kill anyone!",
	"Grand theft? You're a regular space pirate now!",
	"Enemy of the Corporation? You've made it to the big leagues!",
	"Attempted murder? Aim higher or don't aim at all!",
	"Sabotage? Hope you brought a good lawyer!",
	"Vandalism? Bet your mom's proud!",
	"Petty theft? Stealing lunch money, really?",
	"Dereliction of duty? How about you try doing your job for once?",
	"Unauthorized weapon possession? Put it back where you found it!",
	"Animal cruelty? You monster!",
	"Insubordination? You think you're in charge now?",
	"Creating a workplace hazard? Safety first, dumbass!",
	"Resisting arrest? Just makes it worse, pal!",
	"Mutiny? Time to find a new career!",
	"Use of deadly force? Use your brain instead!",
	"Kidnapping? Didn't think that one through, did ya?",
	"B&E of a restricted area? Ever heard of doors?",
	"Contraband possession? Next time, just ask!"
))
