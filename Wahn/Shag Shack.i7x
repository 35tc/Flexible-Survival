Version 1 of Shag Shack by Wahn begins here.

"Adds a brothel to the mall area of Flexible Survival."

WhoringExperience is a number that varies. WhoringExperience is usually 0.
BryceFucked is a number that varies.

Section 1 - Jerome

Jerome is a man.
The description of Jerome is "[JeromeDesc]".
The conversation of Jerome is { "Pay up!" }.
Jerome is in Shag Shack Entrance.

the scent of Jerome is "Jerome smells mainly of cheap aftershave, with a hint of fish underneath. He is a shark after all.".

To say JeromeDesc:
	if debugactive is 1:
		say "DEBUG -> hp of Jerome: [hp of Jerome], libido of Jerome: [libido of Jerome] <- DEBUG[line break]";
	say "     Jerome is an anthro shark dressed in a snazzy business suit and with a Rolex watch on his wrist. As you look at him, the guy accepts various items from horny customers walking up to him with lustful intent - mostly clearly visible due to leading the way with hard cocks. After passing on the articles of food, drink and other valuables to a flunky, the shark nods to his wolverine guards and the eager John is allowed to go in and have his pick of the local 'talent'. Meanwhile, Jerome becomes aware of your attention and gives you a broad smile - filled with dozens and dozens of overlapping razor-sharp teeth - seemingly daring you to step up.";

Instead of conversing the Jerome:
	if hp of Jerome is 0:
		say "     'Hey there friend,' the grinning shark tells you in a very chummy and direct way. 'Come in, come in - only the best sluts for you to get your rocks off with. You can pay in food, clean water or a bottle of orc cum. Or if you want to get the special offer lifetime membership - bring us a new hot piece of ass and you can go in anytime you want! Its a bargain, believe me!'";
		increase hp of Jerome by 1; [got his initial spiel]
	else:
		say "[JeromeTalkMenu]";

to say JeromeTalkMenu:
	Line Break;
	say "What do you want to talk with Jerome about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Try to get to know him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about the price for entry again";
	now sortorder entry is 2;
	now description entry is "Ask the shark what he wants";
	[]
	if carried of water bottle > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Pay for entry with a bottle of clean water";
		now sortorder entry is 3;
		now description entry is "Hand a bottle of clean water to Jerome";
	[]
	if carried of food > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Pay for entry with some food";
		now sortorder entry is 4;
		now description entry is "Hand food to Jerome";
	[]
	if carried of orc cum > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Pay for entry with a bottle of orc cum";
		now sortorder entry is 5;
		now description entry is "Hand your bottle of orc cum to Jerome";
	[]
	if carried of orc cum > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Inquire about getting a lifetime membership";
		now sortorder entry is 6;
		now description entry is "Do you want to chat to Jerome about finding him a new whore";
	[]
	if hp of Jerome is 10: [lifetime member]
		choose a blank row in table of fucking options;
		now title entry is "Stroll in and have your pick of the 'talent'";
		now sortorder entry is 7;
		now description entry is "Get frisky with one of Jerome's 'entertainers'";
	[]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about whoring yourself out";
		now sortorder entry is 8;
		now description entry is "Whore yourself in the Shag Shack and get paid";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[JeromeTalk1]";
				if (nam is "Ask him about the price for entry again"):
					say "[JeromeTalk2]";
				if (nam is "Pay for entry with a bottle of clean water"):
					say "[JeromeTalk3]";
				if (nam is "Pay for entry with some food"):
					say "[JeromeTalk3]";
				if (nam is "Pay for entry with a bottle of orc cum"):
					say "[JeromeTalk4]";
				if (nam is "Inquire about getting a lifetime membership"):
					say "[JeromeTalk5]";
				if (nam is "Stroll in and have your pick of the 'talent'"):
					say "[JeromeTalk6]";
				if (nam is "Ask about whoring yourself out"):
					say "[JeromeTalk7]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro shark, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say JeromeTalk1: [chat]
	say "     As you try to enter a conversation with Jerome, the shark soon waves you off as he realizes you're not out to buy negotiable affections from his talent. Seems he's mainly interested in his own profit at the moment.";

to say JeromeTalk2: [prices]
	say "     The shark steps up close and gives you a very chummy smile as he says, 'You can pay in food, clean water or a bottle of orc cum. Or if you want to get the special offer lifetime membership - bring us a new hot piece of ass and you can go in anytime you want! Its a bargain, believe me!'";

to say JeromeTalk3: [pay with food/water]
	say "     Smiling sharply, the shark accepts your payment and drops it into a sturdy box next to his feet - which is already overflowing with other supplies. 'Thank you - Have your pick from among the sluts back there and enjoy your stay,' he says, then nods to one of the wolverines to let you through. Afterwards, he calls out, Kaden!' A slender tomcat dressed in black pants hurries over, his chest bare except for a shirt collar with black bow-tie and white cuffs. Someone must have raided a stripper gear store to get him that uniform. 'Drag that to the storeroom and get me a new box,' Jerome says in a commanding tone, getting a reply of, 'Sure boss!'";
	say "[ShagShackSexMenu]";

to say JeromeTalk4: [pay with orc cum]
	say "     Smiling sharply, the shark accepts your payment and calls out, 'Kaden!' A slender tomcat dressed in black pants, a shirt collar with black bow-tie and white cuffs hurries over. Someone must have raided a stripper gear store to get him that uniform. Kaden accepts the bottle and listens to Jerome's instructions of, 'Microwave this and then give all the girls and boy-sluts a dose.' After that, the cat-boy hurries away, clutching the bottle like something precious. Meanwhile, Jerome returns his affection to you and says, 'Thank you. Have your pick from among the sluts back there and enjoy your stay.' With that, he nods to one of the wolverines to let you through.";
	say "[ShagShackSexMenu]";

to say JeromeTalk5: [become a lifetime member]
	say "     <WIP>Sorry, this option isn't available yet. Please check back at another time<WIP>";

to say JeromeTalk6: [lifetime member]
	say "     Confidently walking up to the wolverines guarding the entrance, you tell them you're a lifetime member. The anthro mustelid glances up and down over you suspiciously, then asks, 'Boss?' After Jerome gives him a confirming nod, you're let through to take your pick of the available partners.";
	say "[ShagShackSexMenu]";

to say JeromeTalk7: [player being a whore]
	Say "     'Oho,' the shark says with a smile, showing several rows of serrated teeth. 'We got a volunteer with us today,' Jerome shouts out loud a second later, waving his flunky Kaden over to take you to the 'bargain bin'. 'As a newbie, you won't be paid out as much as my star performers, just so you know. But if you're willing to be used for a while, it'll still be worth the effort, trust me.' The shark tries to smile softly at you but even so, his sharp teeth show a little, creating an air of menace. Then suddenly, you don't see anything at all anymore, as Kaden ties a blindfold around your head from behind you. 'Get her ready for the customers,' you hear Jerome say to his employee, and as the cat-boy guides you away from the shark, he whispers in your ear, 'Don't be angry at me, it's just how he does business.'  You can almost see in your head the malicious smile of the brothel owner as you are led to your fuck-pad for the next while";
	Say "     You feel hands undressing you of your gear and clothes, leaving your body stark naked - and not knowing anything about what is going on around you due to the blindfold. Then suddenly, a warm washcloth brushes over your body, cleaning your [bodytype of player] legs and back first, then moving on to your chest. Rubbing you with the wet cloth and giving your body a few gropes, the person washing you (Kaden? Or someone else?) soon moves on to your crotch, giving it a good and wet going-over. By the time he (or she?) is finished, you feel a little cold as the air touches your damp skin. Then someone else - clearly not the person who caressed you so gently earlier - pulls you arms behind your back and binds them together. You start to complain, but are quickly gagged by experienced hands. Looks like Jerome's customers are only interested in your pussy, from these preparations. After your 'bath' you are lifted up and put in a pretty tightly fitting box with your raised legs strapped in beside your body - letting only your hips on view for the customers.";
	WaitLineBreak;
	Say "     [if WhoringExperience is 0]'Hey guys!' You hear a loud guy with a throaty voice shout in the room, 'There is new meat in the bargain bin.' [otherwise]'The whore came back for more,' the loud guy says and several others laugh as they gravitate towards you. 'Don't worry baby, we also missed you and we are going to show how much,' the first dude goes on to say, putting his hand on your buttocks. [end if] You hear the steps of multiple persons coming closer to you, even if you can't see anything. Your others senses seem sharper now, and your body reacts to the handicap by putting you in a heightened awareness state of fight-or-flight. Not that you actually can do either, with your body bound in place. The expectation of what is to come makes you sweat, wondering if you did the right thing in taking this deal. Well... too late to change your mind now. You will have to endure everything fate has in store for you.";
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "     You feel a warm and relatively flat object touch your [bodytype of player] pussy, leaving a trace of wetness behind. That must be an equine cock from what you can tell, with the typical blunt dickhead. Your body shivers as you become a little afraid of how big he might be - although maybe it isn't exactly fear but rather anticipation. Thankfully, your first client is a nice one, at least it seems so as he gently teases your vagina, making sure that you are lubed enough to take the huge member prodding your nether lips. The friendly horse rubs up against you, touching and caressing in every way he can without truly penetrating you. Your pussy-lips are hot-dogged sending jolts of pleasure every time your clit is pushed around, making you moan and drool around your gag.";
			WaitLineBreak;
			say "     When he finally starts to push into you, your equine customer proves to be quite gentle - almost to the point of being a lover, fucking you in an relatively tender way. His long dick stimulates every nook and cranny of your cunny, his flared tip kissing the entrance of your womb and making jolts of pleasure travel up your spine. You feel every vein he has on his cock, pulsing with every heartbeat. Blindfolded as you are, you do your best to imagine the expression of this man, painting him as a handsome [one of]Palomino[or]Mustang[or]Andalusian[or]Thoroughbred[or]Percheron[at random] in your mind. Only at the end does the guy get a little bit rough, as he grunts deeply when he feels his climax coming and shoves his dick fully inside you, penetrating your cervix to rest his long shaft all the way in your womb. And an eye-blink later, it erupts with his fertile seed, painting your womb in white splashes. The force of his thrust slams you against the back wall of the box, leaving you lost between knowing if you should feel pain or pleasure.";
		-- 2:
			say "     You feel the warm, pointy tip of a cock rub against your [bodytype of player] pussy, leaving a trace of wetness behind. This must be a feline cock, judging from the soft nubs you feel around the rim of his dickhead. You don't have any time to wonder about the guy who is about to fuck you, as he just goes right ahead and pushes his whole shaft inside your pussy - without a moment's care for your own enjoyment. No, he just thrusts into you hard, bottoming out in a single thrust and giving a satisfied grunt as he does so. Then the guy starts to withdraw, the little spines on his cock rubbing against the insides of your pussy. With no real preparation, you're dry around his shaft at first, creating a less than pleasant sensation - but your pained groans are silenced by the gag in your mouth.";
			WaitLineBreak;
			say "     The egotistical cat pounds away at you mercilessly, only intent on his own pleasure. For him, you are just a slut, here to satisfy his needs. His spined shaft pull on the walls of your vagina as he withdraws it, then rubs them again every time he slams back into you. The size of this guy isn't the problem, but the way he uses his dick is making tears roll down your face and mix with the drool from your gagged screams of pain. Then finally, with a deep push into your depth, his cock throbs inside your pussy, pushing the nubs on its length against your inner walls each time. The spoiled cat grunts deeply as he taints your swollen vagina with his seed making your mind almost break with all this pain and the pleasure you simply can't help feeling despite it all.";
	say "     When you first customer is finished with you, you don't even have time to rest as another one takes his place instantly, eager for sloppy seconds. And that is the way you are used for... you don't know how long - human cocks, knotted dicks, latex penises, even an enlarged clit is used to fuck you at some point, and you lose count of how many beings got off in, and on, your body. Your vagina is squelching with cum, your womb stretched like a balloon from the churning mixture of baby batter inside. Eventually, you are pulled out of the fuck-box and as they take you away to be cleaned up, you're pretty sure you leave a wet trail of cum on the way. Some guy who works for Jerome cleans you up with a fresh washcloth, but not before taking a go himself and adding his own cum to your sloppy pussy. Seems like that's one of the 'perks' of his job here.";
	WaitLineBreak;
	if WhoringExperience is 0: [first time]
		say "     'Well, Well, Well,' you hear the voice of Jerome coming from the side after you've been wiped down, and someone's hands pull the blindfold from around your eyes. 'Had fun on your first day at work?' your 'boss' asks and smiles with a mouth that has far too many sharp teeth - he obviously knows how hard you were used in your stint as one of his whores. 'You are always welcome back to work in here some more. In fact... some of the old customers had some good things to say about the new girl.' The carnivore leers at you and gives a satisfied nod, 'Ask Kaden for your cut on the way out. If you want more, come back and stay for another few rounds. If you get really popular, there will be more in it for you too.' With a wink, he strides away, eager to collect payment from new Johns coming in all the time.";
		say "[ShagShackWhoringPayment]";
	else if WhoringExperience > 0 and WhoringExperience < 3: [repeat whore]
		say "     'Guess someone can't get enough of this place, or should I say that you took a taste to be used like that?' The shark laughs at you while pulling the blindfold from your head and the first thing you see is his teeth-filled mouth drawn into a broad smile. 'Keep that up and I might hire you for good.' You try to glare back at him but your face probably looks more like an exhausted whore than an angry adventurer. 'You are welcome back whenever you want some work, if you open your legs we always pay.' He gives you a nod and a wink, then adds, 'Kaden has your cut as normal. Still - you are quite popular so why not just stay here for good and work for me? We got it all here - security, all the sex you can handle, and there are some other perks too, you know...' With that said, the shark leaves you to ponder his offer, and goes back to greeting new customers at the entrance.";
		say "[ShagShackWhoringPayment]";
	else: [expert whore, 4+ fucks]
		say "     'HAHAHA,' you hear the bellowed laugh of Jerome, coming steadily closer. 'Good job. You're becoming one of my favorites whores!' The shark laughs at you while pulling the blindfold from your head making you see his winning smile. 'Keep that work and I might hire you for real.' You are used to the way he treats you by now, but sometimes it still is a bit hard to take. 'You are always welcome back, and you know it. OH! Some of my patrons are asking you by name... Well, asking for you by pussy, but still might be worth your while.' Finally he gives you a nod. 'Kaden has your cut as normal. Still - you are quite popular so why not just stay here for good and work for me? We got it all here - security, all the sex you can handle, and there are some other perks too, you know...' With that said, the shark leaves you to ponder his offer, and goes back to greeting new customers at the entrance.";
		say "[ShagShackWhoringPayment]";
	increase WhoringExperience by 1;

to say ShagShackWhoringPayment:
	say "     After picking up your gear and clothes and getting dressed, you search out Kaden, Jerome's cat-boy flunky. The slender young man stands at a table in the back, sorting out a boxful of items that visitors traded in for services. As you step up and demand to get paid, he pulls a little black book out of his pocket, paging through it and looking up at you, then down at one page specifically. 'Ah, there you are. You did a fair bit of duty with several guys, so I'm allowed to give you a payout. Please don't ask for more - Jerome would skin me if I gave away too much of his profit...' After digging around in the box for a seconds, the cat-boy hands you ";
	if WhoringExperience < 3: [regular rewards]
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "[one of]two cans of beans[or]a plastic baggie with two hunks of mystery-meat jerky[or]a pair of fresh melons[or]two baseball-sized cherries[or]a weighty Christmas fruit-cake[or]two packets of breakfast cereal[at random].";
				increase carried of food by 2;
				say "You gain 2 food!";
			-- 2:
				say "a soda bottle and a slightly stale packet of crackers.";
				increase carried of soda by 1;
				increase carried of food by 1;
				say "You gain food and soda!";
			-- 3:
				say "[one of]two bottles of clean water. Carbonated, of a name brand even[or]two bottles of lukewarm water - at least they've got an intact safety seal[or]two bottles of asparagus water. The wilted green plant-piece swimming inside looks not particularly appetizing, but the water itself should still be drinkable[or]two bottles of clean water. It isn't carbonated, of a store brand[at random].";
				increase carried of water bottle by 2;
				say "You gain 2 water bottle!";
			-- 4:
				say "[one of]a bag of chips[or]a bag of spicy chips[or]a bag of cheese and onion chips[or]a bag of chips flavored like a popular candy snack. WTF? Some combinations just shouldn't exist[at random].";
				increase carried of chips by 1;
				say "You gain chips!";
	else: [better rewards for repeat whoring]
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "     [one of]two bottles of clean water that actually look in good shape, and two cans of peaches[or]two cans of canned meat that appear to be in an ok state and two water bottles that look clear enough to reflect light without problem[at random].";
				increase carried of water bottle by 2;
				increase carried of food by 2;
				say "You gain 2 food and 2 water bottles!";
			-- 2:
				say "     an assortment of rations that might help you for days.";
				increase carried of food by 4;
				say "You gain 4 food!";
			-- 3:
				say "     a small white box with medical supplies, it looks a little bit aged but from a small inspection the contents are still intact.";
				increase carried of medkit by 1;
				say "You gain 1 medkit!";
			-- 4:
				say "     a small container with some pills, from what you know this will raise the libido of anyone who takes it.";
				increase carried of libido pill by 1;
				say "You gain 1 libido pill!";

the fuckscene of Jerome is "     As you make an amorous offer to the shark, Jerome laughs and shakes his head. 'Much as I'd love to, I'm busy with business. Can I interest you in having a go with my 'talent' in there instead?'".

to say ShagShackSexMenu:
	say "     Which member of Jerome's 'entertainment staff' do you want to pick and have some fun with?";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Eliza - a pretty black woman";
		now sortorder entry is 1;
		now description entry is "Step up to her after the last customer pulls out and have a go with the whore";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Kaden - Jerome's cat-boy flunky";
		now sortorder entry is 2;
		now description entry is "Just grab the slender tomcat as he hurries past and bend him over for a fuck";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride Simba - a transformed male soldier tied spread-eagle to a bed";
	now sortorder entry is 3;
	now description entry is "Climb on the hunky man and give him a good humping";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Be pounded by Zane - an incubus stud";
	now sortorder entry is 4;
	now description entry is "Get a demon dick inside you";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha - Jerome's hog-tied mink cum-dumpster";
		now sortorder entry is 5;
		now description entry is "She's on a bench down the end of the row of beds. Choose any hole!";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Submit to Shirley - a sexy bombshell of an ape";
	now sortorder entry is 6;
	now description entry is "Serve her for a nice time";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Be bred by Ty - a slender human teenager";
	now sortorder entry is 7;
	now description entry is "Go human for your cum";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Have a go fucking Penny - a rottweiler bitch into pet play";
		now sortorder entry is 7;
		now description entry is "Play with the sexy puppy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Bryce the wolftaur a blowjob";
	now sortorder entry is 7;
	now description entry is "Time to blow off a furry hunk";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Feral Fox";
		now sortorder entry is 7;
		now description entry is "Have some fun with a male Latex Fox gone feral.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Fuck Eliza - a pretty black woman":
						say "[ShagShackSex1]";
					-- "Fuck Kaden - Jerome's cat-boy flunky":
						say "[ShagShackSex2]";
					-- "Ride Simba - a transformed male soldier tied spread-eagle to a bed":
						say "[ShagShackSex3]";
					-- "Be pounded by Zane - an incubus stud":
						say "[ShagShackSex4]";
					-- "Fuck Sasha - Jerome's hog-tied mink cum-dumpster":
						say "[ShagShackSex5]";
					-- "Submit to Shirley - a sexy bombshell of an ape":
						say "[ShagShackSex6]";
					-- "Be bred by Ty - a slender human teenager":
						say "[ShagShackSex7]";
					-- "Have a go fucking Penny - a rottweiler bitch into pet play":
						say "[ShagShackSex8]";
					-- "Give Bryce the wolftaur a blowjob":
						say "[ShagShackSex9]";
					-- "Feral Fox":
						say "[ShagShackSex10]";
				wait for any key;
		else if calcnumber is 100:
			say "Change your mind after all and go out?";
			if the player consents:
				now sextablerun is 1;
				say "     As you pass Jerome on the way out, he gives you a look with one raised eyebrow, then says, 'No refunds.'";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ShagShackSex1: [Eliza]
	say "     As you walk up to the black beauty, Eliza is being savagely pounded by a [one of]muscular horseman[or]slender mall-rat[or]hermaphrodite gryphon[or]beanpole of a male stork[or]somewhat chubby anthro frog[or]horny golden retriever[or]naga taking both her holes at the same time[at random]. He has her on her knees, ass raised high while holding her arms bent behind her back. This presses her face, upper body and breasts down against the stained mattress she is on, giving her partner full control over her body. Soon, the John comes with a lust-filled grunt, grinding his crotch against her as he sends throb after throb of cum deep into her body. As soon as he is done, he pulls out unceremoniously and gives Eliza's shapely ass a satisfied slap, then wanders off with his half-hard dick still dripping cum.";
	if a random chance of 1 in 2 succeeds:
		say "     Stepping forward and freeing your own manhood, your gaze is locked upon her well-bred pussy, you are momentarily interrupted by Jerome's slender tomcat flunky moving up to her and sticking the needle of a red syringe into her arm and slowly pressing the plunger. He is about to move away again when you grab his arm and have a look at what he just injected the woman with. His syringe has writing on its side, reading 'US ARMY - Immunity Booster'. The feline guy is a bit flustered at you becoming physical and says, 'Hey - let me go. This is just to keep her human, alright? Eliza is very popular just the way she is and we don't want her to change.' With that said, he winds himself out of your grip and dashes off.";
	else:
		say "     Stepping forward and freeing your own manhood, your gaze is locked upon her well-bred pussy, you are momentarily interrupted by Jerome's slender tomcat flunky moving up to her and pouring a tiny bottle full of a creamy white substance down her throat, which she eagerly swallows. He is about to move away again when you grab his arm and have a look at what he just gave the woman. His little bottle has a handwritten tag on the side, reading 'Refresher'. The feline guy is a bit flustered at you becoming physical and says, 'Hey - let me go. This is orc cum, just microwaved for a few seconds and diluted. Has some amazing regenerative capabilities, among other things. Eliza is very popular just the way she is and we don't want her to stretch out from all the fucking.' With that said, he winds himself out of your grip and dashes off.";
	WaitLineBreak;
	say "     Stepping up behind the human woman, you put your hands on the very well-rounded buns of her black ass, squeezing those soft cheeks appreciatively. Never having left her ass-up position with both arms behind her back, the ebony-skinned beauty moans into the mattress, lost in the arousal and sensations of a constant string of sex acts she is put through. Thinking back, you don't think you've actually ever seen her not being used by someone for more than five minutes in the time you've been in here. And why wouldn't any guy slide his dick into such a sexy goddess? You're certainly going to do so, lining your cock up with her slightly gaping hole right this very moment!";
	say "     Slick with the cum of who knows how many other men and herms, it is easy to sink your manhood into Eliza's pussy, which is still surprisingly tight for one of the most popular whores in here. Her inner passage is nice and snug around your [cock of player] shaft and the black woman trembles in arousal, giving a loud moan as you penetrate deeply. She has been fucked so much today that someone's creamy load starts to squelch out around your shaft when you're all the way inside her snatch. That's one hot, sloppy hole on Eliza!";
	WaitLineBreak;
	say "     Pulling back out to start fucking the dark-skinned whore for real, you look down at your erection, covered in the frothy white cum that her last suitor freshly churned up. You wrap your hand around its length and feel how slippery it is covered in this very special kind of lube, then thrust right back into Eliza's welcoming depths. Something about her is just made to be taken hard - maybe it's the generous curves of her butt wobbling so nicely each time your hips meet, the woman's very enthusiastic moans or your own ambition to surpass all those that fucked her before. No matter which, you really pound into the ebony-skinned beauty with a rapid rhythm of thrusts.";
	say "     Sheathing yourself in her trembling body, you drive Eliza wild every time you bottom out, her gasps of pleasure steadily rising. Soon, they culminate in an orgasmic shout that is loud even half-muffled by the mattress her face is pressed against - and in that moment, you learn why no one can resist to cum in her amazing pussy! Tight as she felt before, now her inner muscles flex and squeeze your cock even more, as if jerking you off right in her squelching pussy! It feels so great that you even stop moving your hips, instead just grinding hard against the woman's ass in an effort to get more of your cock in there.";
	WaitLineBreak;
	say "     Eliza's special skills push all the right buttons in you - hard - and before much longer, you let out a satisfied grunt that signals your impending orgasm. Then your balls throb and send forth a first blast of sperm to shoot into her depths, followed by another and another to mix with the deposits of your predecessors. Flooding the expert whore with your potent load, you can't help but wonder if Jerome has her on some sort of birth control or if her womb is receptive and stewing with a dozen species worth of sperm. You can't help but fantasize about Eliza with her belly large and swollen with a child inside - or maybe a foal, or some puppies, or who knows what.";
	say "     Cock still buried deep in the freshly bred snatch of your chosen whore, you're pulled out of your post-orgasmic haze by a pat on your arm. Looking back over your shoulder, you see that [one of]a grinning gorilla[or]an impatient cougar[or]a cave-man with long dreadlocks[or]a whirring and clicking mechanical man[or]a semitransparent goo-person[or]a broad-shouldered hawk-man[or]a very well hung minotaur[or]a living statue made from black rock[at random] with his hard cock in hand is waiting to have his turn on her too. With a grunt, you pull out, wiping your length against the still panting woman's buttocks - a nice contrast of white cum on her black skin - then stand up and grab your clothes. While you're getting dressed, Eliza is already being taken by her new John, his cock covered in your own load.";

to say ShagShackSex2: [Kaden]
	say "     Keeping an interested eye on the cat-boy as he comes and goes from the entrance room to do tasks for Jerome, you pass him up as he has just finished putting away a big box of the whorehouse's earnings. As you grab hold of his soft-furred arm to stop him from walking past, Kaden looks at you in surprise and says, 'Hey - let me go. I've got things to do for the boss.' With a grin on your face, you tell him that for the next little while all he should worry about is pleasing you. He starts to reply, 'But I'm not one of t-' then stiffens and lets out a shocked pant as you grab the somewhat loose skin at the back of his neck.";
	say "     Like a real kitty, the cat-boy instantly becomes much more pliable and obedient as you push the right button for his instincts. With a firm grasp on his neck, you walk the slender tomcat over to an unused bed further back in a corner of the room (just in case Jerome or someone else might object to you taking liberties with his regular staff). Standing in front of the yet unstained mattress, you hold the anthro cat close to your chest and wrap an arm around him, hand sliding down to rub his crotch. With some petting and fondling, a bulge quickly starts to grow under the fabric, tenting out his pants quite nicely. You can already tell that this kitty isn't a small one.";
	WaitLineBreak;
	say "     Kaden's pants are pretty tight, so you can't slide your hand under his belt-line, so at some point you have to let go of his neck to open his button and zipper, plus the extra button at the top of the tail-hole at the back. This frees the anthro feline to say, 'I'm not a whore! Jerome trusts me to be his assistant and I just take care of...' By then, you're with the pants, you forcefully shove them down, revealing his bare furry butt and stiff erection. Nice and naughty kitty, going commando like that! '...of everything that needs to be done back here,' your slender captive says and tries to step out between you and the bed. He doesn't get far, hobbled by his own pants and with you closing your arms around him from behind a few seconds later.";
	say "     Moving your face close to one of his pointy ears while your hands stroke his furry chest, you whisper to the cat-boy that you're back here now, a paying customer, and that what needs to be done right now is him - by you. He opens his muzzle to object but before anything comes out you grab his cock and start stroking it, reducing him to just panting loudly. It doesn't take long for a bit of jerking and fondling his balls to show an effect, and before much longer he changes his tune. 'Nnngh - ah fuck it, fine.' With that said, Kaden lets himself fall forward onto the bed, landing on his hands and knees.";
	WaitLineBreak;
	say "     Giving you a glance over his shoulder, the slender tomcat pants out, 'Help me get the pants off then - and check the front right pocket.' He gives a wiggle of his cute little butt and the lower legs that are still sticking out over the edge of the bed. Grinning at the new-found enthusiasm of your sexy kitty, you pull the pants down and off his slender legs. You're about to drop them, then remember what he said and reach into the pocket, finding a number of tiny squeeze-packages of lube. Throwing them on the bed beside him, you start undressing yourself, hastily throwing off your gear and clothes in your eagerness to fuck this kitty.";
	say "     By the time you're naked, he is sitting on the bed with spread legs, a torn lube-package lying on the mattress while he rubs the slippery goop over his tail-star. You watch in eager anticipation as he starts to insert a finger and lubes up his hole for you, then lies back with both hands his legs spread and open. Who could resist that invitation?! Moving onto the bed yourself, you kneel in front of the slender cat-boy and take a hold of your rock-hard erection to guide it against his waiting pucker. With a satisfied grin on your face, you push past the slight resistance of his hole and sink into him.";
	WaitLineBreak;
	say "     Clearly familiar with the mechanics of anal sex, Kaden pushes out against your first thrust and makes it easy to penetrate him fully, letting out a moan as you bottom out and your balls press against his buttocks. As a reward, you wrap your fingers around his own erection, gently squeezing the hard length and teasing the soft little nubs on his spined manhood. From then on, you stroke him in the same rhythm of your thrusts into his tight and gripping asshole, pushing the both of you to higher and higher arousal. Kaden is a very vocal and receptive bottom, gasping and trembling noticeably each time you push the button of his prostate with your thrusting shaft.";
	say "     Pounding the cat-boy's tight little rump makes you think that he's wasted as just being Jerome's assistant, clearly having such excellent qualification to be a world-class boy-toy. But then... he did have a pocket full of lube and was quick to use it on himself - maybe the cheeky little cat is just something of a special treat for those with the will to push past his objections. The expert way he squeezes your cock with his inner muscles is quite telling, now that you think about it. No matter if your assumption is correct or not, Kaden is one sexy fuck - and taking his tight ass drives you ever closer to a breathtaking climax at a rapid pace.";
	WaitLineBreak;
	say "     Reaching the point of no return, you grunt deeply, thrusting hard against the sweet cat-boy's furry buns. With your [cock of player] shaft buried balls-deep, you erupt into him, painting his chute white with your creamy cum. The throb of your cock with every spurt of semen into him pushes lightly against his prostate again and again... and soon is enough to push the anthro feline off the cliff of his sky-high arousal. With a lusty yowl, Kaden bucks against you and grinds his hips up and down, his erection erupting with spurts of cum that arches into the air and splats down on his furry chest. His insides clench around your length as he comes, making the already snug hole even tighter and giving you another little boost of lust even as your cum-shots ebb off.";
	say "     With a grin on your face, you pull out of the panting cat-boy and reach up to stroke him affectionately behind the ears. Then you leave him to catch his breath, grabbing your clothes and quickly getting dressed before you walk out of the open brothel and into the entrance area.";

to say ShagShackSex3: [Simba]
	say "     Walking into what appears to have been the more high-priced corner of the former mattress store, you come upon an actual four-poster bed with an excellent - if now somewhat cum-stained - mattress laid out on it. And on top of that, a glorious hunk of an anthro lion is stretched out, his wrists and ankles held by black leather cuffs that are securely tied to the bed. Camo pattern pants and a jacket lie crumpled on the floor, clear indications that this is a soldier - as are the dog tags hanging around his neck. The man's feline cock is hard as rock, standing upright over the small bush of longer pubes on his golden-furred body. He is panting with an open muzzle, head leaning back and eyes closed.";
	say "     Eager to feel the sexy guy against - and inside - your body, you quickly pull off your gear and clothes, throwing them into a small heap next to the bed (on the far side of course, so anyone wanting to grab something would have to walk past). Then you step up on the pleasantly soft yet at the same time nicely firm mattress. Movement on the bed draws the attention of the guy you want to have sex with and he opens his eyes, then raises his maned head to look at you, gaze wandering over your naked form. 'Another one?!' he says in a somewhat groggy tone of voice, then chuckles to himself and adds, 'Maaan, this is the craziest and sexiest dream I ever had. First the fucking lion thing and now this!'";
	WaitLineBreak;
	say "     You do notice that his gaze is a little unfocused as he switches up glancing down at his own dog tags, then the soft fur covering his body and back at you. He seems almost drunk and is obviously very, very horny - humping his hips into the air while giving your nakedness appreciative growls. Stepping over the guy, you look down on his well-defined physique and then crouch, straddling his flat abs. His fur is soft under your hands as you let them roam over his chest, feeling up his muscles. Then you see the name on his dog tags - Simba King. Wow. Some parents just inflict the craziest word combinations on their kids as wordplay. Oddly fitting that he got specifically this infection out of the situation here.";
	say "     Leaning forward, your hands braced on two rock-hard abs, you plant a kiss on Simba's muzzle and find it eagerly returned. Warm breath washes over your face and neck as he gives an aroused growl and licks you, all the while grinding his crotch and abs against your own. 'Fuuuck yeah,' your sexy lion grunts at feeling your body rub on his. His pecs bulge as he strains against his cuffs, trying to pull free and grab you for a hard pounding - but the bindings hold, leaving this big cat at your mercy. Unable to resist the desires that such power brings with it, you proceed to rub yourself against his humping body, slowly creeping backwards bit by bit until his erect manhood starts to touch your buttocks.";
	WaitLineBreak;
	say "     Gleefully, you slide your buttocks up and down against Simba's erection and revel in feeling the hot pole lengthwise in your butt-crack. You even give him a squeeze or two, flexing your muscles to wedge his prick between your buns and driving the anthro lion wild with lust. But as much as playing with him is - at some point, it just isn't enough anymore and you reach back to take hold of him. Long and hard, it feels very nice between your fingers, as do soft spiky bumps along its length - perfect to stimulate anyone this king of the wilds fucks. Which will include you in a few seconds. He feels almost lubed, what with the pre-cum he has been oozing from his dickhead and you spreading that up and down his cock with your rubbing.";
	if cunts of player > 0:
		say "     Then the big moment comes - you position yourself over him, lining your pussy up with his cock and... Simba hammers himself home with a horny roar. Damn, that was quick! You're too lost in the sensations of having almost a foot of thick lion cock thrust into your vagina to do anything but let out a lewd moan. Seems like this is what you get for teasing a poor tied-up kitty - and it is a hell of a lot of fun! Before you have more than a second or three to get to terms with the sudden penetration, he pulls back again... which scrapes the soft spines on his erection against your inner walls in a truly breathtaking followup.";
		say "     Reduced to helpless moans in arousal, you sink yourself down on the feline soldier's cock to feel him back inside, then squeeze your inner muscles around his manhood. Simba is more than pleased with your reaction and the two of you start to fuck like wild beasts - or at least you are, riding a safely secured horny lion. The moans, grunts and sometimes roars between the two of you draw many a glance from other 'clients' and brothel staff alike. Between the wild gyrations caused by Simba's admirable stamina, you barely have the time to have a clear thought, and before much longer, an orgasm approaches rapidly. Bucking hard against your lion stud's crotch as you come, your whole body trembles around him, pushing him over the edge right with you.";
		WaitLineBreak;
		say "     Thick throbs of cum gush into your insides as Simba finally can't hold back anymore, erupting hard into your pussy. His seed feels nicely warm and filling, heightening your own pleasure at mating with this hunk of a lion. You simply take everything he gives you, still straddling his hips and stretching your upper body out on his soft-furred shape. Tied up as he is, the lion can't wrap his arms around you - or roll the two of you over for a second fuck, who knows what he would do after all. What he can do is purr - loud as an idling motor and feeling very pleasant as it vibrates through your own chest. 'Best dream ever...' you can hear him murmur as he dozes off in exhaustion after a little while.";
	else:
		say "     Then the big moment comes - you position yourself over him, lining your asshole up with his cock and... Simba hammers himself home with a horny roar. Damn, that was quick! You're too lost in the sensations of having almost a foot of thick lion cock thrust into your back door to do anything but let out a lewd moan. Seems like this is what you get for teasing a poor tied-up kitty - and it is a hell of a lot of fun! Before you have more than a second or three to get to terms with the sudden penetration, he pulls back again... which scrapes the soft spines on his erection against your inner walls in a truly breathtaking followup.";
		say "     Reduced to helpless moans in arousal, you sink yourself down on the feline soldier's cock to feel him back inside, then squeeze your inner muscles around his manhood. Simba is more than pleased with your reaction and the two of you start to fuck like wild beasts - or at least you are, riding a safely secured horny lion. The moans, grunts and sometimes roars between the two of you draw many a glance from other 'clients' and brothel staff alike. Between the wild gyrations caused by Simba's admirable stamina, you barely have the time to have a clear thought, and before much longer, an orgasm approaches rapidly. Bucking hard against your lion stud's crotch as you come, your whole body trembles around him, pushing him over the edge right with you.";
		WaitLineBreak;
		say "     Thick throbs of cum gush into your insides as Simba finally can't hold back anymore, erupting hard into your ass. His seed feels nicely warm and filling, heightening your own pleasure at mating with this hunk of a lion. You simply take everything he gives you, still straddling his hips and stretching your upper body out on his soft-furred shape. Tied up as he is, the lion can't wrap his arms around you - or roll the two of you over for a second fuck, who knows what he would do after all. What he can do is purr - loud as an idling motor and feeling very pleasant as it vibrates through your own chest. 'Best dream ever...' you can hear him murmur as he dozes off in exhaustion after a little while.";
	say "     Eventually, you push yourself up from the soft, warm and purring guy and slide yourself off his softening prick. Giving the sated kitty a friendly pat on the side, you then get up from the bed and start to dress. It doesn't take long after that for Kaden, Jerome's cat-boy assistant, to arrive with a little bucket of water in his hand. 'Let's get you ready for your next visitor, big guy,' he tells Simba in a companionable tone. Getting no reply, Kaden then starts to gently wash the soldier, making sure his cum doesn't dry in that silky soft crotch fur and dabbing a big sponge over the muscular frame of the tied-up lion...";

to say ShagShackSex4: [Zane the incubus]
	setmonster "Incubus";
	choose row monster from the table of random critters;
	say "     Walking between the rows of beds and mattresses, you come to one that is unoccupied right now. Though clearly not for long, judging from the still-wet puddle of cum on the ground next to it. The 'owner' of this fuck-pad is casually leaning against the wall right next to it, confidently presenting his naked body to anyone looking his way. It is an incubus, and a handsome one at that - well-toned body, a studly face and red hair, accentuated very nicely by his horns, large red leathery wings and tail. His cock stands erect and ready, with the attractive stud demonstratively stroking up and down along its length. 'Hey there baby,' he calls out to you in an oh so smooth and enticing voice. 'I can see you wanna spend some time with the best fuck in this place. Good pick, Zane will take care of your needs.'";
	say "     With that said, the handsome man pushes himself off the wall with his wings and saunters towards you, his cock swinging side by side as he sways his hips. Next you know, Zane's hand is sliding slowly up your arm in a teasing stroke, then down your side and around as he pulls you into an embrace. An attractive masculine scent fills your nostrils as he pushes his naked form up against yours, his hard cock brushing against your hip. Then the incubus leans his head close and looks deep into your eyes, his mouth pulling into a smile that reveals slightly elongated canines. 'Trust me,' he says in his rich voice and plants a hot kiss on your lips that makes you swoon, 'Just lay back and enjoy.'";
	WaitLineBreak;
	say "     Guided by the otherworldly seducer holding you in his arms, you soon feel your legs bump softly against the edge of the bed, followed by Zane gently pushing you down to sit on it. The demon looks down at you with a wide grin that promises great pleasure - and also holds a clear undertone of predatory hunger... but somehow, you can't seem to care for anything but being with him right now. Leaning over you, he strokes your cheek before moving on to touch your body, peeling your clothes and gear off with an expert's grace and speed. It doesn't take long at all before you are as naked as he is, your stuff forming a small pile next to the bed. 'You're one sexy beast, aren't you,' he says with a smile and runs his fingers over your body - touching, stroking and teasing.";
	say "     You can't help but pant out loud at the stimulation your demonic lover gives you, building up arousal in your body until he lays a hand on your chest and pushes you back to lie on the bed. You stretch out on the sheets and feel their soft fabric against your back - damn, is that silk? Where did Zane get all this? The question is easily forgotten a moment later, when he nudges your legs apart with an eager touch and crouches down before you, bringing his head close to your crotch. With his hands stroking the insides of your thighs, he lifts them effortlessly to put them over his shoulders, then leans in to start licking you.";
	WaitLineBreak;
	if cunts of player > 0: [female and herm]
		say "     A swipe of the demon's tongue brushes over your pussy and draws a pleased sigh from you, followed by another and another as Zane demonstrates his skillful tongue. A shiver of arousal goes through your whole body at a flick of its tip over your sensitive clit, followed by slow circling touches around it and more direct stimulation. His tireless oral service soon has the intended effect of getting you wet and dripping with female juices, your pussy aching to be fucked... and Zane is only too happy to proceed to that. Taking hold of your legs to hold them up and spread wide, the sexy demon rises from his crouch in front of the bed - bringing his perfect shaft of erect maleness into full view. He revels in the attention you give him, your hungry gaze wandering over his toned body and the cock you yearn for now.";
		say "     After a little while of basking in your lusty looks, a glistening drop of pre forms at the tip of Zane's cock, showing that he is ready and eager to take you. And indeed he does - moving his hips to line himself up with your slightly swollen and open nether lips, then sliding right into your body, his prick pleasantly warm against your inner walls. He is a demon after all, and it seems they run hot. Penetrating you deeply in a smooth stroke at just the right speed, he sinks his cock in all the way until his balls brush against your crotch. 'You feel amazing babe,' the sex demon pants out in a lusty tone and gives you a peck on the lips. He rests his throbbing shaft inside your pussy for a few seconds more, then starts to slide in and out.";
		WaitLineBreak;
		say "     Zane fucks you with swift and deep strokes, varying the angle of thrust as he does so to increase your pleasure and hit pleasure-spots you barely knew you had. Writhing under his toned body, your arousal soaring higher and higher from his touching, thrusting, kissing and all-round pleasuring you, you barely manage to form intelligible thoughts. But then... you don't have to think, or worry, or do anything right now except lay on the silken bedsheets and enjoy yourself. Picking such an amazing professional to fuck you was a truly amazing idea! Groaning out loud at another deep thrust, you give yourself fully to the handsome demon, closing your eyes to let him do what he will with you.";
		say "     The next little while is a blissful haze in your memory afterwards, filled with touches and sensations that are so very, very good. The incubus teases you to a point just at the cusp of an intense climax, then holds you there for what feels like an eternity before he finally goes all out. With his full balls smacking against your crotch in a rapid tempo, he fucks you even harder than before, and the demon's hard cock shoots you past the point of no return in a few heartbeats. Letting out a lustful shout, you twitch around his erection, your whole body trembling and shaking in pleasant tingles. Zane starts to unload deep into your pussy just seconds later, either showing that he had extreme self-control to keep himself from cumming up till now, or that the pleasure at seeing you get you off gave him the last push he needed himself.";
		WaitLineBreak;
		say "     Lying on the bed, you enjoy getting bred by the sexy demon, his cock pulsing spurt after spurt of hot cum into your innermost depths. And he doesn't just fuck off afterwards either, instead keeping his only slowly softening shaft inside you. He even gives little thrusts and grinds a bit against you to prolong your own orgasm, propping up the waves of pleasure and making them ebb off that much slower. Eventually, you sink back on the soft bed and even softer sheets, totally spent and filled with total satisfaction. 'Told you you'd like it,' Zane tells you as he leans in to give you a kiss and broad grin. With that said, he gently pulls out of you and stands up. 'Feel free to rest a bit on the bed, good sex is exhausting. I'll be back after getting cleaned up. Got a needy slut in here who just loves giving tongue-baths and slurp up pussy juices from my cock!'";
		say "     After the smiling incubus saunters away, you stay on your back for a while longer, basking in the pleasant feelings still fresh in your body and mind. Only after fully catching your breath and riding out the last tingles of your orgasm do you slowly get out of bed and get dressed. All in all, picking the incubus prostitute was more than worth it![fimpregchance]";
	else: [male and neuter]
		say "     A swipe of the demon's tongue runs up the crack between your buttocks, brushing over your pucker and drawing a pleased sigh from you, followed by another and another as Zane demonstrates his skillful tongue. A shiver of arousal goes through your whole body as he pushes in against the muscle, followed by circling touches around it and more direct stimulation of actually working his tongue inside you. His tireless oral service soon has the intended effect of getting your back door relaxed and slippery for the upcoming fuck... and Zane is only too happy to proceed to that. Taking hold of your legs to hold them up and spread wide, the sexy demon rises from his crouch in front of the bed - bringing his perfect shaft of erect maleness into full view. He revels in the attention you give him, your hungry gaze wandering over his toned body and the cock you yearn for now.";
		say "     After a little while of basking in your lusty looks, a glistening drop of pre forms at the tip of Zane's cock, showing that he is ready and eager to take you. And indeed he does - moving his hips to line himself up with your trembling muscle, then pushing in until your ring yields to his erection and the dick-head pops inside. After that, Zane slides deeper into your body, his prick pleasantly warm against your inner walls. He is a demon after all, and it seems they run hot. Penetrating you in a smooth stroke at just the right speed, he sinks his cock in all the way until his balls brush against your crotch. 'You feel amazing babe,' the sex demon pants out in a lusty tone and gives you a peck on the lips. He rests his throbbing shaft inside your hole for a few seconds more, then starts to slide in and out.";
		WaitLineBreak;
		say "     Zane fucks you with swift and deep strokes, varying the angle of thrust as he does so to increase your pleasure and hit pleasure-spots you barely knew you had. Writhing under his toned body, your arousal soaring higher and higher from his touching, thrusting, kissing and all-round pleasuring you, you barely manage to form intelligible thoughts. But then... you don't have to think, or worry, or do anything right now except lay on the silken bedsheets and enjoy yourself. Picking such an amazing professional to fuck you was a truly amazing idea! Groaning out loud at another deep thrust, you give yourself fully to the handsome demon, closing your eyes to let him do what he will with you.";
		say "     The next little while is a blissful haze in your memory afterwards, filled with touches and sensations that are so very, very good. The incubus teases you to a point just at the cusp of an intense climax, then holds you there for what feels like an eternity before he finally goes all out. With his full balls smacking against your crotch in a rapid tempo, he fucks you even harder than before, and the demon's hard cock shoots you past the point of no return in a few heartbeats. Letting out a lustful shout, you [if cocks of player > 0]let loose with a barrage of cum-spurts from your own hard cock, splattering your chest with your sticky white load[otherwise]twitch around his erection [end if]while your whole body trembles and shakes in pleasant tingles. Zane starts to unload deep into your asshole just seconds later, either showing that he had extreme self-control to keep himself from cumming up till now, or that the pleasure at seeing you get you off gave him the last push he needed himself.";
		WaitLineBreak;
		say "     Lying on the bed, you enjoy getting bred by the sexy demon, his cock pulsing spurt after spurt of hot cum into your innermost depths. And he doesn't just fuck off afterwards either, instead keeping his only slowly softening shaft inside you. He even gives little thrusts and grinds a bit against you to prolong your own orgasm, propping up the waves of pleasure and making them ebb off that much slower. Eventually, you sink back on the soft bed and even softer sheets, totally spent and filled with total satisfaction. 'Told you you'd like it,' Zane tells you as he leans in to give you a kiss and broad grin. With that said, he gently pulls out of you and stands up. 'Feel free to rest a bit on the bed, good sex is exhausting. I'll be back after getting cleaned up. Got a needy slut in here who just loves giving tongue-baths and slurp up the remaining cum from my cock!'";
		say "     After the smiling incubus saunters away, you stay on your back for a while longer, basking in the pleasant feelings still fresh in your body and mind. Only after fully catching your breath and riding out the last tingles of your orgasm do you slowly get out of bed and get dressed. All in all, picking the incubus prostitute was more than worth it![mimpregchance]";

to say ShagShackSex5: [Sasha the cum-dump]
	say "     Moving along the rows of mattresses you come to the end of the line, where you almost walk straight past the diminutive figure on the bench. Trussed up on it like a thanksgiving turkey is a yuppie mink, who has clearly fallen on hard times. The petite socialite is lying on her back on the thin wooden bench, her head hanging off the end with nothing to rest it on. She looks somewhat uncomfortable having her arms bound together at the wrist beneath the bench. Resting near the perky C-cup, exposed breasts, are her knees which have been pulled up and tied together in such a way as to allow easy access to her gaping ass and cunt.";
	say "     It is clear she has zero mobility, but full visibility of anyone who may decide to plow her ass or pussy, both of which have clearly seen a terrific amount of use. Below her exposed ass rests a bucket to catch any cum that pours from the overfilled holes after fucking. She looks up at you as you stop to check out her bared assets, smiling invitingly as she does so. Her makeup is smudged and her once golden blonde hair appears matted and dirty. 'Hey there big boy, come for your turn at Sasha the cum dumpster?' she asks. Grinning, you nod and disrobe. With your cock already standing to attention, you use the pre leaking from its tip to moisten your member and provide for some extra slickness while considering which hole to use.";
	say "[SashaSexMenu]";

to say SashaSexMenu:
	Line Break;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha in her dripping pussy";
		now sortorder entry is 1;
		now description entry is "Enjoy sloppy seconds (well, fifths more likely) with the whore";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha in her gaping asshole";
		now sortorder entry is 2;
		now description entry is "Enjoy sloppy seconds (well, thirds more likely) with the whore";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha in her eager mouth";
		now sortorder entry is 3;
		now description entry is "Feed the tied-up whore another load";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck Sasha in her dripping pussy"):
					say "[SashaSex1]";
				else if (nam is "Fuck Sasha in her gaping asshole"):
					say "[SashaSex2]";
				else if (nam is "Fuck Sasha in her eager mouth"):
					say "[SashaSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the tied-up mink, shaking your head slightly as she gives a disappointed look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SashaSex1: [Pussy Fuck]
	say "     Deciding to take that succulent looking baby-maker, you move to Sasha's dripping cunt and slide your cock up and down the slut's slick velvety folds. The mink moans in pleasure, and you can almost feel the heat radiating from her cunt in anticipation of the fucking to come. Readying yourself, a lust-filled groan passes your lips as the [cock of player] shaft between your legs glides easily into the anthro's gaping pussy. The wet heat of the sweltering cave seems to soak into you as you bottom out. The mink moans with pleasure as her soft, silken pussy envelopes your turgid cock. The sensation of your balls coming to rest against a twitching taint, signals that you have plunged yourself to the root.";
	say "     With your cock buried to the hilt, you grab the mink by the hips and begin fucking the slutty anthro in earnest. Sasha gives gasps of pleasure each time you bottom out in her dripping tunnel. While not the tightest cunt you've ever had the pleasure of fucking, it certainly is experienced. She uses every trick she knows to grip and wring your [cock of player] rod in what is a surprisingly animated cunt! It feels like you're fucking a high tech onahole, and Sasha clearly knows how to get the most out of any cock.";
	WaitLineBreak;
	say "     You groan and pant with lust, fucking the incredible slit harder and deeper as the satin soft pussy writhes around your cock. The mink woman is panting and crying out in pleasure as she manipulates your rod inside her. Thrusting with an inflamed eagerness you rapidly approach orgasm, and with a roar of ecstasy, cum erupts inside the lusty anthro's hungry pussy. Hips thrust flush against Sasha's pelvis, your seed pours into her waiting, clenching cunt. Your balls ache as the whore's heavenly vagina continues to work its magic on your cock, milking you for every drop of cum you posses.";
	say "     Shaking in the aftershock of your orgasm, you collapse on top of Sasha, your head resting comfortably on the moaning slut's pillow-like chest. 'Well lover, was is good for you?' She asks innocently as her soft walls suck one last spurt of semen from your throbbing pecker. Nodding, you slide out of the puffy lips, followed closely by a stream of steaming cum which pours into the bucket below. Thanking Sasha again, you collect your gear and head for the door.";

to say SashaSex2: [Anal Fuck]
	say "     Eager for a bit of anal spelunking, you move to Sasha's winking asshole and press your cock up against it, feeling it give just a little at the pressure. She moans in pleasure, and you can almost feel the heat radiating from the slutty anthro's cunt in anticipation of the anal fucking to come. Readying yourself, a lust-filled groan passes your lips as the [cock of player] shaft between your legs glides easily into Sasha's gaping asshole. The penetration is made easier by the copious amounts of cunt-juice dripping down from her neglected pussy. Both of you shudder with pleasure as the well-used asshole gives way to the pulsing cock claiming its depths. The feeling of your balls coming to rest against warm and furry cheeks, signals that you have sunk yourself to the root.";
	say "     With your cock buried to the hilt, you grab Sasha by her bound hips and begin fucking the horny woman's well-used ass in earnest. She gives gasps of pleasure each time you bottom out in the anthro's deep colon. While not the tightest asshole you've ever had the pleasure of fucking, it certainly is eager. Sasha uses every trick she knows to grip and wring your [cock of player] pole. It feels like you're fucking a high tech onahole, and the mink clearly knows how to get the most out of any cock.";
	WaitLineBreak;
	say "     You groan and pant with lust, fucking the incredible hole harder and deeper as the rectal muscles writhe and spasm around your cock. The lusty anthro is panting and crying out in pleasure as she manipulates your rod inside the engorged walls of her hot anus. Rapidly approaching orgasm, and with a roar of ecstasy, you unload your pulsing balls inside Sasha's clenching cock holster. Hips thrust flush against the soft pelvis, your seed pours into her waiting colon. Your balls ache as the whore's ass continues to work its magic on your cock, milking you for every drop of cum you posses.";
	say "     Shaking in the aftershock of your orgasm, you collapse on top of Sasha, your head resting comfortably on the moaning slut's pillow-like chest. 'Well lover, was is good for you?' She asks innocently as her tight anal walls suck one last spurt of semen from your throbbing pecker. Nodding, you slide out of the warm anal cavern, followed closely by a stream of steaming cum which pours into the bucket below. Thanking Sasha again, you collect your gear and head for the door.";

to say SashaSex3: [Oral Fuck]
	say "     It would be great to feel the anthro suck the cum out of your eager pecker, so you move to Sasha's drooling mouth and press your cock up against her pouty lips. It feels like the right choice when the woman's eager tongue slips out to circle the tip of your pre-leaking head. She moans in pleasure at the taste, and you can feel the heat of Sasha's breath as an eager mouth attempts to pull your rock hard member into it. It is easy to slide your [cock of player] shaft into such a willing cock holster, and Sasha's throat provides no resistance to the steady advance of your tool. You groan with pleasure as she provides the perfect amount of suction to your cock. Your balls come to rest against her nose, signalling that you have pushed as deeply as you're going to get for now.";
	say "     With your cock buried to the hilt, you grab Sasha by her exposed tits and begin fucking the whore's mouth in earnest. She gags each time you bottom out, but it doesn't deter you. The cock-hungry mink is certainly eager and she uses every trick she knows to suck and wring your [cock of player] rod for all she's worth. It feels like your cock is attached to a high powered milker as Sasha slurps and sucks on the tool like it's the only thing that matters in the world, and to the slutty anthro, it probably is.";
	WaitLineBreak;
	say "     You groan and pant with lust, fucking Sasha's incredible mouth harder and deeper as the woman's throat and tongue writhe around your cock. The mink is panting and moaning in pleasure around your throbbing tool. Rapidly approaching orgasm, and with a roar of ecstasy, you unload inside Sasha's welcoming gullet. Hips thrust flush against the smiling face of your hooker, seed pours into her open oesophagus. Your balls ache as she continues to suck and nurse on your cock, milking you for every delicious drop of cum you posses.";
	say "     Shaking, you collapse on top of Sasha with your cock still nestled in her mouth. She gags and coughs up a glut of cum around your cock before you come back to your senses. Sliding out of Sasha's throat, you are impressed that not a drop is spilled. You apologise for forgetting you were still inside her throat, and thank the willing prostitute for everything, before collecting your gear and heading for the door.";

to say ShagShackSex6: [Shirley the ape]
	say "     Walking between the rows of beds and mattresses, you come to the corner of the brothel that doesn't have any whores that let themselves be pounded into the mattress or tied up. No, the 'performers' over here are far more confident - following incoming customers with hungry looks as they lean against the walls or lounge on their beds. Seems like they actually chose to work here, enjoying the nonstop sex and relative security from the chaos outside. A sexy female ape standing nearby draws you in with a lusty grin, followed by a wave of her furry arm to come closer. 'Hey there sexy,' she says in almost a purr and strokes her hand over the faux-hawk of hair on her head. 'You wanna have fun with Shirley, I can tell!'";
	say "     The bombshell of a woman got that right, that's for sure. Moderate in height with lightly muscled arms and legs, she has a pretty face in the almost-human way of an anthro chimp, with a fur-covered body to match. Her bright red tank top is stretched tight over a very generous pair of breasts and you can even make out the bumps of nipple piercings through the thin fabric. Further down, Shirley's flat and toned stomach is in full sight thanks to the belly-free top, showing a gleaming silver belly button piercing. The finishing touch to the outfit is a skimpy pair of black panties - made from a semitransparent material that shows off everything, including the fact that her nether lips are wet and ready in anticipation.";
	WaitLineBreak;
	say "     As you come to stand before her, the chimp reaches out and slides a hand behind your head, pulling you close for a demanding kiss. Her amber eyes gaze deep into yours as the dominant woman pushes her tongue between your lips in a french kiss, then eventually pulls back and smiles broadly at you. 'Yeah, I know what you want,' she purrs enticingly, then slides her fingers under the red top and pushes it up to bare her breasts. They are very nice and full, with stiff nipples that have large brown aureoles. Stud-piercings glisten at both nipples, drawing your gaze instantly. 'Go on. Suck them,' comes the command of the sexy ape as she pulls your head closer and down.";
	say "     More than ready to follow Shirley's instructions, you brush your lips over the warm skin of her breasts, then close them over the bump of a nipple and suck. A pleased sigh comes from the dominant ape and she strokes the back of your neck, telling you to go on. Nothing seems more natural than to suckle on the erect little nub, running the tip of your tongue over its firm flesh and tracing the harder outline of the piercing going through it. Both hands cupping her breasts, fondling and squeezing them, you switch up from one to the other with your sucking, servicing the horny woman and giving her obvious pleasure.";
	WaitLineBreak;
	say "     After a little while of enjoying your efforts, Shirley pushes you a little back from her breasts and smiles at you as she says, 'That's a good [if player is female]girl[otherwise]boy[end if]. On your knees now - you may pull my panties off... with your teeth.' Helped along by a gentle push, you kneel in front of the sexy ape, bringing your face to the same height as her crotch. With your nose just an inch or two from the soaked material of the mesh undies, you can literally smell the heady scent of her arousal, drawing you closer. Brushing up against the wet fabric, you rub your face against it and Shirley's swollen folds underneath, taking deep breaths as you do so.";
	say "     Quite a heady aroma full of pheromones that makes you want more and more. Soon, you do as you were told and catch the rim of her panties between your lips, then teeth, and eagerly pull them down with your head. You do help a little with your hands at the back side, sliding the fabric straps over her firm behind with your hands to allow the underwear to fall to the ground. Looking up at the glorious female, your gaze wanders from her pussy over the flat stomach to those shapely boobs, then stop at her grinning face. 'Well done sweetie,' she purrs, lifting her leg to shake off the panties completely. She pats your shoulder with the hand-like foot on that leg and adds, 'Onto the bed now, you earned it!'";
	WaitLineBreak;
	say "     Seeing Shirley stride over to the bed, pulling her red top off completely in the progress and throwing it aside, you almost stumble in your eagerness to follow. Along the way to the bed, you strip in haste, throwing pieces of clothing and gear on the floor with every step. Naked by the time you arrive at the bed, you are greeted by the sexy simian woman who strokes your body appreciatively. Then she rubs herself up against you, breasts brushing over your chest as she turns the two of you - followed by a surprisingly strong push that sends you falling back on the bed. Landing softly, with your arms spread wide from a try to catch yourself, you're in exactly the right position for her to climb on top, her hands grasping your forearms to pin them to the bed.";
	say "     'I've been waiting for a happy little sub to have fun with,' she says with a grin and leans her head down, licking your cheek. 'You'll see how good it feels to give yourself to me.' With that said, she ";
	if cocks of player > 0: [male and herm]
		say "pulls up one of her legs and closes a hand-like foot around the erect length of your manhood, stroking its length. 'Oh yeah, this'll be fun!' Shirley adds in a gleeful tone, then lowers herself on your cock, sinking her wet and dripping pussy over its firm pole. You moan in unison with her as you feel the nether lips spread around your dickhead, followed by the envelopment of her warm and tight pussy. Then the chimp's inner muscles flex around you, giving your cock a welcoming squeeze as the dominant simian grins down at you. 'Fuuuck! I like feeling that [cock of player] dick of yours!'";
		WaitLineBreak;
		say "     Keeping her hold on you, arms pinned down on the mattress, Shirley starts to ride your dick, grinding her hips against yours and bouncing up and down on the erection. The sensations of her fucking herself on your cock are breathtaking - literally, as you can't help but gasp and moan constantly from feeling her inner walls rub your shaft. Your partner gleefully grins down at you as she gyrates her hips and gives your manhood an extra-tight little squeeze from time to time, intermixed with lusty kisses she plants on your mouth. Such stimulating treatment doesn't stay without consequences and you can feel yourself get closer and closer to orgasm - winding you up so much that you struggle against Shirley's hold at one point.";
		say "     The desire to grab her as you thrust into the wet pussy on this sexy ape is almost overwhelming and you can't help but buck under her, trying to do just that. But no, she retains her firm grip on your arms, keeping them spread-out and pinned... and you can just see it in her face how much she enjoys her power over you. The female ape even slows her gyrations on your dick for a moment, teasing you mercilessly before she relents and gets back to enthusiastically riding your bucking hips. It doesn't take much longer of this before you reach the point of no return and let out a deep grunt as your cock starts to erupt into her, throb after throb of cum filling the simian bombshell of a woman.";
		WaitLineBreak;
		say "     Shirley actually lets go of one of your arms at that point, bringing her hand to her own clit and frigging it frantically as she groans, 'Fuck yeah! I can feel you inside me - filling me up! So goood!' Her obvious pleasure at having your spurting cock inside her together with rubbing her magic button serve very well to push the ape to a screaming orgasm, dominating this corner of the brothel for a moment. More than a few other customers look over towards the two of you, wishing they could be the boy-toy that the sexy woman was riding right now.";
		say "     The tight confines of her pussy suddenly feel even slicker as the ape comes and her femcum starts to flow, covering your shaft and even forming a small trickle that drips down onto your crotch. Grinding against your body without pause, Shirley rides her orgasm out and takes every last bit of pleasure she can from you, smiling happily down at your panting form beneath her. 'You've been a very good boy,' she says in a sexy purr, then leans forward and plants a demanding kiss on your lips, making out with you until the last throbs of cum ebb off inside her. After that, she still keeps straddling you for a little while, relishing in just pinning you to the bed and feeling the power she has over you.";
		WaitLineBreak;
		say "     Eventually, Shirley slides herself off your softening shaft and flops on the bed, lying on her back. 'You may go now,' the ape grunts in a more than content tone and pats your side. Seems like your time with this simian mistress is over and there is no chance for a nonstop fuck-fest to go on right now. Of course, that doesn't mean you can't come back another time and get a fresh dose of the ape's sex appeal and discipline...";
	else: [female and neuter]
		say "moves herself up over your body, bringing her crotch right over your face. 'Lick me,' Shirley says next in a clear command, grinding her pussy against you. Obediently serving the sexy ape, you do stick out your tongue and lap over her sex, then deeper between the wet and dripping nether lips. 'Yesss,' she moans in pleasure, as you work your tongue to service Shirley, switching up between wiggling it in her pussy and suckling on the sensitive clit above. Then you suddenly feel a touch against your own crotch, stroking it. Did someone else climb on the bed with you? No - you realize that it is the ape's hand - she must have switched to holding one of your arms with a hand-like foot at some point and is now leaning back to touch you.";
		say "     The sexy ape repays your eager service by rubbing your sensitive parts, with the amount of stimulation she gives you directly proportional to how good you take care of her. Thus your shared coupling of oral sex and fondling results in a rapid build-up of arousal and lust, until she eventually grinds her crotch against you hard, then shudders in orgasm. Femcum starts to flow, trickling over your tongue to reach your taste buds, then eagerly swallowed by yourself. Grinding against your body without pause, Shirley rides her orgasm out and takes every last bit of pleasure she can from you, smiling happily down at your panting form beneath her. 'You've been a very good pet,' she says in a sexy purr and keeps straddling you for a little while, relishing in just pinning you to the bed and feeling the power she has over you.";
		WaitLineBreak;
		say "     Eventually, Shirley stops straddling your chest and holding your head between her thighs, then and flops on the bed, lying on her back. 'You may go now,' the ape grunts in a more than content tone and pats your side. Seems like your time with this simian mistress is over and there is no chance for a nonstop fuck-fest to go on right now. Of course, that doesn't mean you can't come back another time and get a fresh dose of the ape's sex appeal and discipline...";

to say ShagShackSex7: [Ty the human teen]
	setmonster "human";
	choose row monster from the table of random critters;
	say "     Walking between the rows of beds and mattresses, you come to the corner of the brothel that doesn't have any whores that let themselves be pounded into the mattress or tied up. No, the 'performers' over here are far more confident - following incoming customers with interested looks as they lean against the walls or lounge on their beds. Seems like they actually chose to work here, enjoying the nonstop sex and relative security from the chaos outside. A slender human teen leans against a wall nearby and attracts your attention with the simple fact that he is still fully human, with no sign of any physical change on him at all. Due to everyone else changing wildly these days, his 'regular' appearance makes him exceptional all of itself.";
	say "     Not that the young guy isn't attractive either - tall and quite slender, he is dressed in shorts and a black t-shirt with the logo of some band on it. His fairly handsome face shows boyish charm as he smiles at you from under a somewhat tousled blond page-boy haircut. 'Hey there,' the young man greets you with a wave, then steps up and gives you his hand to shake. 'I'm Ty, nice to meet you. Erm... I hope it's the first time at least - gotta admit that its a bit hard to keep track with everyone else shifting so often,' he tells you, blushing a little bit and raising an arm to scratch the back of his neck. 'Anyways - to answer the usual questions: Yup, I'm a hundred percent pure human. Haven't changed one bit. And I can give you what you want - pretty much every kid I fathered was human. Down to the blue eyes in most cases too. Even those that hatched from eggs and whatnot.'";
	WaitLineBreak;
	say "     Ty brushes a strand of blond hair out of his face and gives you a friendly smile, underlain by a definite amount of lust. Seems like he hit the jackpot during the nanite apocalypse - not changing at all and becoming a sought-after commodity because of that. Joining the crew of this brothel has been good for him too, providing protection and as much sex as a teenager can stand - and his balls produce cum for. You get a very laid-back and friendly vibe from him... explaining why the slender guy is a very popular baby-daddy in these parts by now. Hell - you picked him to have fun with yourself.";
	say "     Stepping up to the attractive blond teen, you put a hand on his crotch and feel the bulge he has there - respectably sized, that's for sure. He reacts in kind, touching and stroking your body, then leaning in to give you a peck on the lips. As your lips part again a few heartbeats later, Ty whispers more to himself than you, 'I can't believe I'm doing all of this sometimes. Hell, before you came in I had [one of]an anthro tiger[or]a freaking caveman[or]a dragon-lady[or]a giraffe[or]a living statue[or]a feral-looking dog[or]a cute cat-girl[or]an actual dolphin[or]a goo-person[at random] ...which was pretty cool, actually.' Putting your hand back on his crotch and squeezing it a little, you pull him out of his reverie, focusing Ty's attention back on yourself. He gives you another cute blush, then nods toward the nearby bed and says, 'Let's have some fun!'";
	WaitLineBreak;
	say "     Following the human teenager, you watch Ty as he pulls off his t-shirt and casually throws it aside, revealing his slender chest and flawless white skin. Seems like his usual customers love seeing an example of the humanity they themselves lost, as he drops his shorts and then gives a little twirl in just a skimpy pair of briefs, showing his body off to you. 'Touch me if you want,' he tells you with a smile and reaches out to take your hand, setting it on his hips. Happy to do so, you let your hands wander over his body, stroking over smooth skin and teasing the young man's small pink nipples a little, then eventually returning your hands to his hips and hooking your fingers under the underwear that is Ty's only remaining article of clothing.";
	say "     The young man grins as you pull the briefs down, revealing his respectably sized manhood that had been showing as an elongated bulge. Freed from its confines, the erect cock swings up to stand proudly over Ty's pair of well-developed balls. His crotch is hairless - smoothly shaved, like the rest of his body, completing the image of a modern American teen. The blond guy wraps his hand around his cock and strokes it a few times in deliberate slowness, showing off his best piece proudly. 'Time for you to join me,' he adds in a cheerful tone a moment later, then starts to tuck at your clothes and helps you strip down to your [skin of player] skin. With the two of you now standing naked in front of his bed, Ty lets his gaze wander up and down over you.";
	WaitLineBreak;
	if cunts of player > 0: [female + herm]
		say "     Eyes drawn towards your crotch and the folds of your pussy, Ty leans forward and places his hand on you in a gentle stroke. His fingers trace the outline of your pussy, brushing against the nether lips and even dipping slightly between them, then move on to your clit, rubbing it in circling movements that make your knees go weak from arousal. You can't help but moan out loud and hold on to his shoulders with your hands. 'Yeah, I know what you need,' he Ty says with a chuckle and guides you to get on the bed, lying back with your legs spread wide. With a confident smile on his face that speaks of a man in his element, the blond teen climbs on the bed right after you and gets on all fours, then leans down to get his face close to your crotch.";
		say "     The naked human teen gives you a boyish grin and says, 'Just relax and enjoy,' before licking over your sex in a slow stroke of his tongue. He clearly is quite experienced in pleasing women, having had many visitors of all sorts of species since he started working here. You moan in pleasure as he laps at your pussy, teasing the nether lips for a little while, then pushing his wiggling tongue in between them and exploring your womanhood. Finally, he moves on to the sensitive clit up above, brushing the tip of his tongue over it again and again, then even closing his lips around the little bump and giving it a few gentle sucks.";
		WaitLineBreak;
		say "     You can't really tell how long he keeps at it with his oral stimulation, writhing on the bed as pleasant sensations rock your body. One thing you definitively know - you're enjoying of every last moment of it. There is something so sexy about just giving in fully to an eager partner, relaxing on a big double bed as he pleases your body... oh fuck, you don't want it to end! Eventually Ty does pull back from you after a last glorious lick from bottom to top of your sex, leaving you panting and hungry for more. Yet before you can raise your head and voice those desires, there is something else at your crotch - a warm shape brushing against your skin.";
		say "     Pushing yourself up on your elbows, you see that Ty is kneeling between your legs now, hard cock in hand and lining himself up. Then he inches forward again, nudging your folds apart with the tip of his cock and sliding in between them. The young man lets out a satisfied grunt as he pushes into your body, filling your pussy with his glorious cock - its mushroom head spreading your passage around it. Smoothly, he penetrates you all the way until his balls are resting against your crotch and the head of his erection nudges your cervix just a little bit. Being inside you balls-deep now, the slender teen leans forward to make out with you while you get used to the size of his cock, then starts slow thrusts a little while later.";
		WaitLineBreak;
		say "     Ty goes on to push himself upright again, looking down lustfully at your naked body as he slides in and out of your pussy. 'You're one sexy babe,' he tells you in an aroused tone and puts two fingers back on your clit, rubbing it in turn with every thrust of his cock. Stimulating you inside and out like that, the young man proceeds to go faster and faster afterwards, building up a good tempo for fucking. You can't help moaning like a bitch in heat as your blond-haired lover soon pounds into you at a rapid pace, hammering your pussy again and again. His long cock rubs your inner walls so very good, brushing against many sensitive pleasure-spots that make you tremble in lust. The energetic teen fucks you like a man possessed and practically goes wild as you try squeezing your inner muscles around his cock. 'Fuck. Fuck! FUUUCK! This feels great!' he shouts in a full-throated voice, his hands hooking under your thighs to hold on to you for even harder thrusts.";
		say "      His gaze is full of lust as it takes in your naked body while he ruts it, panting breathlessly from the strenuous exercise. After a little while longer of wild, no-holds-barred fucking, you can feel your young buck getting close - he keeps ramming his shaft in as far as it will go, then pauses for a second or two, during which time you can feel his erection throb with pre-cum leaking into your depths. Being almost at the point of no return yourself, you hunger for every further thrust into your pussy, relishing in the push of his hard shaft against innermost barrier too - damn, he could almost be fucking your womb. In this lust-drunk state, you soon decide that his amazing cock should just stay inside you for good and fill you out so very well - so you clamp your legs around his hips and pull him in tight, at the same time as squeezing his erection with your inner muscles.";
		WaitLineBreak;
		say "     'NNnnghhh! So good!' the human teen gasps out in an urgent tone, followed by an almost shouted grunt. Ty's grasp on your legs tightens as he holds on for dear life and grinds his hips against your crotch while his cock erupts deep in your pussy. Spurt after heavy spurt of cum paints your insides white and starts to trickle into your womb. Only a few heartbeats after Ty, the sensations drive you over the edge too, [if cocks of player > 0]and your manhood sprays long strings of cum all over your chest.[otherwise]and you tremble under him, your pussy dripping femcum.[end if] Ty and yourself ride out your joint orgasms together - holding on to one another, touching and stroking while you pant for breath and one of you is bred with a quite big load of virile cum.";
		say "     His hand slides down to your belly an comes to rest just over your navel, then the teenager says, 'Fuck yeah. I love this job. Hope that knocked you up baby. And if it didn't... come back for another round. It's satisfaction guaranteed from yours truly. I'll gladly keep pounding you till you swell with my kid - and afterwards too...' He stays inside you and keeps his hand on you for a little while longer, then slowly extracts his softening cock from your pussy, watching with interest how it gapes open in the shape of his cock and starts leaking some of his copious amount of cum.";
		WaitLineBreak;
		say "     No longer impaled on Ty's slender but long erection, you lie on the soft sheets as you try to catch our breath. Your freshly-bred pussy keeps leaking cum for a little while longer, then you feel something brush over it - a towel, held by Ty that he uses to gently clean you up, wiping away sweat and cum. He smiles down at you as he does this and sometimes strokes your curves too, clearly enjoying this wind-down of the action. Finishing up by leaning over you and planting another kiss on your lips, he then stands up again and gets dressed - watched by you as you push yourself up on your elbows. Once the teenager is clothed in his usual attire, he helps you up from the bed with an offered hand. 'That was fun,' Ty says with a smile and pats your shoulder before adding, 'I wouldn't mind another round or three. But please, do clear up things with Jerome first, okay? This is my job after all, and I'm not allowed to give freebies...'";
		if player is impreg_able: [can become pregnant]
			say "[fimpregchance]";
			if player is impreg_now: [has become pregnant]
				add "Human Carrier" to feats of player; [human baby, no matter what]
	else: [male + neuter]
		say "     Noticing your[if cocks of player > 0] dick and the[end if] absence of any sort of pussy, he raises an eyebrow and says, 'Oh? Normally I get those horny women who want to get a cute pink-skinned baby. I mean...' [if player is mpreg_ok]You interrupt him with a raised hand, telling the young man with a broad grin that one doesn't necessarily need a pussy to get pregnant. His eyes go a little bit wider as he looks at you and says, 'Ooooooh! I don't know why I am surprised... hell, I've fucked all sorts of people by now. So what's a little guy on guy action besides that.'[otherwise]You interrupt him with a raised hand, telling the young man with a sly smile that you couldn't resist feeling the cock of such a sweet dude like him up your ass. 'Oooh! I - er, I'm glad you think so. Got a few gay friends actually, though I never really did anything with them except getting a blowjob once. But now... hell, I've fucked all sorts of species by now, so what's a little guy on guy action besides that.'[end if] With a chuckle, Ty guides you to get on the bed on all fours, ass raised a little.";
		say "     The naked human teen swings by his 'neighbour' in the brothel, borrowing a bottle of lube, then moves to kneel on the bed behind you. With a click, he opens the bottle and squeezes out a dollop of slippery goo on his fingers, then dabs that between your buttocks. Stroking his slick fingers over your pucker, he feels the wrinkled ring experimentally, circling it with a fingertip, then goes on to push against it gently. He pauses for a second as you gasp when your muscle relents and allows him in. 'Does that feel okay?' comes the typical question of a novice to anal sex, to which you give an eager moan in reply. This gives Ty greater confidence in fingering you and he goes on to sink his whole digit into your body, up to the knuckles.";
		WaitLineBreak;
		say "     Ty goes on to finger your insides, pushing in and out faster now and bending it to stroke sensitive spots. He seems glad that the treatment meets your approval and is smiling as you turn your head to look back at him, then tell him he can actually use more than one finger. Blushing, the young man's eyes go wide as he replies, 'Oh! Of course!' Happy to follow your request, he fills your hungry hole with two fingers, then three after a little while of playing around with your gradually stretching asshole. Finally, when you're well and truly lubed up and your pucker as relaxed as it is gonna get, you groan out for him to take your ass right away.";
		say "     Eager fingers guide his erect human cock forward and Ty rests his manhood between the buns of your rear end, looking down at it and your naked body. 'I could definitively get used to this,' the young man says as he lines himself up with your hole, then pushes in, stretching the readily expanding muscle around his cock. 'Fuuuck yeah!' he grunts as his cock sinks deeper into the warm and tight embrace of your inner passage. Ty's restraint wears thin at that point and he gives in to the relatively novel sensations of fucking someone's ass and thrusts hard, bottoming out the rest of the way in one quick movement that makes his balls smack against your body.";
		WaitLineBreak;
		say "     You can't help moaning like a bitch in heat as your blond-haired lover proceeds to pound into you at a rapid pace, hammering into you again and again. His long cock grinds against your prostate with each thrust, pushing your arousal hard and prompting you to lower your front end even further as you brace against the energetic teen as he fucks you like a man possessed. 'Fuck. Fuck! FUUUCK! This feels great!' he shouts in a full-throated voice as you squeeze your inner muscles around his cock. Then Ty leans forward and wraps his arms around you from behind, embracing and touching your naked body as he ruts it, panting breathlessly against your back.";
		say "     After a little while longer of wild, no-holds-barred fucking, you can feel your young buck getting close - he keeps ramming his shaft in as far as it will go, then pauses for a second or two, during which time you can feel his erection throb with pre-cum leaking into your depths. Being almost at the point of no return yourself, you hunger for every further thrust into your ass, relishing in the push of his hard shaft against your prostate. In this lust-drunk state, you soon decide that his amazing cock should just stay inside you for good and fill you out so very well - so you clamp your hole tight as a vise around Ty's erection on his next deep thrust.";
		WaitLineBreak;
		say "     'NNnnghhh! So tight!' the human teen gasps out in an urgent tone, followed by an almost shouted grunt. Ty's arms tighten around your chest as he holds on for dear life and grinds his hips against you while his cock erupts deep up your back passage. Spurt after heavy spurt of cum paints your insides white and the young guy's shaft throbs hard against your prostate with every one of them. Only a few heartbeats after Ty, the sensations drive you over the edge too, [if cocks of player > 0]and your manhood sprays long strings of cum all over the sheets of his bed, adding on to various other cum-stains.[otherwise]and you tremble in his embrace as your whole body is rocked by your orgasm.[end if]";
		say "     Ty and yourself ride out your joint orgasms together - holding on to one another, touching and stroking while you pant for breath and one of you is bred with a quite big load of virile cum. [if player is mpreg_ok]His hand slides down to your belly an comes to rest just over your navel, then the teenager says, 'Fuck yeah. I love this job. Hope that knocked you up dude. And if it didn't... come back for another round. Its satisfaction guaranteed from yours truly. I'll gladly keep pounding you till you swell with my kid - and afterwards too...' [otherwise]His hand slides down to your crotch and gently wraps around your spent cock, giving it a few gentle strokes as the teenager says, 'Fuck yeah. I love this job. All the pussy I can fuck, and sexy dudes too. Damn, does it always feel this great? Guess I should have taken Kamir up on the offer last new year's eve...' [end if] He keeps holding you like that for a little while longer, then slowly extracts his softening cock from your ass, watching with interest how its hole gapes for a few seconds, then squeezes shut before opening again, 'winking' several times like that before it settles down to staying mostly closed.";
		WaitLineBreak;
		say "     No longer impaled on Ty's slender but long erection or held in his arms, you sink forward on the bed, panting into the soft sheets as you try to catch our breath. Your freshly-bred ass stays raised as it was for a little while longer, then you roll over and lie on your back, propped up on raised elbows to watch Ty rub himself off with a soft towel before holding it out for you to use too. While you yourself clean up as much as you can, the teenager gets dressed in his usual attire, then helps you up from the bed with an offered hand afterwards. 'That was fun,' he says with a smile and pats your shoulder before adding, 'I wouldn't mind another round or three. But please, do clear up things with Jerome first, okay? This is my job after all, and I'm not allowed to give freebies...'";
		if player is impreg_able: [can become pregnant]
			say "[mimpregchance]";
			if player is impreg_now: [has become pregnant]
				add "Human Carrier" to feats of player; [human baby, no matter what]

to say ShagShackSex8: [Penny]
	say "     Walking towards the place where the anthro rottweiler has her bedding on the wide open sales floor of the former mattress store, you see her previous client (a [one of]slender crane) put on a his white briefs[or]massive black bear) pull up his heart-covered boxers[or]manly lion) put on a small black speedo[or]scaly herm drake) hike up her silky red g-string[at random] then pat the freshly fucked canine on the head. Wagging her stubby black tail and staying in character for pet-play, the canine bitch gives a friendly lick in response. With a mild chuckle the customer leaves her after that, giving you a thumbs-up as you walk past. Left behind, the rottweiler sits on the floor near the base of a queen sized mattress with a doggy bowl and a canine dildo with an inflatable knot close by. Around her neck, she has a spiked dog collar which is hooked to a long leash tied around one of the bed-posts. The name Penny is emblazoned on the dog tag.";
	say "     When the John is far enough away, the attractive woman pushes herself up from the pose on all fours for a moment, stretching her arms and legs and looking around until she spots Jerome's assistant. Then the domestic canine calls out, 'Kaden I'm parched, can I get another refresher?' The cat-boy heads over and pours about half a bottle of creamy white orc cum into her bowl, then leaves after getting his hair tousled by the thankful prostitute. Dropping back to all fours, Penny leans down and starts to lap up the viscous fluid. After a couple of gulps her muscles visibly tighten up for a second then relax as she lets out a small moan. With the somewhat turned-around position in which she sits down next, you get a prime view of her naked form - heavy D cup breasts swaying in the air and a curvy booty. As you start to walk over, the black and brown coated rottweiler perks up an ear to follow the sound.";
	WaitLineBreak;
	say "    When you approach Penny's mattress, she greets you with a happy woof and a wag of her small tail. Then she pads closer on all fours and gives your body a thorough sniffing, focusing heavily on your crotch. It seems like she puts on the act of being a slutty pet when she is with a customer. Sitting on the mattress you begin to pet her black and brown fur coat. As your hands graze her ample breasts, she gives your forearm a couple of licks to encourage further touching. Happy to comply, you begin to grope and squeeze her breasts and trace a finger around the aureoles of the of the nipples. Letting out some satisfied moans at getting groped, the aroused rottie tilts her hips to give you a better view of her spade-like canine pussy. One of your hands strokes down the small of the turned-on doggy's back, over her shapely buttocks and around the canine's damp cunt.";
	say "     With a salacious grin on your face, you ask if she likes being a nice puppy and having her masters touch her - and Penny immediately nods her head and gives an affirmative bark. Teasing the bitch by running your fingers just along the outside of the heated folds of her sex, you playfully state that your puppy seems to be perfectly happy with just this amount of stimulation. Chuckling at the way Penny holds her breath when you stroke towards her clit, then stop before touching it, you add that she surely has no need for more. Turning her head to look firmly into your eyes, Penny begins wiggling her waist, yaps a couple of times in an imploring fashion that reminds you of a dog impatiently waiting for their master to go for a walk.";
	WaitLineBreak;
	say "     Not wanting to deny this needy bitch's needs any longer, you insert two of your fingers inside her and stroke her inner passage. The dog slut's warm pussy clenches down on your digits quite tightly, which is surprising given her line of work. Starting off with a slow sensual pace, you slide your fingers in and out of her damp cunny. As you increase the speed of your motions the black and brown coated femme starts to have trouble keeping her composure. Panting with her tongue lolling out the side of her mouth, she rocks against your touch, eager for more. Seeing the canine tart moaning due to the skillful use of your hands, your cock starts rise. Noticing this, Penny's eyes fixate on your [cock of player] rod and she whimpers, pawing the air to show she wants it. With a broad grin on your face, you pull your hand from her pussy and ask if the doggie wants a bone to lick. Letting out a couple of needy whines and chuffs as a reply, your pet for hire shows her desires with great exuberance.";
	say "     Removing any gear or clothing from the lower half of your torso, you spread your legs and tell the bitch that she should start going down on you if she wants her treat. Licking her lips, the anthro rottweiler bounds forward and laps over your crotch, then focuses on the length of your dick. Beginning with a couple of swirling licks on the tip of your cock, Penny draws strings of pre-cum into the air that connect your rod with her tongue. Next, she does slow licks up and down the underside of your shaft from the base to the head. This starts to take longer as you grow more and more erect. Before long, the sexy bitch also switches up with focusing on your [ball size], lapping and sucking each nut individually. [If cunts of player > 0]Noticing you have more than just your rod that needs attention, she licks and laps at the folds of your pussy. [end if]But as good as that feels, your cock is aching for attention from the dog's mouth.";
	WaitLineBreak;
	say "     Placing two hands on the curvaceous rottie you guide her head back to the tip of your shaft. With your hands on the back her head, the eager bitch starts to fellate you. By the way she goes deeply around your cock from head to base you can tell that this doggy whore has had plenty of experience. Your sexy canine bobs her head up and down with smooth motions and lets her tongue play over your shaft. Exhaling short panted breaths, you murmur what a good girl she is and stroke the top of her head. This affectionate praise causes Penny to smile and give a very garbled woof in response. A small trickle of femcum runs down the inside of her digitigrade hind-legs and you can smell the scent of canine arousal hanging heavily in the air. Leaning in close to the leaking Rottweiler's ear, you whisper that she surely will want the bone she is sucking buried in her welcoming hole. With a loud slurp, the prostitute stops sucking your penis and hops on the mattress.";
	say "     Having assumed the proper position for breeding, Penny has her hindquarters raised high, showing off her spade-like canine pussy that is clearly aching to be stuffed. Eager to to just that, you line your slick shaft up with her eager and willing cunny, then thrust forcefully into the bitch. The Rottweiler's short tail is wagging furiously as you do so, showing just how turned on the doggy femme is. Rocking your hips, you speed up the pace and Penny starts to howl and moan like the needy bitch that she is. As you bottom out your partner has a little trouble keeping up the act of being a simple-minded pet and starts to clamp one paw-hand over her own muzzle, trying to keep in any lustful shouts of how much she likes this and to fuck her harder.";
	WaitLineBreak;
	say "     Chuckling at the rottie bitch's antics, you decide to turn up the heat even more - shifting your hips to a new angle, you pound into her as fast as you can. Jackhammering your cock into the well-fucked pussy, you can tell that an orgasm is close for the rottie whore by the way her pussy is pulsing. Then with one last final thrust, the doggy slut climaxes. Fem-cum covers your dick and drips onto the mattress. Your curvy partner's body trembles, her thighs quiver, and her breaths come at a staggered pace. Dropping her head to rest against the well-worn mattress, she catches her breath by panting loudly, her tongue hanging out of the side of her mouth. Softly petting her back haunches, you can feel any tension in her muscles release. Massaging the woman's wet cunt you ask confidently if she enjoyed getting her bone - and the panting dog responds with a garbled bark of approval.";
	say "     While this is all going on, your cock is rock hard and begging for release. You could just keep going and fill her with another load to mix with those of her previous customers, or... looking down at her doggy bowl you come up with a different idea. Pulling your cock out of her wet snatch, you hop off the bed and grab the metal bowl, holding it under your [cock size desc of player] rod as you jerk yourself off. Turning around to stare at you because you stopped fucking so suddenly, Penny cocks her head and utters a curious but fatigued chuff. Well lubricated by the potent amount of femcum coating your shaft, stroking goes a rapid and thorough pace. Feeling a tingling in your balls, you get close to blowing your load - then come hard, throbbing thick spurts of cum right into the bowl. Soon it is filled with your [cum load size of player] load, after which you set the bowl down on the ground for Penny.";
	WaitLineBreak;
	say "     Pulling on the leash that ties Penny's collar, you prompt the dog to come over to you, making her sit next to the cum-filled bowl. With an impish grin, you tell her that dinner is served, and the pet rottweiler immediately lowers her head down to the bowl and slowly begins lick up your sperm. Based on the technique she uses to make the act a sexy show, she's really into such kinky acts too. After lapping the bowl clean, the pet anthro for hire takes a seat on the mattress next to you, allowing you to pet her while you recover from your orgasm. Once you feel rested enough to head back out into the city, you pat her head and tell her what a good girl she has been, then wave goodbye to the canine. With a beaming smile the sated doggy gives amicable bark and raises a paw to do a little wave.";

to say ShagShackSex9: [Bryce the wolftaur]
	setmonster "Wolftaur";
	choose row monster from the table of random critters;
	if BryceFucked is 0: [no sexual contact with the taur before]
		say "     Walking among the many mattresses filling the floor, you find one with an inhabitant that catches your eye. Standing astride the mattress is a tall wolftaur, his large, canine lower body stretching behind him, complete with a distinctly wolf-like tail. His upper body is covered in soft grey fur, with a face that is definitely more lupine than human. Easily visible between his legs is a very large knotted canine dick, clearly erect. As you look back up, you meet his eyes - it seems he noticed your stares. The wolftaur grins at you and speaks. 'I think you've found what you're looking for. The name's Bryce. Care to join me?'";
		say "     You nod as you move up to the wolftaur, still enamored with his appearance. He gently takes a hold of you, bringing you fully onto the mattress and embracing you, the warm fur brushing tantalizingly against your skin. 'Since you seemed so interested in my cock, maybe you should give it a closer look?' he whispers, his mouth mere inches from your ear. His hands gently guide you along the path you would have taken regardless, as you fall to your knees atop the mattress, bringing your eyes level with the prize hanging below him.";
	else if BryceFucked > 0: [player blew him off before, or did other things]
		say "     Walking among the many mattresses filling the floor, you see a familiar face. Standing astride the mattress is a tall wolftaur, his large, canine lower body stretching behind him, complete with a distinctly wolf-like tail. His upper body is covered in soft grey fur, with a face that is definitely more lupine than human. Easily visible between his legs is a very large knotted canine dick, clearly erect. As you look back up, you meet his eyes - it seems he noticed your stares. Bryce grins at you and speaks. 'If it isn't my favorite cocksucker come to visit again. Care to join me?'";
		say "     You nod as you move up to the wolftaur, just as enamored with his appearance as before. He gently takes a hold of you, bringing you fully onto the mattress and embracing you, the warm fur brushing tantalizingly against your skin. 'Time to give a little more attention to my cock, isn't it?' he whispers, his mouth mere inches from your ear. His hands gently guide you along the path you would have taken regardless, as you fall to your knees atop the mattress, bringing your eyes level with the prize hanging below him.";
	WaitLineBreak;
	say "     Your arousal begins to peak, and you decide that your hands shouldn't be away from Bryce's glorious shaft any longer. You touch it gently, feeling the heat of his member, then begin to wrap your fingers around it. To your simultaneous dismay and delight, its girth is too great for you to grasp with a single hand. You simply cover as much of it as you can with your hands, before beginning to rub up and down the length, feeling the size between your palms, and feeling the shaft twitch and bob in response to your actions.";
	say "     You move one of your hands further down the wolftaur's member, until you reach the large ball-sack below it. Beginning to speed up your motions, doing as much as you can with the one hand remaining on his canine dick, you fonde his balls with the other, enjoying the full feeling between your fingers. 'I'm sure you have more you want to do down there, from how interested you were. Go ahead, suck my dick,' you faintly hear Bryce speak from above you. It doesn't take any more encouragement than that.";
	WaitLineBreak;
	say "     You move your head further under his tauric body, until his massive cock hangs close, the tip only the slightest distance from your face. Finally your mouth joins your hands in worshipping the canine member, the tip filling your mouth while you work the rest of the shaft and balls manually. You close your eyes and focus further, working your stretched lips further down the dick, the feeling in your mouth getting fuller even as your progress slows. Not long after that you come to your limit, the cock halfway down your throat, and you are unable to fint anymore of the shaft in as your nose bumps against his bulging knot.";
	say "     Determined to see this through, however, you begin to bob up and down fervently on as much of the shaft as you can fit into your mouth, still avidly supporting yourself with your hands, alternating each one between rubbing the knot and feeling up his heavy orbs. Soon you begin to feel his canine dick throbbing more and more, and a motion in his balls to match. Bracing for the peak you can see coming, you shove your face down his cock as far as you can go again, your lips meeting the knot. Not a moment later you feel his balls contract, as pulses of hot canine cum shoot down your throat repeatedly, the heady scent of his arousal and release filling your nose just as Bryce's sticky load fills your stomach.";
	WaitLineBreak;
	say "     When his orgasm ends, you pull back off of his canine cock, giving the tip one last parting lick, before climbing back up to your feet. Bryce looks at you, seemingly very pleased with your performance. 'You did very well at that, better than I've seen in a good while. Feel free to come back any time you're in the shack.' You find yourself smiling as you walk back out, the satisfying feeling of the load you swallowed the sole reminder of your enjoyable encounter.";
	if BryceFucked is 0: [no sexual contact before]
		now BryceFucked is 1; [player gave him a BJ before]
	decrease hunger of player by 10;
	if hunger of player < 0:
		now hunger of player is 0;

to say ShagShackSex10: [Feral Male Latex Fox]
	setmonster "Latex Fox";
	choose row monster from the table of random critters;
	say "     Looking around the room, your eyes eventually come across a door with a crudely made sign that says 'Latex Fox inside!' Curiosity piqued, you open the door and quickly step through. On the other side, you see a large, feral latex fox, sitting on it's haunches, facing away from you. As you shut the door, the fox whirls around to face you, exposing it's [one of]large[or]foot-long[or]massive[or]huge[at random] [one of]rubber[or]rubbery[or]glossy[or]latex[at random] cock, fully erect and dripping pre. It lets out a growl, crouching down. Giving you no time to react, the beast jumps on you, pinning you to the floor. He makes surprisingly quick work of you clothing despite his claws only being made of rubber, quickly leaving you completely at his mercy.";
	say "     [bold type]Surely you're not going to go down this easily. Do you struggle against the fox?[roman type][line break]";
	Line Break;
	say "     ([link]Y[as]y[end link]) - Yes";
	say "     ([link]N[as]n[end link]) - No";
	Line Break;
	if player consents:
		Line Break;
		if scalevalue of player < 3:
			say "    Try as you might, you're just not big enough to get the fox off of you. He grins, and as you struggle, you notice his body becoming larger, before he's the size of a wolf. [LatexFoxSmallPlayerSex]";
		else if scalevalue of player is 3:
			say "    Attempting to use your size to your advantage, you struggle against the beast. Just as you begin to gain some leverage, however, the fox abruptly grows in size until he's slightly larger than a wolf, his new mass enough to keep you held in place. [LatexFoxAveragePlayerSex]";
		else if scalevalue of player > 3:
			say "     Using your [if scalevalue of player is 4]larger than average[otherwise]massive[end if] size to your advantage, you throw the unruly rubber vulpine off of you, quickly rising to your feet. The fox lets out a startled yelp and you rapidly duck out of the room before he can recover.";
			say "     Making your way out of the Shack, you pass Jerome, who simple raises a brow at your sudden departure and says, 'No refunds'.";
	else:
		Line Break;
		if scalevalue of player < 3:
			say "     Opting to let the larger beast have his way with you, you relax your body, attempting to show your submission. He seems to get the message and gently nuzzles you before he decides to get started.[LatexFoxSmallPlayerSex]";
		else if scalevalue of player is 3:
			say "     You decide that it's probably best to submit to the feral; after all, you did come here for sex. Sensing your submission to him, the fox gives you a quick nuzzle before he decides to get started.[LatexFoxAveragePlayerSex]";
		else if scalevalue of player > 3:
			say "     Even though you could likely overpower the smaller creature, you decide to submit instead, relaxing your muscles and letting out a deep breath. However, the fox doesn't seem to care about that. He growls and swipes across your chest, leaving three bleeding scratches before hopping off of you and returning to his sitting position. It seems the fox has no interest in you after all.";

to say LatexFoxSmallPlayerSex: [Sex scenes for a small player with the fox]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "Eager to use you, the sex-crazed feral grabs your arm in his [one of]rubbery[or]latex[or]squeaky[at random] teeth, yanking you to the side and forcing you to roll over. This seems to be all the invitation he needs, as he quickly begins prodding at your ass with his large rubber cock. The pre dripping from his tip is enough for it to slip between your buttcheeks, and a few rough thrusts later, the tip finds it's way into your hole.";
			say "    You grit your teeth at the pain caused by the large intrusion, your hole having to stretch considerably to abide it. Of course, the feral doesn't give you any time to adjust, quickly forcing more of his length into you. [if scalevalue of player < 2]Your tiny body is already being stretched excruciatingly to accept the shaft, and he's only made it halfway in.[otherwise]By the time half of his shaft is inside of you, your small body is having to stretch painfully to accommodate it's length and girth.[end if] He doesn't show any intent of stopping at this depth either. With much effort on his part, and pain on yours, he manages to push his shaft in, all the way to the top of his bulging knot. Your stomach [if scalevalue of player < 2]is distended painfully, the silhouette of a fox-cock is visible through your skin.[otherwise]is bulging outwards, evidence to the big cock inside you.[end if] Despite all the pain you're feeling, you can't help but feel a twinge of pleasure as well.";
			WaitLineBreak;
			say "     The feral seems to notice your mounting arousal, and he lets out an amused huff. Deciding you've had enough time to adjust to his size, he pulls his rubber hips back until only the tip of his latex shaft is inside you. Your relief from the pain only lasts a moment, however, before he harshly thrust back into you. You let out a gasp of pain, but this does the opposite of discouraging him. He begins to thrust in and out of your hole, treating you like his bitch. Somehow, amidst the pain, you cock has hardened and is now leaking pre, betraying your reluctant enjoyment of this.";
			say "     As the vulpine's knot batters against your entrance, you begin to feel it growing. It nears three inches in diameter as he grows increasingly determined to bury it into you. His thrusts become more and more chaotic and animalistic as he lets out a growl expressing his utter dominance of you. Eventually, the large bulb of rubber makes some progress, stretching your hole wider and wider, until it pops in with a wave of intense pain and pleasure. Almost instantly, you reach your climax, spilling your cum onto the ground. The fox doesn't seem like he's too far behind you, as he ruts you viciously, nearing his own orgasm. He lets out a yip of pleasure as he cums, spilling his rubbery seed into your bowels. Rope after rope of his virile, rubbery cum fill you, and your stomach[if scalevalue of player < 2] instantly bulges even further outward, the torrent of seed causing you to inflate a sizable amount.[otherwise] quickly bulges outwards even more, the torrent of virile seed causing you to inflate a decent amount.[end if]";
			WaitLineBreak;
			say "     Eventually, the flow of cum slows, and your left feeling decently bloated. The feral, being done with you, begins to tug your hole with his knot, trying to free his shaft. Of course, this is rather painful for you, until he eventually manages to yank it out with a wet pop, a rush of his own seed following it out."
		-- 2:
			say "     <a little more growth, moderate inflation anal scene here.>";
			WaitLineBreak;
		-- 3:
			say "     <a lot more growth, heavy inflation anal scene here.>";
			WaitLineBreak;

to say LatexFoxAveragePlayerSex: [Sex scenes for an average player]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:[No growth / light cum inflation scene]
			say "Eager to use you, the vulpine grabs you by the arm with his teeth, and yanks you to the side, causing you to roll over. However, this seems to be exactly what he wanted as he lines his erect, drooling cock up with your ass, roughly thrusting against it a few times before his tip sinks inside.";
			say "      The pain from the mostly unlubricated intrusion causes you to grit your teeth, but this doesn't deter the beast. He keeps pushing and pushing his [one of]rubbery[or]latex[at random] cock deeper and deeper, until his growing knot brushes against your entrance. You let out a groan, seeing the massive vulpine member distending your stomach. Against your will, your cock begins to harden, leaking pre and betraying your arousal. The fox let's out a pleasured growl and pulls back until only a quarter of his [one of]large[or]big[or]long[at random] is left inside you. The sex-crazed feral only gives you a moment of reprieve, however, before he thrusts his tool back in up to the knot. He pulls back much more quickly this time, and thrusts in again. Slowly but surely, the beast picks up the pace, slamming his knot against your strained hole repeatedly. Your own unattended [Cock of player] penis bobs up and down from his rough thrusting jerking your body.";
			WaitLineBreak;
			say "     His thrusts keep getting rougher and faster, before he eventually stops pulling out as far as he has been, only pulling out a few inches now. The fox growls possessively as he batters your hole, and pushes his knot harder and harder against it. Your eyes widen as you realize amidst the pain and pleasure that he's going to try tying you! True to that assumption, he backs up one last time before his softball-sized knot slams into your hole with a vengeance. But unlike the previous thrusts, he doesn't stop pushing after his knot hits you. He pushes harder and harder, determined to impale you with his knot before he finally succeeds, the ball of rubbery flesh slipping into you with a wet squelch, and a yip of pleasure from the rubber vulpine.";
			say "     Even without getting any treatment, you own cock erupts, orgasm strained from the pressure against your prostate, which actually seems to be growing! The latex fox's knot is swelling larger, firmly tying you to him as he begins to cum. Rope after rope of [one of]rubbery[or]slick[at random] fox seed fills your bowels. Faster than you would have believed possible, your belly starts to distend from all the semen pumped inside it. You start to look rather plump before the flow finally slows to a dribble. Yanking harshly on his knot, the fox manages to pull it out of your abused hole, a torrent of seed following it.[mimpregchance]";
			say "     The vulpine seems to completely disregard you afterwards, returning to the position he was in when you entered. Collecting yourself, you shakily exit the room.";
		-- 2:[Light growth / moderate cum inflation scene]
			say "Eager to use you, the vulpine grabs you by the arm with his teeth, and yanks you to the side, causing you to roll over. However, this seems to be exactly what he wanted as he lines his erect, drooling cock up with you ass, roughly thrusting against it a few times before his tip sinks inside.";
			say "     With his shaft inside you, he begins to grow both his body, and his cock. You grit your teeth in pain as the intrusion grows, spreading your ring out wider. The feral's weight also increases, pressing you into the ground with his mass. By the time he's done expanding, his cock is nearly an inch wider, four inches longer, and his body is close to the size of lion. Despite the increase in size, he's still able to push his rubbery vulpine tool further into your depths, lubricated just enough by his thick precum. After a lot of work on his part, and pain on yours, he manages to bottom out to his growing knot.";
			WaitLineBreak;
			say "     The fox doesn't give you any time to get used to the intrusion, however, as he rapidly pulls it back out till just the tip remains inside you. He thrusts back in, faster this time, and despite everything that's happening, you feel a twinge of pleasure from your prostate, his smooth latex shaft rubbing against it nicely. Seemingly noticing your mounting arousal, the beast let's out an amused huff before picking up the pace even further. This prolonged ritual continues for quite a while, you [cock of player] cock growing harder and beginning to drool pre. Of course, this only encourages him further, and he begins to rut much more agressively against your hole. His massive knot repeatedly brushes against your entrace, and soon enough, he switches to shorter, harder thrusts, determined to tie you to his tool.";
			say "     Pushing harder and harder into you, his knot eventually starts to make headway, stretching you rather painfully with it's girth, despite only a little bit of it slipping in. This doesn't stop the rubber creature, however. He continues to force his knot further in further in, letting out a possessive growl, before the massive sphere of rubber slides in past it's widest point. You feel an intense pleasure as the huge beast finally manages to tie your stubborn hole. Your [Cock of player] penis throbs as you struggle to cum, the strain his knot is putting on your prostate making it rather difficult. As you finally reach your peak, the fox does as well. He let's out a pleasured growl as his orgasm begins, his entire shaft rippling in waves as he fills you with rubbery fox cum. Very quickly, you begin to feel incredibly stuffed by his cream, but the release shows no signs of slowing down. More and more fertile, twisted cum spews into your bowels, and your belly begins to distend noticeably.";
			WaitLineBreak;
			say "     You begin to think he's done before he starts rutting rapidly against you, still releasing his seed. He keeps thrusting into you while his climax continues. This goes on for what feels like hours before the vulpine finally slows down, his torrent of cum beginning to cease it's flow as well. When he's finally done filling you up, your belly is heavily swollen, to the point that you look like you've eaten a whole water mellon. He suddnely begins to jerk backwards, trying to pull his knot from your hole. You let out a yelp of pain from the tugging, but also pleasure from the feeling of the rubbery liquid sloshing around inside you. Eventually the vulpine manages to pop his tool out, and it's quickly followed by a rush of his virile seed.[mimpregchance]";
			say "     After he dismounts you, he gives your drenched backside a few licks before he decides to turn around and return to the position you found him in when you entered the room. His body quietly shrinks back to it's normal size, and you take that as your cue to exit the room.";
		-- 3:[Heavy growth / heavy cum inflation scene]
			say "Eager to use you, the vulpine grabs you by the arm with his teeth, and yanks you to the side, causing you to roll over. However, this seems to be exactly what he wanted as he lines his erect, drooling cock up with your ass, roughly thrusting against it a few times before his tip sinks inside.";
			say "     This doesn't seem to be enough to sate the sex-crazed feral, as he soon begins to grow, both his body and his cock increasing in size. His body keeps getting larger and larger, until he's bigger than a stallion, and his cock grows to be over two feet long and three inches thick! The massive intrusion, despite only being barely inserted is stretching you painfully, and the pain only increases as the feral vulpine pushes his shaft further into you, its passage barely lubricated by his copious amounts of thick precum. By the time he's impaled you with half of his length, you can already see your stomach bulging outwards. He growls in pleasure from the feeling of your insides resisting his massive latex cock and pushes even further still. You belly-bulge quickly becomes a massive protrusion as the beast nears its huge knot, but somehow, your not being ripped apart by it. When the beast finally presses his six-inch knot against your hole, the pain is excruciating. However, something else is there with it. You begin to feel a twinge of pleasure amogst the pain.";
			WaitLineBreak;
			say "     Seeming to sense your mounting arousal, the fox lets out an amused huff before he begins to pull his shaft out of you. Eventually, only his tip remains inside your stretched hole. This isn't the case for long, though, as he quickly pushes all the way back in. The harsh penetration causes you to let out a gasp, and the fox seems to take great enjoyment in eliciting such noises from you. He pulls backward sooner this time, and thrusts back in again. His pacing continues rise, until soon, he's pounding into you at a feverish speed, battering your hole with his knot. Your own [cock of player] cock is hard and throbbing despite the pain you're in.";
			say "     With each thrust the sex-crazed feral makes, you feel impossibly full, and each time he draws back, a terrible emptiness fills you. Eventually, the beast switches to shorter thrusts, making rapid movements in and out. He's thrusting hard enough that your own body is rocking in sync with his, your cock bobbing up and down. Soon enough, his thrusts get even harder and shorter. He seems determined to bury his massive knot inside you to claim you as his own. Your hole doesn't seem to be able to stretch wide enough for it to fit, at least at first. The rubber vulpine's tool eventually begins to make some headway, with the knot stretching your ring impossibly wider with every push, before, finally, it passes it's widest point and pops into place loudly.";
			WaitLineBreak;
			say "     You instantly climax from the sheer pressure and strain on your prostate, painting the ground with your [cum load size of player] load. The feral begins climaxing as well, his knot growing to nearly a foot wide, a torrent of thick, rubbery seed spilling into your bowels, almost instantly distending your stomach. The flow keeps coming, and your stomach is now so large that you look like you're nine-months pregnant. His climax doesn't stop there, however, as he continues to spill semen into you, thrusting renewed as well. By the time he stops, and the flow of semen comes to a crawl, you look like you're ready to give birth to quintuplets any day now.[mimpregchance]";
			say "     The fox takes no notice of your ruined body, and begins to tug his tool sharply. With it still expanded, it doesn't seem like it's going to come out any time soon, so he shrinks it down just enough for it to pop out of you with a loud, wet squelch. He dismounts you, leaving you on the floor where you eventually pass out from exhaustion.";


Shag Shack ends here.
