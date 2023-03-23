//Tape recordings! Because paper notes are boring and overrated.
/obj/item/tape/typhoon
	name = "TGV Typhoon Tape"
	desc = "This should not be there."
	used_capacity = 10 MINUTES // so the tape is full and can't be recorded over
	storedinfo = list(
		"\[00:01\] <B>YOU SHOULD NOT HEAR THIS.</B>",
	)
	timestamp = list(
		1 SECONDS,
	)

/obj/item/tape/typhoon/briefing //At the hangar briefing area
	name = "TGV Typhoon Briefing"
	desc = "A dusty old tape. One of the sides has a recording."
	icon_state = "tape_blue"
	storedinfo = list(
	"\[00:01\] <B>Cpt. Alexandria:</B> Attention, marines! This is not a drill. Our mission is to rescue the survivors of a Nanotrasen <I>buzz</I> research base that's been overrun by hostile forces in this system.",
	"\[00:06\] <B>Cpt. Alexandria:</B> You all will be deploying to the base aboard the dropship Bastion, and let me tell you, this won't be a walk in the park.",
	"\[00:08\] <B>Cpt. Alexandria:</B> The base is crawling with xenomorphs, the deadliest creatures in the galaxy. These beasts are cunning, vicious, and they won't hesitate to rip us apart. But we're not going down without a fight.",
	"\[00:12\] <B>Cpt. Alexandria:</B> Before we depart, I'll turn the mic over to our fearless leader, Maj. Stanislao.",
	"\[00:16\] <B>Maj. Stanislao:</B> Marines, we have a duty to protect the innocent lives on that base. We're going in with guns blazing, and we'll wipe out every last xeno scum we find.",
	"\[00:21\] <B>Maj. Stanislao:</B> Are you with me, soldiers? We cannot and will not fail. Our honor, our valor, and the lives of the people we're fighting for are at stake.",
	"\[00:23\] <I>loud cheers, ooh-rahs, and battle cries fill the room</I>",
	"\[00:26\] <B>Maj. Stanislao:</B> Alright, let's board that shuttle and show these aliens what we're made of! Move out, move out, move out!",
	"\[00:28\] <B>Int. Johnson:</B> Um, excuse me, I didn't get a chance to--",
	"\[00:30\] <B>Maj. Stanislao:</B> CL, shut your yap. We've got a mission to complete.",
	"\[00:30\] <B>Cpt. Alexandria:</B> That goes for all of us. Now let's move, marines!",
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

/obj/item/tape/typhoon/bridge //Those are at bridge.
	name = "TGV Typhoon Bridge Blackbox #1"
	desc = "A dusty old tape from a bridge blackbox. One of the sides has a recording."
	icon_state = "tape_red"
	storedinfo = list(
	    "\[00:01\] <i>A lot of busy sounds of a Command Control Center are heard, with talking and computers bleeping.</i>",
    	"\[00:05\] <b>Cpt. Alexandria:</b> WHAT DO YOU MEAN FC HAS DIED? WE CANNOT SEND ANOTHER ONE! THERE IS ONLY ONE STAFF OFFICER LEFT!",
    	"\[00:12\] Muffled radio noises are heard, something about \"...FOB breached... ...earthquake...\".",
    	"\[00:15\] <b>Cpt. Alexandria:</b> Oh my god. Order an evacuation now.",
    	"\[00:22\] Muffled radio sounds of explosions and screams are heard.",
    	"\[00:28\] <b>Lt. Tiffany:</b> SIR! The FOB was just overrun! We have lost contact with Bastion dropship, it cannot evacuate!",
    	"\[00:36\] <b>Cpt. Alexandria:</b> Fucking HELL! Order the dropship Valhalla to land on the planet for evacuation!",
    	"\[00:44\] <b>Lt. Tiffany:</b> Yes sir!",
    	"\[00:52\] <B>Cpt. Alexandria's voice loudly heard:</B> This is Captain Alexandria speaking! You all will be evacuated by the dropship Valhalla at landing site 2! SLs, get your men there!",
    	"\[01:05\] A muffled radio voice saying \"Got it, sir\" is heard.",
	)

	timestamp = list(
	    1 SECONDS,
	    5 SECONDS,
	    12 SECONDS,
	    15 SECONDS,
	    22 SECONDS,
	    28 SECONDS,
	    36 SECONDS,
	    44 SECONDS,
	    52 SECONDS,
		1 MINUTES + 5 SECONDS,
	)

/obj/item/tape/typhoon/bridge/second
	name = "TGV Typhoon Bridge Blackbox #2"
	desc = "A dusty old tape from a bridge blackbox. One of the sides has a recording."
	icon_state = "tape_red"
	storedinfo = list(
	    "\[00:01\] <B>Lt. Tiffany:</B> Sir, I have bad and good news!",
	    "\[00:06\] <B>Cpt. Alexandria:</B> Say the good news first.",
	    "\[00:09\] <B>Lt. Tiffany:</B> Dropship Valhalla has returned.",
	    "\[00:13\] <B>Cpt. Alexandria:</B> Great! What is the bad news then?",
	    "\[00:18\] <B>Lt. Tiffany:</B> Dropship Valhalla has returned... with not our platoon intact",
	    "\[00:24\] <B>Cpt. Alexandria:</B> WHAT?! Tell me what the hell you mean!",
	    "\[00:29\] <I>A loud robotic voice heard \"HOSTILE LIFEFORMS DETECTED. RED CODE IS NOW IN EFFECT, THERE IS A DIRECT THREAT TO THE SHIP\"</I>",
	    "\[00:38\] <B>Cpt. Alexandria:</B> <i>deep sigh</i> FUCKI-",
	)

	timestamp = list(
	    1 SECONDS,
		6 SECONDS,
		9 SECONDS,
		13 SECONDS,
		18 SECONDS,
		24 SECONDS,
		29 SECONDS,
		38 SECONDS,
	)

/obj/item/tape/typhoon/bridge/third
	name = "TGV Typhoon Bridge Blackbox #3"
	desc = "A dusty old tape from a bridge blackbox. One of the sides has a recording."
	icon_state = "tape_red"
	storedinfo = list(
	    "<I>A ton of gunshots are heard, with people screaming and reloading.</I>",
	    "\[00:04\] <B>Cpt. Alexandria:</B> STAND OUR GROUND!",
	    "\[00:08\] <B>Pvt. Vladimir:</B> Sir! There is FUCKING TOO MUCH OF THEM! We can't hold them off for long!",
	    "\[00:15\] <B>Cpt. Alexandria:</B> We can't do anything else! You either fight or die!",
	    "\[00:20\] <I>Extremely loud roar is heard with a lot of people screaming and moaning in pain</I>",
	    "\[00:26\] <B>Lt. Tiffany:</B> MY EARS! AHH!!",
	    "\[00:29\] <I>Roaring is still heard with sounds of human bodies being splattered.</I>",
	    "\[00:34\] <B>Cpt. Alexandria:</B> HOLY FUCKING SHIT! This thing is enormous!",
	    "\[00:40\] <B>Pvt. Vladimir:</B> SIR! We ca- <I>a huge splatter is heard.</I>",
	    "\[00:45\] <B>Lt. Tiffany:</B> FUCK YOU NANOTRASEN, AND YOUR FUCKING CL WHO ESCAPED LIKE A COWARD!",
	    "\[00:49\] <B>Cpt. Alexandria:</B> AHHHHH!!!",
	)

	timestamp = list(
	    1 SECONDS,
		4 SECONDS,
		8 SECONDS,
		15 SECONDS,
		20 SECONDS,
		26 SECONDS,
		29 SECONDS,
		34 SECONDS,
		40 SECONDS,
		45 SECONDS,
		49 SECONDS,
	)

/obj/item/tape/typhoon/cargo //At the pilots office
	name = "Alex Smith's tape"
	desc = "A dusty old tape. One of the sides has a recording."
	icon_state = "tape_white"
	storedinfo = list(
	    "\[00:01\] <B>CPO Alex Smith:</B> Those fucking Xenos, they're everywhere! I have barricaded in the pilot's office. Really hope they won't reach me there.",
	    "\[00:08\] <B>CPO Alex Smith:</B> We thought the Valhalla was coming back after evacuation with our men, but no... it was full of those damn XENOS!",
	    "\[00:15\] <B>CPO Alex Smith:</B> It was really painful seeing how they have decapitated PO3 Michael <I>sobs</I>, now his 2 sons are left without father!",
	    "\[00:23\] <B>CPO Alex Smith:</B> I wish I would've got there to open the doors, I don't have a family or anyone who would care about me... If I would've died it wouldn't hurt anyone...",
	    "\[00:33\] <I>The loud sobbing of Alex Smith is heard, but it gets suddenly interrupted by a loud metallic banging.</I>",
	    "\[00:39\] <B>CPO Alex Smith:</B> What the... OH GOD, NO! THEY ARE THERE! THEY GOT THROUGH THE DAMN VENTS!",
	    "\[00:46\] <B>CPO Alex Smith:</B> YOU FUCKER! DON'T GET CLOSE! I HAVE A GRENADE! I WILL BLOW UP YOU WITH ME!!",
	    "\[00:54\] <B>CPO Alex Smith:</B> I'M GONNA FUCKING-",
	    "\[01:01\] <I>Alex Smith gets interrupted by something hitting his face. CPO Alex Smith is heard muffling something unintelligible, and loud hissing is heard.</I>",
	)
	timestamp = list(
	    1 SECONDS,
	    8 SECONDS,
	    15 SECONDS,
	    23 SECONDS,
	    33 SECONDS,
	    39 SECONDS,
	    46 SECONDS,
	    54 SECONDS,
	    61 SECONDS,
	)

/obj/item/tape/typhoon/comms/alpha //Those are blackbox recordings found at telecomms
	name = "Alpha Communications Blackbox recording"
	desc = "A dusty old tape from TGV Typhoon blackbox. One of the sides has a recording."
	icon_state = "tape_red"
	storedinfo = list(
	    "\[00:00\] <B>Pvt. Williams:</B> Hey, anyone got a spare magazine? I forgot to grab one.",
	    "\[00:03\] <B>Sgt. Rodriguez:</B> No time for that, Williams. We're moving out now. Get ready!",
	    "\[00:06\] <B>Cpl. Johnson:</B> Alright, let's go, go, go!",
	    "\[00:09\] <B>Pvt. Thompson:</B> Contact, 12 o'clock! Xenos inbound!",
	    "\[00:12\] <B>Cpl. Johnson:</B> Take 'em down, Marines! Don't let 'em get close!",
	    "\[00:15\] <B>Pvt. Johnson:</B> Reloading! Cover me!",
	    "\[00:18\] <B>Sgt. Rodriguez:</B> Get that shit together, Johnson! We can't afford to lose anyone here!",
	    "\[00:21\] <B>Pvt. Thompson:</B> Grenade out! Eat this, you alien freaks!",
	    "\[00:24\] <B>Cpl. Johnson:</B> Alright, let's move forward. Stay in formation, guys!",
	    "\[00:27\] <B>Pvt. Williams:</B> Hey, anyone else getting a bad feeling about this?",
	    "\[00:30\] <B>Cpl. Johnson:</B> Williams, shut the hell up and focus on the mission!",
	    "\[00:33\] <B>Sgt. Rodriguez:</B> I'm picking up something on the scanner. Maj. Stanislao, come in. This is Alpha squad, over.",
	    "\[00:36\] <B>Maj. Stanislao:</B> This is Maj. Stanislao. Go ahead, Alpha.",
	    "\[00:39\] <B>Sgt. Rodriguez:</B> Sir, we're detecting some unusual activity near the FOB. Looks like some kind of underground movement.",
	    "\[00:42\] <B>Maj. Stanislao:</B> Underground movement? Are you sure, Rodriguez?",
	    "\[00:45\] <B>Sgt. Rodriguez:</B> Affirmative, sir. We're picking up some kind of seismic activity. It's getting stronger by the minute.",
	    "\[00:48\] <B>Maj. Stanislao:</B> Alright, Alpha. Hold your position and keep an eye on it. I'll send a team to investigate. Over and out.",
	    "\[00:51\] <B>Cpl. Johnson:</B> You heard the man, Marines. Hold your ground and stay alert!"
	)

	timestamp = list(
	    1 SECONDS,
	    3 SECONDS,
	    6 SECONDS,
	    9 SECONDS,
	    12 SECONDS,
	    15 SECONDS,
	    18 SECONDS,
	    21 SECONDS,
	    24 SECONDS,
	    27 SECONDS,
	    30 SECONDS,
	    33 SECONDS,
	    36 SECONDS,
	    39 SECONDS,
	    42 SECONDS,
	    45 SECONDS,
	    48 SECONDS,
	    51 SECONDS
	)

/obj/item/tape/typhoon/comms/bravo
	name = "Bravo Communications Blackbox recording"
	desc = "A dusty old tape from TGV Typhoon blackbox. One of the sides has a recording."
	icon_state = "tape_yellow"
	storedinfo = list(
		"\[00:00\] <B>Pvt. Johnson:</B> Nothing's happening here. When will we get some action?",
		"\[00:03\] <B>Pvt. Brown:</B> I don't know, man. I'm just glad we're not out there with Alpha squad. Those guys are crazy, bravery and stupidity.",
		"\[00:07\] <B>Pvt. Johnson:</B> Yeah, but at least they get to shoot something. We're just sitting here twiddling our thumbs.",
		"\[00:12\] <B>Pvt. Brown:</B> Speak for yourself. I'm catching up on my beauty sleep.",
		"\[00:22\] <B>Maj. Stanislao:</B> Bravo squad, this is Maj. Stanislao. Do you read me?",
		"\[00:28\] <B>Pvt. Johnson:</B> Yes, sir. We read you loud and clear.",
		"\[00:32\] <B>Maj. Stanislao:</B> Good. I have an important mission for you. I need you to stay at the FOB and monitor the perimeter.",
		"\[00:40\] <B>Pvt. Brown:</B> What? That's it? We're just going to sit here some more?",
		"\[00:45\] <B>Maj. Stanislao:</B> I'm afraid so, Pvt. Brown. We've detected some unusual activity in the area, and I need someone to keep an eye on things.",
		"\[00:54\] <B>Pvt. Johnson:</B> Understood, sir. We'll keep a close watch on the perimeter.",
		"\[00:59\] <B>Maj. Stanislao:</B> Good work, Bravo squad. Stanislao out."
	)

	timestamp = list(
		1 SECONDS,
		3 SECONDS,
		7 SECONDS,
		12 SECONDS,
		22 SECONDS,
		28 SECONDS,
		32 SECONDS,
		40 SECONDS,
		45 SECONDS,
		54 SECONDS,
		59 SECONDS
	)

/obj/item/tape/typhoon/comms/charlie
	name = "Charlie Communications Blackbox recording"
	desc = "A dusty old tape from TGV Typhoon blackbox. One of the sides has a recording."
	icon_state = "tape_purple"
	storedinfo = list(
		"\[00:00\] <B>Pvt. Smith:</B> Hey guys, have you seen this bug I caught? It's got like, 10 legs.",
		"\[00:04\] <B>Pvt. Nguyen:</B> That's cool, Smith. You should make it our new mascot.",
		"\[00:09\] <B>Pvt. Jones:</B> This is getting ridiculous. We've been here for days and haven't seen any action.",
		"\[00:14\] <B>Pvt. Smith:</B> Yeah, but we're the weirdos, right? We gotta keep things interesting somehow.",
		"\[00:24\] <B>Maj. Stanislao:</B> Charlie squad, this is Maj. Stanislao. Do you copy?",
		"\[00:30\] <B>Pvt. Nguyen:</B> Yes sir, we read you loud and clear.",
		"\[00:34\] <B>Maj. Stanislao:</B> I have a special assignment for you. I need you to take a team and investigate a nearby cave system. Our sensors have detected some unusual readings in that area.",
		"\[00:46\] <B>Pvt. Jones:</B> What kind of readings, sir?",
		"\[00:49\] <B>Maj. Stanislao:</B> I can't disclose that information at this time, Pvt. Jones. All I can say is that it's important. Can I count on you to do this?",
		"\[00:59\] <B>Pvt. Smith:</B> Sure thing, sir. Just one question, though. Do we get hazard pay for this?",
		"\[01:05\] <B>Maj. Stanislao:</B> I'm afraid not, Pvt. Smith. But you will get a sense of pride and accomplishment from completing this mission.",
		"\[01:16\] <B>Pvt. Nguyen:</B> That's what they always say, sir. But we'll do it anyway.",
		"\[01:22\] <B>Maj. Stanislao:</B> Good attitude, Pvt. Nguyen. Remember, this could be a matter of life and death. Stay alert and stay alive.",
		"\[01:34\] <B>Pvt. Jones:</B> Don't worry, sir. Charlie squad is on the case. We'll handle whatever comes our way.",
	)

	timestamp = list(
		1 SECONDS,
		4 SECONDS,
		9 SECONDS,
		14 SECONDS,
		24 SECONDS,
		30 SECONDS,
		34 SECONDS,
		46 SECONDS,
		49 SECONDS,
		59 SECONDS,
		65 SECONDS,
		76 SECONDS,
		82 SECONDS,
		94 SECONDS,
	)

/obj/item/tape/typhoon/comms/delta
	name = "Delta Communications Blackbox recording"
	desc = "A dusty old tape from TGV Typhoon blackbox. One of the sides has a recording."
	icon_state = "tape_blue"
	storedinfo = list(
		"\[00:00\] <B>Pvt. Chuck:</B> Hey guys, do you think that if we stick our rifles up in the air, we can communicate with the aliens on their frequency?",
		"\[00:05\] <I>Pvt. Hagrid makes a fart noise.</I>",
		"\[00:10\] <B>Cpl. Swithun:</B> Hagrid, cut that out, you idiot!",
		"\[00:15\] <B>Pvt. Hagrid:</B> Sorry, sir. I couldn't help it. I had beans for breakfast.",
		"\[00:20\] <B>Pvt. Chuck:</B> Oh come on, guys, let's have some fun. Let's go poke those xenomorphs with a stick.",
		"\[00:25\] <B>Cpl. Swithun:</B> Are you kidding me, Chuck? Those things will rip you apart in seconds!",
		"\[00:30\] <B>Pvt. Hagrid:</B> Yeah, and then they'll have a Delta squad sandwich for lunch. Haha!",
		"\[00:35\] <I>Pvt. Chuck and Pvt. Hagrid laugh.</I>",
		"\[00:40\] <B>Maj. Stanislao:</B> Delta squad, this is Maj. Stanislao. Come in, over.",
		"\[00:45\] <B>Cpl. Swithun:</B> This is Delta squad, sir. What can we do for you, over?",
		"\[00:50\] <B>Maj. Stanislao:</B> Delta squad, I need you to check the east perimeter. We've detected some movement there.",
		"\[00:55\] <B>Cpl. Swithun:</B> Roger that, sir. Moving to east perimeter. Delta squad, move out!",
		"\[01:00\] <B>Pvt. Chuck:</B> Sir, what if we find some friendly aliens? Can we bring them back to the base as pets?",
		"\[01:05\] <B>Cpl. Swithun:</B> Oh for the love of... Chuck, we're not bringing any aliens back as pets!",
		"\[01:10\] <B>Pvt. Hagrid:</B> Yeah, Clueless already said we can't keep the xenomorphs as pets.",
		"\[01:15\] <B>Sgt. Clueless:</B> That's not what I said, Hagrid. I said we can't keep them as pets because they'll kill us all. Now focus, Delta squad!",
		"\[01:20\] <B>Cpl. Swithun:</B> Yes, sir! Delta squad, move out!"
	)

	timestamp = list(
		1 SECONDS,
		5 SECONDS,
		10 SECONDS,
		15 SECONDS,
		20 SECONDS,
		25 SECONDS,
		30 SECONDS,
		35 SECONDS,
		40 SECONDS,
		45 SECONDS,
		50 SECONDS,
		55 SECONDS,
		60 SECONDS,
		65 SECONDS,
		70 SECONDS,
		75 SECONDS,
		80 SECONDS,
		85 SECONDS,
		90 SECONDS,
	)

/obj/item/tape/typhoon/comms/command
	name = "Command Communications Blackbox recording"
	desc = "A dusty old tape from TGV Typhoon blackbox. One of the sides has a recording."
	icon_state = "tape_blue"
	storedinfo = list(
		"\[00:00\] <B>Maj. Stanislao:</B> Cpt. Alexandria, this is Maj. Stanislao. The situation planetside is getting worse by the minute. Our squads are reporting heavy xenomorph activity, and we've detected some strange seismic activity near the research station. What's your assessment of the situation?",
		"\[00:15\] <B>Cpt. Alexandria:</B> It's not looking good, Stanislao. Our scanners are picking up some kind of energy signature emanating from the planet's core. It could be a precursor to a massive volcanic eruption or even a tectonic shift.",
		"\[00:32\] <B>Maj. Stanislao:</B> That's the last thing we need right now. Our teams are already struggling to deal with the xenomorphs. How are the squads doing on overwatch?",
		"\[00:46\] <B>Cpt. Alexandria:</B> Well, Alpha squad is making good progress. They've cleared out the research station and are now moving to support Bravo at the FOB.",
		"\[01:03\] <B>Cpt. Alexandria:</B> Charlie squad is, uh, doing their best, but their reports are a bit...confusing.",
		"\[01:18\] <B>Cpt. Alexandria:</B> And Delta squad, well, let's just say they've caused a few...incidents.",
		"\[01:32\] <B>Maj. Stanislao:</B> What kind of incidents?",
		"\[01:42\] <B>Cpt. Alexandria:</B> Well, for starters, they accidentally blew up one of our own vehicles. And then they got lost in the woods and stumbled upon a xenomorph hive. They managed to get out alive, but they also brought a few angry xenos with them. We've got a full-blown infestation on our hands now.",
		"\[02:11\] <B>Maj. Stanislao:</B> Goddammit. I knew I should have left Delta squad back at the base. What about their current status?",
		"\[02:26\] <B>Cpt. Alexandria:</B> They're still out there, somewhere. We've lost contact with them for the past hour. I'm not sure what they're doing, but I have a feeling it's not good.",
		"\[02:46\] <B>Maj. Stanislao:</B> Alright, we need to get a handle on this situation, and fast. I'm sending in a team of engineers to try and stabilize the planet's core. You need to pull all available squads back to the FOB and hold your ground. And for the love of god, keep Delta squad away from any explosives.",
		"\[03:19\] <B>Cpt. Alexandria:</B> Understood, Stanislao. We'll do our best to contain the situation. But if we don't make it out alive, just know that Delta squad went out doing what they loved: being extremely stupid."
	)

	timestamp = list(
		1 SECONDS,
		15 SECONDS,
		32 SECONDS,
		46 SECONDS,
		1 MINUTES + 3 SECONDS,
		1 MINUTES + 18 SECONDS,
		1 MINUTES + 32 SECONDS,
		1 MINUTES + 42 SECONDS,
		2 MINUTES + 11 SECONDS,
		2 MINUTES + 26 SECONDS,
		2 MINUTES + 46 SECONDS,
		3 MINUTES + 19 SECONDS,
	)
//Plague for the memorial
/obj/structure/plaque/static_plaque/golden/marine
	name = "TGV Typhoon Memorial plaque"
	desc = "In honor of the brave soldiers of the TerraGov Marine Corps who gave their lives in service to their fellow citizens, we dedicate this memorial plaque on board the TGV Typhoon. These valiant warriors fought for the preservation of peace and freedom, and their sacrifice will never be forgotten.\
	May their courage and dedication inspire all those who serve in the TerraGov Marine Corps and beyond, and may their memory serve as a testament to the unbreakable spirit of humanity. We honor their sacrifice and pledge to uphold the ideals for which they gave their lives.\
	'Here lies the brave men and women of the TerraGov Marine Corps, who fearlessly defended their fellow citizens and the ideals of freedom and justice. Their courage and sacrifice will forever be remembered.'"
	icon_state = "marineplaque"

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

//Those are ID cards to be placed around ship near remains and such
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
	mob_name = "Lt. Tiffany Anderson"
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
	name = "TGMC Commanding Officer"
	mob_name = "Capt. Alexandria Sanita"
	outfit = /datum/outfit/typhoon/captain

/datum/outfit/typhoon/captain
	name = "TGMC Commanding Officer"
	ears = /obj/item/radio/headset/marine
	uniform = /obj/item/clothing/under/rank/security/head_of_security/formal/marine
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/marine/captain
	neck = /obj/item/clothing/neck/cloak/cap/marine
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id
	id_trim = /datum/id_trim/away/typhoon/captain


/obj/effect/mob_spawn/corpse/human/typhoon/cargo
	name = "TGMC Requisitions Officer"
	mob_name = "CPO Alex Smith"
	outfit = /datum/outfit/typhoon/cargo

/datum/outfit/typhoon/cargo
	name = "TGMC Requisitions Officer"
	ears = /obj/item/radio/headset/marine
	uniform = /obj/item/clothing/under/rank/cargo/qm
	shoes = /obj/item/clothing/shoes/jackboots
	mask = /obj/item/clothing/mask/facehugger/dead
	belt = /obj/item/grenade/frag
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id
	id_trim = /datum/id_trim/away/typhoon/cargo

