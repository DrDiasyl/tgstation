// Wiki books that are linked to the configured wiki link.

/// The size of the window that the wiki books open in.
#define BOOK_WINDOW_BROWSE_SIZE "970x710"
/// This macro will resolve to code that will open up the associated wiki page in the window.
#define WIKI_PAGE_IFRAME(wikiurl, link_identifier) {"
	<html>
	<head>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<style>
		iframe {
			display: none;
		}
	</style>
	</head>
	<body>
	<script type="text/javascript">
		function pageloaded(myframe) {
			document.getElementById("loading").style.display = "none";
			myframe.style.display = "inline";
	}
	</script>
	<p id='loading'>You start skimming through the manual...</p>
	<iframe width='100%' height='97%' onload="pageloaded(this)" src="[##wikiurl]/[##link_identifier]?printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
	</body>
	</html>
	"}

// A book that links to the wiki
/obj/item/book/manual/wiki
	starting_content = "Nanotrasen presently does not have any resources on this topic. If you would like to know more, contact your local Central Command representative." // safety
	/// The ending URL of the page that we link to.
	var/page_link = ""

/obj/item/book/manual/wiki/display_content(mob/living/user)
	var/wiki_url = CONFIG_GET(string/wikiurl)
	if(!wiki_url)
		user.balloon_alert(user, "this book is empty!")
		return

	credit_book_to_reader(user)
	DIRECT_OUTPUT(user, browse(WIKI_PAGE_IFRAME(wiki_url, page_link), "window=manual;size=[BOOK_WINDOW_BROWSE_SIZE]")) // if you change this GUARANTEE that it works.

/obj/item/book/manual/wiki/chemistry
	name = "Chemistry Textbook"
	icon_state ="chemistrybook"
	inhand_icon_state = "book3"
	starting_author = "Nanotrasen"
	starting_title = "Chemistry Textbook"
	page_link = "Guide_to_chemistry"

/obj/item/book/manual/wiki/engineering_construction
	name = "Station Repairs and Construction"
	icon_state ="bookEngineering"
	inhand_icon_state = "book3"
	starting_author = "Engineering Encyclopedia"
	starting_title = "Station Repairs and Construction"
	page_link = "Guide_to_construction"

/obj/item/book/manual/wiki/engineering_guide
	name = "Engineering Textbook"
	icon_state ="bookEngineering2"
	inhand_icon_state = "book4"
	starting_author = "Engineering Encyclopedia"
	starting_title = "Engineering Textbook"
	page_link = "Guide_to_engineering"

/obj/item/book/manual/wiki/authority
	name = "Some Authority Book"
	desc = "Very important book, parent sub-type of many Security and Command guides."
	starting_author = "Nanotrasen"
	attack_verb_continuous = list("prosecutes", "disciplines", "educates")
	attack_verb_simple = list("prosecute", "discipline", "educate")

/obj/item/book/manual/wiki/authority/examine(mob/user)
	. = ..()
	if(!HAS_TRAIT(user, TRAIT_JUSTICE))
		return

	. += span_notice("You can use this as a <b>disorientation weapon</b> against normal people, <b>stun weapon</b> against mindshielded. Won't work on Command members.")

/obj/item/book/manual/wiki/authority/attack(mob/living/target_mob, mob/living/user, params)
	. = ..()
	if(!HAS_TRAIT(user, TRAIT_JUSTICE))
		return TRUE

	if(!iscarbon(target_mob))
		return TRUE

	var/obj/item/organ/internal/liver/liver = target_mob.get_organ_slot(ORGAN_SLOT_LIVER)
	if(HAS_TRAIT(liver, TRAIT_ROYAL_METABOLISM)) // You cannot outmatch the Heads or Captain
		to_chat(user, span_warning("[target_mob] authority is too powerful for you!"))
		return TRUE

	if(HAS_TRAIT(target_mob, TRAIT_MINDSHIELD)) // Mindshielded are the Officers, Shitcurity should get it worse
		target_mob.Knockdown(3 SECONDS)
		to_chat(target_mob, span_bad("<b>You hear a voice:</b> <i>\"[pick(GLOB.space_law_mindshield_entries)]\"</i>"))
	else
		to_chat(target_mob, span_bad("<b>You hear a voice:</b> <i>\"[pick(GLOB.space_law_entries)]\"</i>"))

	target_mob.set_confusion_if_lower(5 SECONDS)
	target_mob.set_eye_blur_if_lower(5 SECONDS)
	playsound(target_mob, SFX_PUNCH, 25, TRUE, -1)
	return FALSE

/obj/item/book/manual/wiki/authority/suicide_act(mob/living/user)
	user.visible_message(span_suicide("[user] pretends to read \the [src] intently... then promptly dies of laughter!"))
	user.emote("laugh")
	return OXYLOSS

/obj/item/book/manual/wiki/authority/authority/security_space_law
	name = "Space Law"
	desc = "A set of Nanotrasen guidelines for keeping law and order on their space stations."
	icon_state = "bookSpaceLaw"
	inhand_icon_state = "book2"
	starting_title = "Space Law"
	page_link = "Space_Law"

/obj/item/book/manual/wiki/authority/guide_to_security
	name = "Security Protocols"
	desc = "A set of advanced information for the Security Department."
	icon_state = "bookGuideToSecurity"
	inhand_icon_state = "book2"
	starting_title = "Security Protocols"
	page_link = "Guide_to_security"

/obj/item/book/manual/wiki/authority/standard_operating_procedure
	name = "Standard Operating Procedure"
	desc = "A set of SOPs for various emergencies and Code levels."
	icon_state = "bookStandardOperatingProcedure"
	inhand_icon_state = "book4"
	starting_title = "Standard Operating Procedure"
	page_link = "Standard_Operating_Procedure"

/obj/item/book/manual/wiki/authority/chain_of_command
	name = "Chain of Command"
	desc = "Who controls who, and why you can't just mutiny Captain."
	icon_state = "bookChainOfCommand"
	inhand_icon_state = "book4"
	starting_title = "Chain of Command"
	page_link = "Chain_of_Command"

/obj/item/book/manual/wiki/authority/guide_to_trial
	name = "Trial Procedures"
	desc = "How to hold a <i>proper</i> trial."
	icon_state = "bookGuideToTrial"
	inhand_icon_state = "book2"
	starting_title = "Trial Procedures"
	page_link = "Guide_to_trials"

/obj/item/book/manual/wiki/guide_to_gulag
	name = "Labor Camps - Justice through labor!"
	desc = "How to utilize the Nanotrasen Labor Camp system, and its benefits."
	icon_state = "bookGuideToGulag"
	inhand_icon_state = "book2"
	starting_author = "Nanotrasen"
	starting_title = "Labor Camps - Justice through labor!"
	page_link = "Guide_to_the_Labor_Camp"

/obj/item/book/manual/wiki/guide_to_paperwork
	name = "Paper and Work"
	desc = "Various forms and professional formating techniques for true bureaucrats."
	icon_state = "bookGuideToPaperwork"
	inhand_icon_state = "book4"
	starting_author = "Nanotrasen"
	starting_title = "Paper and Work"
	page_link = "Paper_Markdown"

/obj/item/book/manual/wiki/infections
	name = "Infections - Making your own pandemic!"
	icon_state = "bookInfections"
	inhand_icon_state = "book8"
	starting_author = "Infections Encyclopedia"
	starting_title = "Infections - Making your own pandemic!"
	page_link = "Infections"

/obj/item/book/manual/wiki/telescience
	name = "Teleportation Science - Bluespace for dummies!"
	icon_state = "book7"
	inhand_icon_state = "book7"
	starting_author = "University of Bluespace"
	starting_title = "Teleportation Science - Bluespace for dummies!"
	page_link = "Guide_to_telescience"

/obj/item/book/manual/wiki/engineering_hacking
	name = "Hacking"
	icon_state ="bookHacking"
	inhand_icon_state = "book2"
	starting_author = "Engineering Encyclopedia"
	starting_title = "Hacking"
	page_link = "Hacking"

/obj/item/book/manual/wiki/detective
	name = "The Film Noir: Proper Procedures for Investigations"
	icon_state ="bookDetective"
	inhand_icon_state = "book2"
	starting_author = "Nanotrasen"
	starting_title = "The Film Noir: Proper Procedures for Investigations"
	page_link = "Detective"

/obj/item/book/manual/wiki/barman_recipes
	name = "Barman Recipes: Mixing Drinks and Changing Lives"
	icon_state = "barbook"
	inhand_icon_state = "book4"
	starting_author = "Sir John Rose"
	starting_title = "Barman Recipes: Mixing Drinks and Changing Lives"
	page_link = "Guide_to_drinks"

/obj/item/book/manual/wiki/robotics_cyborgs
	name = "Robotics for Dummies"
	icon_state = "borgbook"
	starting_author = "XISC"
	starting_title = "Robotics for Dummies"
	page_link = "Guide_to_robotics"

/obj/item/book/manual/wiki/research_and_development
	name = "Research and Development 101"
	icon_state = "rdbook"
	inhand_icon_state = "book4"
	starting_author = "Dr. L. Ight"
	starting_title = "Research and Development 101"
	page_link = "Guide_to_Research_and_Development"

/obj/item/book/manual/wiki/experimentor
	name = "Mentoring your Experiments"
	icon_state = "rdbook"
	inhand_icon_state = "book4"
	starting_author = "Dr. H.P. Kritz"
	starting_title = "Mentoring your Experiments"
	page_link = "Experimentor"

/obj/item/book/manual/wiki/cooking_to_serve_man
	name = "To Serve Man"
	desc = "It's a cookbook!"
	icon_state ="cooked_book"
	inhand_icon_state = "book8"
	starting_author = "the Kanamitan Empire"
	starting_title = "To Serve Man"
	page_link = "Guide_to_food"

/obj/item/book/manual/wiki/tcomms
	name = "Subspace Telecommunications And You"
	icon_state = "book3"
	inhand_icon_state = "book3"
	starting_author = "Engineering Encyclopedia"
	starting_title = "Subspace Telecommunications And You"
	page_link = "Guide_to_Telecommunications"

/obj/item/book/manual/wiki/atmospherics
	name = "Lexica Atmosia"
	icon_state = "book5"
	inhand_icon_state = "book5"
	starting_author = "the City-state of Atmosia"
	starting_title = "Lexica Atmosia"
	page_link = "Guide_to_Atmospherics"

/obj/item/book/manual/wiki/medicine
	name = "Medical Space Compendium, Volume 638"
	icon_state = "book8"
	inhand_icon_state = "book8"
	starting_author = "Medical Journal"
	starting_title = "Medical Space Compendium, Volume 638"
	page_link = "Guide_to_medicine"

/obj/item/book/manual/wiki/surgery
	name = "Brain Surgery for Dummies"
	icon_state = "book4"
	inhand_icon_state = "book4"
	starting_author = "Dr. F. Fran"
	starting_title = "Brain Surgery for Dummies"
	page_link = "Surgery"

/obj/item/book/manual/wiki/grenades
	name = "DIY Chemical Grenades"
	icon_state = "book2"
	inhand_icon_state = "book2"
	starting_author = "W. Powell"
	starting_title = "DIY Chemical Grenades"
	page_link = "Grenade"

/obj/item/book/manual/wiki/ordnance
	name = "Ordnance for Dummies or: How I Learned to Stop Worrying and Love the Maxcap"
	icon_state = "book6"
	inhand_icon_state = "book6"
	starting_author = "Cuban Pete"
	starting_title = "Ordnance for Dummies or: How I Learned to Stop Worrying and Love the Maxcap"
	page_link = "Guide_to_toxins"

/obj/item/book/manual/wiki/ordnance/suicide_act(mob/living/user)
	var/mob/living/carbon/human/H = user
	user.visible_message(span_suicide("[user] starts dancing to the Rhumba Beat! It looks like [user.p_theyre()] trying to commit suicide!"))
	playsound(loc, 'sound/effects/spray.ogg', 10, TRUE, -3)
	if (!QDELETED(H))
		H.emote("spin")
		sleep(2 SECONDS)
		for(var/obj/item/W in H)
			H.dropItemToGround(W)
			if(prob(50))
				step(W, pick(GLOB.alldirs))
		ADD_TRAIT(H, TRAIT_DISFIGURED, TRAIT_GENERIC)
		for(var/obj/item/bodypart/part as anything in H.bodyparts)
			part.adjustBleedStacks(5)
		H.gib_animation()
		sleep(0.3 SECONDS)
		H.adjustBruteLoss(1000) //to make the body super-bloody
		// if we use gib() then the body gets deleted
		H.spawn_gibs()
		H.spill_organs(DROP_ALL_REMAINS)
		H.spread_bodyparts(DROP_BRAIN)
	return BRUTELOSS

/obj/item/book/manual/wiki/plumbing
	name = "Chemical Factories Without Narcotics"
	icon_state ="plumbingbook"
	inhand_icon_state = "book4"
	starting_author = "Nanotrasen"
	starting_title = "Chemical Factories Without Narcotics"
	page_link = "Guide_to_plumbing"

/obj/item/book/manual/wiki/cytology
	name = "Unethically Grown Organics"
	icon_state ="cytologybook"
	inhand_icon_state = "book6"
	starting_author = "Kryson"
	starting_title = "Unethically Grown Organics"
	page_link = "Guide_to_cytology"

/obj/item/book/manual/wiki/tgc
	name = "Tactical Game Cards - Player's Handbook"
	icon_state = "tgcbook"
	inhand_icon_state = "book2"
	starting_author = "Nanotrasen Edu-tainment Division"
	starting_title = "Tactical Game Cards - Player's Handbook"
	page_link = "Tactical_Game_Cards"

#undef BOOK_WINDOW_BROWSE_SIZE
#undef WIKI_PAGE_IFRAME
