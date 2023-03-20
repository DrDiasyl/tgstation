/obj/item/tape/typhoon_briefing
	name = "TGV Typhoon Briefing #1"
	desc = "A dusty old tape."
	icon_state = "tape_red"
	used_capacity = 10 MINUTES // so the tape is full and can't be recorded over
	storedinfo = list(
		"\[00:01\]<B>Capt. Alexandria:</B> Listen up marines! We got a distress call from a Nanotrasen <U>*BUZZ*</U> Research Station in this system!",
		"\[00:06\]<B>Capt. Alexandria:</B> We have responded to it, and now you all will be deploying to it on dropship Bastion!",
		"\[00:08\]<B>Capt. Alexandria:</B> But be aware, this station is just infested with xeno scum!",
		"\[00:12\]<B>Capt. Alexandria:</B> Now our FC wants to say something to you all.",
		"\[00:16\]<B>Maj. Stanislao:</B> We will fight for the lives of people in there!",
		"\[00:18\]<B>Maj. Stanislao:</B> We will kill all of the xenos!",
		"\[00:21\]<B>Maj. Stanislao:</B> Do you all understand? We cannot lose against those pests!",
		"\[00:23\]<U>*lots of 'YES', 'OORAHS' and other weird monkey sounds are heard</U>",
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

/obj/item/tape/typhoon_briefing/Initialize(mapload)
	. = ..()
	unspool() // the tape spawns damaged
