// This contains all boxes that can be vended through the JobVendor using Assistant Voucher
/obj/item/storage/box/assistant
	name = "Assistant Gear"
	desc = "Anything can be here!"

/obj/item/storage/box/assistant/security
	name = "Security Cadet Gear"
	desc = "<i>ATTENTION CADET!</i> The fact that you choose this kit means you are dedicated to upholding the stations Law and Order! Remember, do your part!"
	color = COLOR_SECURITY_RED

/obj/item/storage/box/assistant/security/PopulateContents()
	new /obj/item/clothing/shoes/jackboots/sec(src)
	new /obj/item/clothing/gloves/color/black/security(src)
	new /obj/item/clothing/under/rank/security/officer/cadet(src)
	new /obj/item/clothing/neck/tie/red(src)
	new /obj/item/clothing/head/beret/sec(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/reagent_containers/spray/pepper(src)
	new /obj/item/restraints/handcuffs(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/book/manual/wiki/security_space_law(src)
	new /obj/item/implanter/mindshield(src)
	new /obj/item/computer_disk/security(src)

/obj/item/storage/box/assistant/medical
	name = "Medical Nurse Gear"
	desc = "<i>WE NEED MULTIVER, STAT!</i> Love chaos, gore, and relaxing coffee breaks between those? Being a Nurse be prepared to make sure that patients aren't being looted, and triage anyone waiting in the lobby."
	color = COLOR_MEDICAL_BLUE

/obj/item/storage/box/assistant/medical/PopulateContents()
	new /obj/item/clothing/shoes/sneakers/white(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/clothing/under/rank/medical/scrubs/purple(src)
	new /obj/item/clothing/glasses/hud/health(src)
	new /obj/item/radio/headset/headset_med(src)
	new /obj/item/healthanalyzer(src)
	new /obj/item/stack/medical/suture(src)
	new /obj/item/stack/medical/mesh(src)
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/emergency_bed(src)
	new /obj/item/flashlight/pen(src)
	new /obj/item/computer_disk/medical(src)

/obj/item/storage/box/assistant/science
	name = "Research Assistant Gear"
	desc = "<i>GO TOUCH IT, ITS SAFE!</i> There is always something to do in Science! Help out Ordanance in extighusing fires, gather microbes for Cytology, or be a Test Subject for Robotics and Genetics!"
	color = COLOR_SCIENCE_PINK

/obj/item/storage/box/assistant/science/PopulateContents()
	new /obj/item/clothing/shoes/sneakers/white(src)
	new /obj/item/clothing/under/rank/rnd/assistant(src)
	new /obj/item/clothing/glasses/science(src)
	new /obj/item/radio/headset/headset_sci(src)
	new /obj/item/experi_scanner(src)
	new /obj/item/analyzer(src)
	new /obj/item/gps/science(src)
	new /obj/item/soap/nanotrasen(src)
	new /obj/item/extinguisher/mini(src)
	new /obj/item/computer_disk/ordnance(src)

/obj/item/storage/box/assistant/service
	name = "Service Steward Gear"
	desc = "<i>ONE ESPRESSO COMING UP!</i> Serve people at the Bar and Kitchen! Bring food directly to the departments! Beg for tips... like really please, can I have at least 50 credits..?"
	color = COLOR_SERVICE_LIME

/obj/item/storage/box/assistant/service/PopulateContents()
	new /obj/item/clothing/shoes/laceup(src)
	new /obj/item/clothing/under/suit/waiter(src)
	new /obj/item/clothing/neck/bowtie(src)
	new /obj/item/radio/headset/headset_srv(src)
	new /obj/item/storage/bag/tray(src)
	new /obj/item/reagent_containers/spray/cleaner(src)
	new /obj/item/pushbroom(src)
	new /obj/item/camera(src)
	new /obj/item/clipboard(src)
	new /obj/item/paper_bin/bundlenatural(src)
	new /obj/item/pen/fountain(src)

/obj/item/storage/box/assistant/cargo
	name = "Cargo Assistant Gear"
	desc = "<i>BOXES BOXES BOXES!!</i> Your job is not that different from a normal Cargo Technican, beside the fact that you are paid less. Push boxes to departments, make them sign forms of receiving boxes, build fort out of boxes, sleep on boxes, eat boxes..."
	color = COLOR_CARGO_BROWN

/obj/item/storage/box/assistant/cargo/PopulateContents()
	new /obj/item/clothing/under/rank/cargo/assistant(src)
	new /obj/item/clothing/gloves/fingerless(src)
	new /obj/item/radio/headset/headset_cargo(src)
	new /obj/item/boxcutter(src)
	new /obj/item/universal_scanner(src)
	new /obj/item/flashlight(src)
	new /obj/item/stack/sheet/cardboard/fifty(src)
	new /obj/item/stack/wrapping_paper(src)
	new /obj/item/stack/package_wrap(src)
	new /obj/item/clipboard(src)
	new /obj/item/crowbar(src)

/obj/item/storage/box/assistant/engineering
	name = "Engineering Assistant Gear"
	desc = "<i>WAS THIS HOLE ALWAYS HERE?</i> Maintaining the station will be either a piece of cake or absolute disaster. Sure you can fix that broken window at the Bar, but what you will do about that massive singularity heading directly at yo-"
	color = COLOR_ENGINEERING_ORANGE

/obj/item/storage/box/assistant/engineering/PopulateContents()
	new /obj/item/clothing/shoes/workboots(src)
	new /obj/item/clothing/gloves/color/black(src)
	new /obj/item/clothing/under/rank/engineering/assistant(src)
	new /obj/item/clothing/glasses/meson(src)
	new /obj/item/radio/headset/headset_eng(src)
	new /obj/item/storage/toolbox/mechanical(src)
	new /obj/item/multitool(src)
	new /obj/item/holosign_creator/engineering(src)
	new /obj/item/flashlight(src)
	new /obj/item/extinguisher(src)
	new /obj/item/stock_parts/power_store/cell/high(src)
	new /obj/item/stack/sheet/iron/fifty(src)
	new /obj/item/stack/sheet/glass/fifty(src)
	new /obj/item/computer_disk/engineering(src)
