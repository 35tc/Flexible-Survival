Version 1 of Vent Fox by Dys begins here.

"Adds a random encounter in the mall, and an 'NPC' that can be interacted with."

Section 0 - Variables

VentFoxEncounterCount is a number that varies.
VentFoxRelationship is a number that varies.
[0 = not met, 1 = met and helped, 2 = met twice and helped, 3 = vent location known, 100 = didn't help]
VentFoxContentLevel is a number that varies.
[What level of content the player has unlocked with the fox after helping it.
0 = never interacted
1 = one interaction. Unlocks scenes where the fox dominates the player
2 = two interactions. Unlocks kinkier scenes with the fox
3 = three+ interactions. Unlocks extreme content with fox.]
VentFoxLastFed is a number that varies. VentFoxLastFed is usually 1000.
[Tracks how many turns have passed since Vent was let fed.]
VentDomSize is a number that varies. VentDomSize is usually 3.
[The body-size for Vent to take on during scenes in which he is dominant.]
VentSubSize is a number that varies. VentSubSize is usually 2.
[The body-size for Vent to take on during scenes in which he is submissive.]
VentOviAmount is a number that varies. VentOviAmount is usually 0.
[The amount of oviposition to occur in supported scenes.
0 = none
1 = only ovi on request
2 = ovi during supported scenes
3 = excessive ovi]
VentWSAmount is a number that varies. VentWSAmount is usually 0.
[The amount of watersports to occur in supported scenes.
0 = none
1 = no marking unless requested
2 = marking at any time, even during sex / penetration
3 = marking at any time, especially during penetration, with excessive amounts of urine]
VentFluidAmount is a number that varies. VentFluidAmount is usually 0.
[The amount of bodily fluids Vent produces.
0 = average
1 = more than average
2 = way more than average
3 = extreme]

Section 1 - Event

instead of going east from Mall Atrium while (VentFoxEncounterCount < 2 and a random chance of 1 in 3 succeeds): [33% chance of the player finding the vent fox.]
	move player to Mall East Wing;
	if debugactive is 1:
		say "     DEBUG: Vent Fox: [VentFoxEncounterCount][line break]";
	if VentFoxEncounterCount is 0: [first encounter with the derpy fox]
		say "     As you make your way to the east wing, you hear a squeaking noise coming from one of the abandoned storefronts.";
		say "     [bold type]Do you want to investigate?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Check out the source of the sounds.";
		say "     ([link]N[as]n[end link]) - Continue past without looking.";
		if player consents:
			now VentFoxEncounterCount is 1;
			say "     [line break]";
			say "     Opting to investigate the strange noises, you step through the doorway of the store. Looking around, most of it looks like it's been looted already, with shelves and displays being left barren. Towards the back of the shop, you can make out a vent. Looking closer, you see a red and white latex paw poking through the grating! The foreleg wiggles back and forth, it's owner seeming to have gotten stuck. The squeaks you were hearing are louder now, and there's a definite distressed sound to them that makes you feel almost bad for the stuck feral. Looking at the ground directly in front of the vent, you see what looks like a bike tire inner tube. It's just a few feet away from the fox's paw, and it's clear he was attempting to get a snack for himself when he got stuck.";
			say "     [bold type]Do you help the stuck feral out?[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				now VentFoxRelationship is 1;
				say "     [line break]";
				say "     Sighing, you step towards the vent before unfastening the latch that keeps it held in place. You pull the cover off, dragging the stuck fox out of the vent with it. He lets out a rather startled yelp and begins yanking harder on his arm. You mumble something under your breath, wishing it would stop squirming so you could help it, and almost as if it can understand you, it calms down. With it relaxed, you put manage to slide the vent cover off of his paw. As soon as he's free, the rubber vulpine squeaks happily and darts back into the vent, disappearing from sight.";
				say "     With that problem solved, you place the grate back over the duct and fasten it in place before making your way out of the store and into the East Wing, wondering if you'll ever see [']Vent['] again.";
			else:
				now VentFoxRelationship is 100;
				now VentFoxEncounterCount is 3;
				say "     [line break]";
				say "     Deciding to leave the fox in the predicament he got himself into, you leave, continuing on to the East Wing. As you exit the store, you can hear a pitiful whine as the fox senses you deserting him.";
		else:
			say "     [line break]";
			say "     Deciding it's probably best to just move along, you continue making your way to the East Wing.";
	else if VentFoxEncounterCount is 1: [second time]
		say "     As you head to the East Wing, you hear squeaking coming from the same shop you'd found [']Vent['] in. Sighing, you decide to make your way to the store to help the silly latex vulpine. Stepping inside, you don't even bother looking around before you go to the vent. You unfasten the cover again, pulling it, and the fox towards you. This time, he doesn't seem startled or scared. As a matter of fact, he almost looks, relieved. You gently free him from the grate, but this time, he doesn't dash back into the ductwork immediately. Instead, he leans down to grab the inner tube that's still laying there, picking it up. He turns to look at you before running back into the vents.";
		say "     Not bothering to put the cover back in place, you continue heading to the East Wing, a small smile on your [face of player] face. [bold type]Perhaps you could search around the mall to find how the fox got inside in the first place...[roman type]";
		now VentFoxEncounterCount is 2; [did the event twice]
		now VentFoxRelationship is 2;

Section 2 - Location

vent cover is an object. It is in Smith Haven Mall Lot West. It is fixed in place. Understand "vent" as vent cover.
The description of vent cover is "[VentDescription]".

KnockOnVent is an action applying to nothing.
Understand "knock on it" as KnockOnVent.
Understand "knock vent" as KnockOnVent.
Understand "knock cover" as KnockOnVent.
Understand "knock on vent" as KnockOnVent.
Understand "knock on the vent" as KnockOnVent.
Understand "knock on cover" as KnockOnVent.
Understand "knock on the cover" as KnockOnVent.
Understand "knock on vent cover" as KnockOnVent.
Understand "knock on the vent cover" as KnockOnVent.

Check KnockOnVent:
	if vent cover is not visible, say "What?" instead;

Carry out KnockOnVent:
	say "[KnockedOnVent]";

Section 3 - Interactions

FuckVent is an action applying to nothing.
Understand "fuck vent" as FuckVent.
Understand "sex vent" as FuckVent.

Check FuckVent:
	if vent cover is not visible, say "Who?" instead;

Carry out FuckVent:
	say "[VentFoxSexMenu]";

RequestVent is an action applying to nothing.
Understand "request vent" as RequestVent.

Check RequestVent:
	if vent cover is not visible, say "Who?" instead;

Carry out RequestVent:
	say "[VentFoxPrefsMenu]";

To say VentDescription:[Description of the vent for various states of relationship.]
	if VentFoxRelationship < 3 or VentFoxRelationship is 100:[not known / disliked by Vent.]
		say "     You can see a large, grated vent on the wall of the building. It's close enough to the ground that a creature or two might've been able to slip inside. Maybe you could try [link]knocking on it[as]knock on it[end link] to draw something out?";
	else:
		say "     You can see a large, grated vent on the wall of the building, You know it as Vent's hideaway. You can [link]knock on it[as]knock vent[end link] to get his attention.";

To say KnockedOnVent:[Various reactions to knocking on the vent.]
	if VentFoxRelationship is 0:[not met]
		say "     You tentatively knock on the vent cover, seeing if you can draw the attention of... well, you don't really know what. A few seconds of silence pass before you decide to go do something else.";
	else if VentFoxRelationship is 1:[met & helped]
		say "     You knock lightly on the vent cover, trying to draw the attention of whatever may be inside it. A few seconds of silence pass, and just as you're about to move on, you hear a soft shuffling, moving away from you through the vents. It's pretty obvious that [italic type]something[roman type] is in there.";
	else if VentFoxRelationship is 100:[met, didn't help]
		say "     You decided to knock on the vent grating, trying to draw the attention of whatever creatures may be residing inside it. However, you're almost instantly met with a soft growl. Frowning, you continue on your way.";
	else if VentFoxRelationship is 2:[met, helped twice.]
		say "     You knock lightly on the vent cover, trying to draw the attention of whatever may be inside it. A few seconds of silence pass, and just as you're about to move on, you begin to hear a soft shuffling, drawing closer to you with each passing moment. A couple seconds later, the shuffling stops and a black, red, and white rubber vulpine sticks his head through the grating with a determined squeak. Seeing that you're his visitor, the Vent Fox yips happily before moving back into the vent. Maybe next time you visit you could [']play['] with him...";
		now VentFoxRelationship is 3;[vent known]
	else if VentFoxRelationship is 3:[vent known]
		say "     You knock lightly on the vent cover, trying to draw the attention of whatever may be inside it. A few seconds of silence pass, and just as you're about to move on, you begin to hear a soft shuffling, drawing closer to you with each passing moment. A couple seconds later, the shuffling stops and a black, red, and white rubber vulpine sticks his head through the grating with a determined squeak. After seeing who his visitor is, the latex vulpine yips happily in greeting before his body flows into a liquid blob, dripping out of the vent and onto the ground. Why he couldn't have done that when he was stuck inside, you're really not sure. Once all of his mass is outside, he quickly reforms into his normal shape, staring at you patiently, as if asking you what you wanted to do. [VentFoxMenu]";
	else:
		say "     DEBUG: You shouldn't be able to see this! If you are, contact @Dys on the FS Discord, and give him the error code: VentFox:[VentFoxEncounterCount],[VentFoxRelationship]";

to say VentFoxMenu:[Menu for interacting with Vent.]
	say "     Well, what do you do with the fox?";
	choose row monster from table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row from table of fucking options;
	now title entry is "Help the rubber fox find some food";
	now sortorder entry is 1;
	now description entry is "Assist the Vent Fox in finding something to eat";
	[]
	choose a blank row from table of fucking options;
	now title entry is "Have sex with him";
	now sortorder entry is 2;
	now description entry is "Have some fun with your foxy compatriot";
	[]
	if VentFoxContentLevel is 3:
		choose a blank row from table of fucking options;
		now title entry is "Request some things of the fox";
		now sortorder entry is 3;
		now description entry is "Change the way you interact with Vent";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows from table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[line break][link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows from table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber from table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Help the rubber fox find some food":
						say "[VentFoxScavengeFood]";
					-- "Have sex with him":
						say "[VentFoxSexMenu]";
					-- "Request some things of the fox":
						say "[VentFoxPrefsMenu]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "     Change your mind and do something else?";
			if player consents:
				now sextablerun is 1;
				say "     Opting to leave for now, you wave goodbye to the fox. He let's out a disappointed whine as you leave.";
				WaitLineBreak;
			else:
				say "Pick an option.";
		else:
			say "Invalid selection made. Please pick an option from 1 to [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say VentFoxScavengeFood:[Player helps the fox find some rubber to eat.]
	if VentFoxLastFed - turns >= 8:
		if VentFoxContentLevel is 0:[first time scavving.]
			say "     You happily suggest to the fox that you two can go look for some food together, not really expecting any form of comprehension. To your surprise, however, the rubber vulpine swishes its tail happily and nods its head. His body then shrinks down to be roughly the size of a lap-dog, and he hops up onto your shoulder. You can't help but let a smile grace your [face of player] face as the you begin walking aimlessly. It's very apparent to you that this feral is at least intelligent.";
			say "     You make your way around the building with no real destination in mind when you come across a garage. It looks like it used to be used for maintenance vehicles, with jacks and tools scattered around on workbenches pushed up against the walls. As you're taking in the room, Vent yips, startling you slightly. You look at the small fox on your shoulder to see his gaze is firmly locked with a stack of tires in the corner of the room. It seems he wants to eat those. You decide that no real harm can come from it, and you take him over to the stack of rubber. He hops off your shoulder, squeaking quietly as he lands. Deciding that he can handle it from there, you continue looking around the room, trying to see if there's anything you could use in here...";
			WaitLineBreak;
			say "     You're startled out of your search by a sudden bark. Whirling around, you're greeted by a much larger Vent, who is sitting on his haunches where the tires used to be. He's about the size of a wolf now. The latex vulpine gives you a grin before he shrinks his body back down to the size he was upon arrival, before hopping back up onto your shoulder and nuzzling you. He seems to be rather thankful.";
			say "     [italic type]You've helped Vent assimilate some material. Not only is the fox able to grow larger, but he also seems to be more confident around you. You can now do more with him.[roman type]";
			now VentFoxContentLevel is 1;
			now VentFoxLastFed is turns;
		else if VentFoxContentLevel is 1:
			say "     You suggest to your rubber friend that you could go find some food together. He yips to show his approval before he shrinks down once more. However, he isn't quite able to become as small as he was last time, so he elects to simply walk in your shadow as you cross the parking lot, heading to a shed you can see in the distance. Your vulpine companion trots behind you, squeaking quietly every so often. As you come closer to the freestanding structure, you notice that the door still has a padlock barring entry. That could be a bit of a problem.";
			say "     [bold type]Should you try to find another way in? Else, you'll just try to pry the lock off the door.[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Find another entrance.";
			say "     ([link]N[as]n[end link]) - Break the lock off.";
			if player consents:
				say "     [line break]";
				let bonus be ((perception of player - 10) / 2);
				let diceroll be a random number between 1 and 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Perception Check):[line break]";
				if diceroll + bonus >= 16:
					say "     You see a stray piece of sheet metal leaning up against the rear wall of the shack. Moving it to the side, you can make out a hole just big enough for you to get through. Stepping inside, you look around before your eyes land on a large container of liquid rubber and its catalyzer. That should be perfect for Vent!";
					WaitLineBreak;
					say "[VentShedEatScene]";
				else:
					say "     You look around the building but you're unable to find any obvious entrance. Shaking your head in disappointment, you head back to Vent's vent, the fox seeming rather sad all the while.";
			else:
				say "     [line break]";
				let bonus be ((strength of player - 10) / 2);
				let diceroll be a random number between 1 and 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Strength Check):[line break]";
				if diceroll + bonus >= 16:
					say "     Grasping the lock by it's hasp with one hand, and the body with the other, you tug hard. With a fair amount of effort, you feel the locking mechanism shearing and breaking before it finally snaps apart. You drop the two halves to the ground before you push the door open and step through it. Looking around the small space, your eyes eventually land on a large container of liquid latex along with a container of catalyzer. That should be perfect for Vent!";
					WaitLineBreak;
					say "[VentShedEatScene]";
				else:
					say "     You try as hard as you can, pulling and tugging on the lock, but your unable to break it away from the door. Shaking your head in disappointment, you step away, heading back to Vent's hideaway vent. The rubber vulpine walks with you, looking slightly sad.";
		else if VentFoxContentLevel is 2:
			say "     Parking lot with Logan argument here.";
			now VentFoxContentLevel is 3;
			now VentFoxLastFed is turns;
		else:
			say "     You think about going to find more food for Vent, but he's honestly so big at this point that there's really no point.";
	else:
		say "     You make your suggestions to Vent, but he simply shakes his head, still too full from his last meal.";

to say VentShedEatScene:
	say "     The vulpine comes in after you, and he gives the air a few sniffs before he dashes over to the containers of latex. He lets out a happy yip and looks at your expectantly, an excited gleam in his eyes. You grin and step over towards him, leaning down and unfastening the lids of the containers before tossing them aside. Now that he can get to the material, he extends his tail, forking it into two seperate tendrils. Each one dips into each respective container, and you watch as the fluids flow up his tail and into his body. As it gets absorbed into his system, he grows larger. Once he's completely drained the containers, he's near the size of a lion. He gives you grin as he shrinks his body back down again, before you both make your way back to the vent.";
	now VentFoxContentLevel is 2;
	now VentFoxLastFed is turns;

to say VentFoxSexMenu:[Pretty self explanatory.]
	if cocks of player > 0:
		say "     What kind of sex do you want to have?";
		choose row monster from table of random critters;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if player is not submissive and anallevel is not 1:
			choose a blank row from table of fucking options;
			now title entry is "Fuck Vent's ass";
			now sortorder entry is 1;
			now description entry is "Use the fox's hole for your own pleasure";
		[[]
		if anallevel is not 1 and VentFoxContentLevel > 0:
			choose a blank row from table of fucking options;
			now title entry is "Get fucked by Vent";
			now sortorder entry is 2;
			now description entry is "Have the fox take your hole";
		[]
		if anallevel > 2 and VentFoxContentLevel > 0:
			choose a blank row from table of fucking options;
			now title entry is "Get rimmed by Vent";
			now sortorder entry is 5;
			now description entry is "Have the fox shove that latex tongue inside you";
		[]
		if anallevel > 2 and VentFoxContentLevel > 1:
			choose a blank row from table of fucking options;
			now title entry is "Get Vent to rim you with his tongue extended";
			now sortorder entry is 6;
			now description entry is "Have Vent use his more dexterous organ to thoroughly rim you";
		[]
		if anallevel > 2 and VentFoxContentLevel > 2 and "Kinky" is listed in feats of player:
			choose a blank row from table of fucking options;
			now title entry is "Get tongue-fucked by Vent";
			now sortorder entry is 7;
			now description entry is "Get Vent to use his shapeshifting abilities to fuck you with a cock-tongue";
		[]
		if VentFoxContentLevel > 0:
			choose a blank row from table of fucking options;
			now title entry is "Suck Vent's cock";
			now sortorder entry is 8;
			now description entry is "Take that rubber shaft into your mouth";
		[]
		choose a blank row from table of fucking options;
		now title entry is "Get Vent to suck your dick";
		now sortorder entry is 9;
		now description entry is "Have the rubber vulpine give you a blowjob.";
		[]]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows from table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[line break][link]0 - Nevermind[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows from table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber from table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is:
						-- "Fuck Vent's ass":
							say "[FuckVentFoxAss]";
						-- "Get fucked by Vent":
							say "[VentFoxFucksPlayer]";
						-- "Get rimmed by Vent":
							say "[VentFoxRimsPlayerNormal]";
						-- "Get Vent to rim you with his tongue extended":
							say "[VentFoxRimsPlayerExtend]";
						-- "Get tongue-fucked by Vent":
							say "[VentFoxTongueFucksPlayer]";
						-- "Suck Vent's cock":
							say "[SuckVentFoxCock]";
						-- "Get Vent to suck your dick":
							say "[VentFoxSuckCock]";
					WaitLineBreak;
			else if calcnumber is 0:
				say "     Change your mind and do something else?";
				if player consents:
					now sextablerun is 1;
					say "     Opting to leave for now, you wave goodbye to the fox. He let's out a disappointed whine as you leave.";
					WaitLineBreak;
				else:
					say "Pick an option.";
			else:
				say "Invalid selection made. Please pick an option from 1 to [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "     As you make your offer to the latex vulpine, he shakes his head, indicating that he isn't interested in having sex with you. It seems you lack the equipment he prefers...";

to say VentFoxPrefsMenu:[Menu for setting preferences.]
	say "     Vent has acquired enough mass to do lots of things to his body. The fox listens attentively as you speak to him. What should you ask him to change?";
	while calcnumber is not -100:
		line break;
		say "     [bold type]Size[roman type]";
		line break;
		say "     [link](1)[as]1[end link] - Size during dominant sex.";
		say "     [link](2)[as]2[end link] - Size during submissive sex.";
		line break;
		say "     [bold type]Content[roman type]";
		line break;
		say "     [link](3)[as]3[end link] - Fluid production level.";
		say "     [link](4)[as]4[end link] - Watersports level.";
		say "     [link](5)[as]5[end link] - Oviposition level.";
		line break;
		say "     [link](0)[as]0[end link] - Abort.";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 5:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid choice.";
		if calcnumber is 1:
			say "[DomSexSizeMenu]";
		else if calcnumber is 2:
			say "[SubSexSizeMenu]";
		else if calcnumber is 3:
			say "[FluidLevelMenu]";
		else if calcnumber is 4:
			say "[WSLevelMenu]";
		else if calcnumber is 5:
			say "[OviLevelMenu]";
		else if calcNumber is 0:
			say "     Changing your mind, you tell Vent things are fine how they are now.";
			break;

to say DomSexSizeMenu:[Menu for setting Vent's size during dominant sex.]
	say "     You tell him that you want him to change his size while he dominates you. He nods, and waits for you to tell him what size he should be.";
	say "     [link](1)[as]1[end link] - Average Latex Fox size.";
	say "     [link](2)[as]2[end link] - Lion-sized Latex Fox.";
	say "     [link](3)[as]3[end link] - Direwolf sized Latex Fox.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber >= 1 and calcnumber <= 3:
			break;
		else:
			say "Invalid choice.";
	if calcnumber is 1:
		say "     Vent nods at your request. He'll now be average in size when he dominates you.";
		now VentDomSize is 3;
	else if calcnumber is 2:
		say "     Vent nods at your request. He'll now be lion-sized when he dominates you.";
		now VentDomSize is 4;
	else:
		say "     Vent nods at your request. He'll now be larger than a horse when he dominates you.";
		now VentDomSize is 5;

to say SubSexSizeMenu:[Menu for setting Vent's size during submissive sex.]
	say "     You tell him that you want him to change his size while you dominate him. He nods, and waits for you to tell him what size he should be.";
	say "     (1) - Not yet available.";
	say "     [link](2)[as]2[end link] - Small Latex Fox.";
	say "     [link](3)[as]3[end link] - Average Latex Fox.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber >= 1 and calcnumber <= 3:
			break;
		else:
			say "Invalid choice.";
	if calcnumber is 1:
		say "     Vent shakes his head at your request. He seems to be against this idea.";
		now VentSubSize is 2;
	else if calcnumber is 1:
		say "     Vent nods at your request. He'll now be small in size when he is dominated by you.";
		now VentSubSize is 2;

to say FluidLevelMenu:[Menu for setting Vent's fluid production levels.]
	say "     You tell the rubber vulpine you want him to change the amount of fluids he produces. He nods at you and waits for you to tell him how much he should be making.";
	say "     [link](0)[as]0[end link] - Average amounts.";
	say "     [link](1)[as]1[end link] - Above average amounts.";
	say "     [link](2)[as]2[end link] - Excessive amounts.";
	say "     [link](3)[as]3[end link] - Extreme amounts.";
	now calcnumber is -1;
	while calcnumber < 0 or calcnumber > 3:
		say "Choice? (0-3)>[run paragraph on]";
		get a number;
		if calcnumber >= 0 and calcnumber <= 3:
			break;
		else:
			say "Invalid choice.";
	if calcnumber is 0:
		say "     Nodding, Vent adjusts his body to produce normal amounts of everything from semen to saliva.";
		now VentFluidAmount is 0;
	else if calcnumber is 1:
		say "     Vent gives you an affirmative yip as he adjusts his body to produce more fluids than normal.";
		now VentFluidAmount is 1;
	else if calcnumber is 2:
		say "     Vent nods at your request. He'll now make rather excessive amounts of bodily fluids.";
		now VentFluidAmount is 2;
	else:
		say "     Vent nods at you, changing himself so he produces insane amounts of everything from cum, to saliva.";
		now VentFluidAmount is 3;

to say WSLevelMenu:[Menu for setting WS amount of Vent.]
	if WSLevel is 3:
		say "     You tell the rubber vulpine you want him to change how much and how often he marks you. He nods at you and waits for you to elaborate.";
		say "     [link](0)[as]0[end link] - No marking.";
		say "     [link](1)[as]1[end link] - No marking unless requested.";
		say "     [link](2)[as]2[end link] - Marking at any time.";
		say "     [link](3)[as]3[end link] - Marking at any time with excessive amounts of urine.";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid choice.";
		if calcnumber is 0:
			say "     Nodding, Vent agrees to no longer mark you.";
			now VentWSAmount is 0;
		else if calcnumber is 1:
			say "     Vent gives you an affirmative yip to show he'll only mark you if you specifically request it.";
			now VentWSAmount is 1;
		else if calcnumber is 2:
			say "     Vent nods at your request. He'll now mark you at any time, sometimes during sex. [bold type]He may even mark you while penetrating you...[roman type]";
			now VentWSAmount is 2;
		else:
			say "     Vent nods at you. He'll now mark you at any time, [italic type]especially[roman type] during sex. He'll make sure that he produces excessive urine as well. [bold type]He'll mark you while penetrating you, as well...[roman type]";
			now VentWSAmount is 3;
	else:
		say "     You ask Vent to change how he marks you, but even he seems to know you aren't a fan of watersports... [italic type]To gain access to this, you need to change your watersports level to Full.[roman type]";

to say OviLevelMenu:[Menu for setting Oviposition amount of Vent.]
	if "Kinky" is listed in feats of player:
		say "     With his excellent control over his own body, Vent is capable of putting sterile gooey eggs inside you. How do you want this to be done?";
		say "     [link](0)[as]0[end link] - No egging.";
		say "     [link](1)[as]1[end link] - No egging unless requested.";
		say "     [link](2)[as]2[end link] - Egging during supported scenes.";
		say "     [link](3)[as]3[end link] - Excessive egging during supported scenes.";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid choice.";
		if calcnumber is 0:
			say "     Nodding, Vent agrees to no longer [']impregnate['] you.";
			now VentOviAmount is 0;
		else if calcnumber is 1:
			say "     Vent gives you an affirmative yip to show he'll only egg you if you specifically request it.";
			now VentOviAmount is 1;
		else if calcnumber is 2:
			say "     Vent nods at your request. He may now decide to perform oviposition during some scenes.";
			now VentOviAmount is 2;
		else:
			say "     Vent nods at you. He will now perform oviposition during some scenes. [bold type]He also produces an excessive amount of eggs now.[roman type]";
			now VentOviAmount is 3;
	else:
		say "     Even as you make the suggestion to Vent, you realize that you're honestly not kinky enough for that. [italic type]You need the 'Kinky' fun feat for this option.[roman type]";

to say FuckVentFoxAss:[Player fucks the fox's ass.]
	if VentSubSize is 3:
		if cockname of player is listed in infections of Knotlist:
			say "     You make your suggestion to Vent, and he yips happily before turning around and raising his tail for you. You quickly strip, stroking your own cock[if cocks of player > 1]s[end if] to harden it, before you line up with Vent's tailhole. Sparing one last glance to make sure no-one is around, you slowly begin to push your [cock size desc of player] penis into his tight hole. [if cock length of player < 10]After a bit of pushing, you manage to bottom out to your growing knot, the fox taking your length without any problem.[else if cock length of player < 20]After a fair amount of pushing, you manage to bottom out to your growing knot. Vent's belly is stretching outward slightly, highlighting the size difference between the two of you.[else if cock length of player < 30]As you push deeper into his hole, you begin to notice Vent's stomach bulging. You stop for a moment, but the fox simply looks back on you, begging you with his eyes to keep going. You concede, and push more of your length into the fox, stretching him rather significantly before you manage to press your growing knot against his hole.[else if cock length of player > 30]As you push more of your length into the vulpine's hole, you notice his stomach bulging outwards. Concerned for his safety, you stop and look at him. He looks back at you, a hungry look in his eyes and whines, begging you to push the rest into him. Obliging, you begin moving again, and soon enough, your knot is brushing against his entrance, his stomach forming to the shape of your [cock of player] cock, showing just how elastic he actually is.[end if]";
		else:
			say "     You make your suggestion to Vent, and he yips happily before turning around and raising his tail for you. You quickly strip, stroking your own cock[if cocks of player > 1]s[end if] to harden it, before you line up with Vent's tailhole. Sparing one last glance to make sure no-one is around, you slowly begin to push your [cock size desc of player] penis into his tight hole. [if cock length of player < 10]After a bit of pushing, you manage to bottom out, brushing your hips against him, the fox taking your length without any problem.[else if cock length of player < 20]After a fair amount of pushing, you manage to bottom out to the base of your shaft. Vent's belly is stretching outward slightly, highlighting the size difference between the two of you.[else if cock length of player < 30]As you push deeper into his hole, you begin to notice Vent's stomach bulging. You stop for a moment, but the fox simply looks back on you, begging you with his eyes to keep going. You concede, and push more of your length into the fox, stretching him rather significantly before you manage to press all of your shaft into him.[else if cock length of player > 30]As you push more of your length into the vulpine's hole, you notice his stomach bulging outwards. Concerned for his safety, you stop and look at him. He looks back at you, a hungry look in his eyes and whines, begging you to push the rest into him. Obliging, you begin moving again, and soon enough, your hips are brushing against him, his stomach forming to the shape of your [cock of player] cock, showing just how elastic he actually is.[end if]";
		say "     With your shaft fully inside him[if cockname of player is listed in infections of Knotlist], excluding the knot[end if], you begin to draw back, his latex hole squeezing and rippling around you shaft in the most amazing of ways. Eventually, only your tip remains inside him, and you pause for just a second before pressing back into him, faster this time. On your next withdrawal, Vent let's out a pleasured growl. He's clearly enjoying this, and you've barely started. You begin to build a rhythm, and you notice Vent's own throbbing cock, fully out of it's sheath and dripping pre.";
		WaitLineBreak;
		say "     [bold type]Do you lend him a helping hand?[roman type]";
		line break;
		say "     [link]Y[as]y[end link] - Jack the fox off as you take him.";
		say "     [link]N[as]n[end link] - Leave his cock unattended.";
		if player consents:
			say "     As you continue to thrust lightly into him, you reach around his body, cupping your hand just under the tip of his shaft. After a decent amount of his pre drips onto your hand, you grasp his tool and begin stroking it in sync with your own thrusts, the fluid acting as an effective lubricant. As your speed picks up, so do your strokes, bringing the fox closer and closer to the edge. Just before he reaches his peak, you slide your hand down to the knot and you squeeze it hard. Vent lets out an excited yip and his cock begins to throb as he releases his cum, his knot swelling [if scalevalue of player < 3] large enough to eclipse your hand completely.[else if scalevalue of player > 2] until it fills the palm of your hand nicely.[end if]";
		else:
			say "     You decide against helping the fox, but he actually doesn't seem bothered by that. As your thrusting picks up in speed, he begins to buck backwards into your [if cockname of player is listed in infections of Knotlist]knot[else]hips[end if], his own cock slapping into his belly with each motion. His tunnel is rippling around your [cock size desc of player] cock, rubbing and squeezing it, the smooth latex feeling better than any hole you've taken prior. You increase your pace even more, and Vent let's out an excited yip as he spills his seed onto the ground, a small pool of rubbery, white fluid forming beneath him.";
		WaitLineBreak;
		if cockname of player is listed in infections of Knotlist:
			say "     As he climaxes, his walls pulse around your [cock size desc of player] [cock of player] cock, nearly making you cum. You manage to hold back, however, and continue to rail into him over and over again with increasing force and ferocity, fully intent on burying your knot inside his tight, latex hole. You feel your ball of flesh beginning to expand, your climax close, and you rut into him with shorter, faster stroke. [if cock length of player < 10]With one final thrust, you push all the way in, your knot swelling and locking the two of you together as you cum.[else if cock length of player < 20]You push hard against his entrance, your [cock size desc of player] penis stretching him even further than before until your knot slides in with a wet squelch. The lump of flesh swells even larger, locking the two of you together as you release your cum inside him.[else]You batter his entrance with your [cock size desc of player] knot, each thrust spreading his ring open just a little more until your knot slips in with a loud squelch. It quickly swells up, locking you together and making his hips stretch apart to accommodate the massive intrusion. With your knot firmly in his hole, you begin to climax.[end if]";
		else:
			say "     As he climaxes, his passage clenches and ripples around your shaft, sending intense waves of pleasure through you. The pulsing latex sheath around your cock almost make you reach orgasm, but you fight that urge, determined to last just a little longer. You pound into his tight hole with increasing fervor, your balls slapping against his with every thrust. Vent let's out a pleasured whine and continues to meet your thrusts, an action that brings you closer and closer to the edge. You thrust all the way in one last time before you orgasm, spilling your cum into his insides.";
		say "     Rope after rope of cum fills his bowels, and he climaxes again from the feeling of being filled. Eventually, your orgasm abates[if cockname of player is listed in infections of Knotlist] and your knot shrinks[end if]. You pull out of your foxy friend, giving him a friendly pat before redressing and moving on.";
	else if VentSubSize is 2:
		if cockname of player is listed in infections of Knotlist:
			say "     You make your suggestion to Vent, and he yips happily before turning around and raising his tail for you. You quickly strip, stroking your own cock[if cocks of player > 1]s[end if] to harden it, before you line up with Vent's tailhole. Sparing one last glance to make sure no-one is around, you slowly begin to push your [cock size desc of player] penis into his tight hole. [if cock length of player < 10]After a bit of pushing, you manage to bottom out to your growing knot, the fox taking your length without any issue, his stomach bulging outward slightly.[else if cock length of player < 20]After a fair amount of pushing, you manage to bottom out to your growing knot. Vent's belly is stretching outward distinctly, highlighting the size difference between the two of you.[else if cock length of player < 30]As you push deeper into his hole, you begin to notice Vent's stomach bulging. You stop for a moment, but the fox simply looks back on you, begging you with his eyes to keep going. You concede, and push more of your length into the fox, stretching him rather significantly before you manage to press your growing knot against his hole.[else if cock length of player > 30]As you push more of your length into the vulpine's hole, you notice his stomach bulging outwards. Concerned for his safety, you stop and look at him. He looks back at you, a hungry look in his eyes and whines, begging you to push the rest into him. Obliging, you begin moving again, and soon enough, your knot is brushing against his entrance, his stomach forming to the shape of your [cock of player] cock, showing just how elastic he actually is.[end if]";
		else:
			say "     You make your suggestion to Vent, and he yips happily before turning around and raising his tail for you. You quickly strip, stroking your own cock[if cocks of player > 1]s[end if] to harden it, before you line up with Vent's tailhole. Sparing one last glance to make sure no-one is around, you slowly begin to push your [cock size desc of player] penis into his tight hole. [if cock length of player < 10]After a bit of pushing, you manage to bottom out, brushing your hips against him, the fox taking your length without any problem, his stomach stretching out slightly.[else if cock length of player < 20]After a fair amount of pushing, you manage to bottom out to the base of your shaft. Vent's belly is stretching outward rather noticiably, highlighting the size difference between the two of you.[else if cock length of player < 30]As you push deeper into his hole, you begin to notice Vent's stomach bulging rather significantly. You stop for a moment, but the fox simply looks back on you, begging you with his eyes to keep going. You concede, and push more of your length into the fox, stretching him rather significantly before you manage to press all of your shaft into him.[else if cock length of player > 30]As you push more of your length into the vulpine's hole, you notice his stomach bulging outwards. Concerned for his safety, you stop and look at him. He looks back at you, a hungry look in his eyes and whines, begging you to push the rest into him. Obliging, you begin moving again, and soon enough, your hips are brushing against him, his stomach forming to the shape of your [cock of player] cock, showing just how elastic he actually is.[end if]";
		say "     With your shaft fully inside him[if cockname of player is listed in infections of Knotlist], excluding the knot[end if], you begin to draw back, his latex hole squeezing and rippling around you shaft in the most amazing of ways. Eventually, only your tip remains inside him, and you pause for just a second before pressing back into him, faster this time. On your next withdrawal, Vent let's out a pleasured growl. He's clearly enjoying this, and you've barely started. You begin to build a rhythm, and you notice Vent's own throbbing cock, fully out of it's sheath and dripping pre.";
		WaitLineBreak;
		say "     [bold type]Do you lend him a helping hand?[roman type]";
		line break;
		say "     [link]Y[as]y[end link] - Jack the fox off as you take him.";
		say "     [link]N[as]n[end link] - Leave his cock unattended.";
		if player consents:
			say "     As you continue to thrust lightly into him, you reach around his body, cupping your hand just under the tip of his shaft. After a decent amount of his pre drips onto your hand, you grasp his tool and begin stroking it in sync with your own thrusts, the fluid acting as an effective lubricant. As your speed picks up, so do your strokes, bringing the fox closer and closer to the edge. Just before he reaches his peak, you slide your hand down to the knot and you squeeze it hard. Vent lets out an excited yip and his cock begins to throb as he releases his cum, his knot swelling [if scalevalue of player < 3] large enough to eclipse your hand completely.[else if scalevalue of player > 2] until it fills the palm of your hand nicely.[end if]";
		else:
			say "     You decide against helping the fox, but he actually doesn't seem bothered by that. As your thrusting picks up in speed, he begins to buck backwards into your [if cockname of player is listed in infections of Knotlist]knot[else]hips[end if], his own cock slapping into his belly with each motion. His tunnel is rippling around your [cock size desc of player] cock, rubbing and squeezing it, the smooth latex feeling better than any hole you've taken prior. You increase your pace even more, and Vent let's out an excited yip as he spills his seed onto the ground, a small pool of rubbery, white fluid forming beneath him.";
		WaitLineBreak;
		if cockname of player is listed in infections of Knotlist:
			say "     As he climaxes, his walls pulse around your [cock size desc of player] [cock of player] cock, nearly making you cum. You manage to hold back, however, and continue to rail into him over and over again with increasing force and ferocity, fully intent on burying your knot inside his tight, latex hole. You feel your ball of flesh beginning to expand, your climax close, and you rut into him with shorter, faster stroke. [if cock length of player < 10]With one final thrust, you push all the way in, your knot swelling and locking the two of you together as you cum.[else if cock length of player < 20]You push hard against his entrance, your [cock size desc of player] penis stretching him even further than before until your knot slides in with a wet squelch. The lump of flesh swells even larger, locking the two of you together as you release your cum inside him.[else]You batter his entrance with your [cock size desc of player] knot, each thrust spreading his ring open just a little more until your knot slips in with a loud squelch. It quickly swells up, locking you together and making his hips stretch apart to accommodate the massive intrusion. With your knot firmly in his hole, you begin to climax.[end if]";
		else:
			say "     As he climaxes, his passage clenches and ripples around your shaft, sending intense waves of pleasure through you. The pulsing latex sheath around your cock almost make you reach orgasm, but you fight that urge, determined to last just a little longer. You pound into his tight hole with increasing fervor, your balls slapping against his with every thrust. Vent let's out a pleasured whine and continues to meet your thrusts, an action that brings you closer and closer to the edge. You thrust all the way in one last time before you orgasm, spilling your cum into his insides.";
		say "     Rope after rope of cum fills his bowels, and he climaxes again from the feeling of being filled. Eventually, your orgasm abates[if cockname of player is listed in infections of Knotlist] and your knot shrinks[end if]. You pull out of your foxy friend, giving him a friendly pat before redressing and moving on.";

to say VentFoxRimsPlayerNormal:[Player gets rimmed by the fox.]
	say "     Placeholder.";

to say VentFoxRimsPlayerExtend:[Player gets rimmed by the fox w/ extended tongue]
	say "     Placeholder.";

to say VentFoxTongueFucksPlayer:[Player gets fucked by fox's cock-tongue]
	say "     Placeholder.";

to say VentFoxFucksPlayer:[Player gets fucked by the fox.]
	say "     Placeholder."

to say SuckVentFoxCock:[Player gives Vent a blowjob.]
	say "     Placeholder.";

to say VentFoxSuckCock:[Vent gives player a blowjob.]
	say "     Placeholder."

Section 4 - Dev Tools

LearnAboutVent is an action applying to nothing.
Understand "learnvent" as LearnAboutVent.

Carry out LearnAboutVent:
	say "     Done.";
	now VentFoxEncounterCount is 3;
	now VentFoxRelationship is 3;

MaxOutVentStats is an action applying to nothing.
Understand "maxvent" as MaxOutVentStats.

Carry out MaxOutVentStats:
	say "    Done.";
	now VentFoxEncounterCount is 3;
	now VentFoxContentLevel is 3;
	now VentFoxRelationship is 3;

ShowVentStats is an action applying to nothing.
Understand "ventstats" as ShowVentStats.

Carry out ShowVentStats:
	say "VentFoxEncounterCount: [VentFoxEncounterCount].";
	say "VentFoxRelationship: [VentFoxRelationship].";
	say "VentFoxContentLevel: [VentFoxContentLevel].";
	say "VentFoxLastFed: [VentFoxLastFed].";
	say "VentDomSize: [VentDomSize].";
	say "VentSubSize: [VentSubSize].";
	say "VentFluidAmount: [VentFluidAmount].";
	say "VentWSAmount: [VentWSAmount].";
	say "VentOviAmount: [VentOviAmount].";

Vent Fox ends here.
