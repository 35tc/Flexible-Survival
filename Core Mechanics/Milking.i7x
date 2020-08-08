Version 2 of Milking by Core Mechanics begins here.
[ Version 2 - exported from the story.ni and put into its own file]
[
Table of Game Objects (continued)
name	desc	weight	object
"mothers milk" "Delicious milk made from your own tender breasts" 1  mothers milk

mothers milk is a grab object.]

Table of Game Objects (continued)
name	desc	weight	object
"mothers milk"	"Delicious milk made from your own tender breasts."	1	mothers milk
"panther milk"	"The thick, luscious milk of one of the panther taurs."	1	panther milk
"chocolate milk"	"The creamy milk with a white chocolate taste."	1	chocolate milk
"vixen milk"	"A thin milk with a faintly medicinal taste, like the silvery vixens it is from."	1	vixen milk
"sweet milk"	"A creamy, sweet milk with a faintly honey-like taste."	1	sweet milk
"macho milk"	"A creamy, energizing milk with a faintly spicy-like taste."	1	macho milk

mothers milk is a grab object. Understand "milk" as mothers milk. mothers milk is milky.
panther milk is a grab object. Understand "milk" as panther milk. panther milk is infectious. The strain of panther milk is "Panther Taur". The trade of panther milk is "distilled milk". panther milk is milky.
chocolate milk is a grab object. Understand "milk" as chocolate milk. chocolate milk is infectious. The strain of chocolate milk is "Chocolate Lab". The purified of chocolate milk is "distilled milk". chocolate milk is milky.
vixen milk is a grab object. Understand "milk" as vixen milk. vixen milk is infectious. The strain of vixen milk is "Vixen Nurse". The purified of vixen milk is "distilled milk". vixen milk is milky.
sweet milk is a grab object. Understand "milk" as sweet milk. sweet milk is infectious. The strain of sweet milk is "Cow-babe Female". The purified of sweet milk is "distilled milk". sweet milk is milky.
macho milk is a grab object. Understand "milk" as macho milk. macho milk is infectious. The strain of macho milk is "Cow-boi Male". The purified of macho milk is "distilled milk". macho milk is milky.
[cum/milk object will come from creatures]
lastmilking is a number that varies. lastmilking is usually 500.

Breast Milking is an action applying to nothing.
understand "milkme" as breast milking.
understand "milk me" as breast milking.
understand "milk myself" as breast milking.
lastBreastMilking is a number that varies. [@Tag:NotSaved] lastBreastMilking is usually 500.

Check breast milking:
	if Nipple Count of Player is 0:
		say "You don't appear to have anything worth milking." instead;
	if Breast Size of Player < 2:
		say "You don't appear to have anything worth milking." instead;
	if BodyName of Player is not listed in Infections of AlwaysLacList and Cunt Count of Player < 1 and player is not mpreg_ok:
		say "Your breasts don't seem ready to lactate." instead;
	else if lastBreastMilking - turns < 3:
		say "Your breasts have been drained recently. You'll need to wait before another worthwhile milking." instead;

Carry out breast milking:
	let MilkVolume be 0;[calculate depending on breast count and size]
	if Breast Size of Player < 16:[max milkvolume number is 8 in itemGain of milk]
		let bottles be 0;
		increase MilkVolume by ((Nipple Count of Player divided by 2) multiplied by (Breast Size of Player divided by 2));
	else:
		increase MilkVolume by 9;
	if "Fertile" is listed in the feats of Player:
		increase MilkVolume by 1;
	if "Litter Bearer" is listed in the feats of Player:
		increase MilkVolume by 1;
	if Player is impreg_now:
		decrease MilkVolume by 1;
		ItemGain mothers milk by 1;
	now lastBreastMilking is turns;
	let Searchstring be BodyName of Player;
	if there is a name of Searchstring in the Table of Random Critters:
		choose a row with name of Searchstring in the Table of Random Critters;
		if MilkItem Entry is not "" and MilkItem Entry is not " ":
			if MilkVolume is 9 or MilkVolume is greater than 9:
				let MilkVolume be 8;
				say "     As you run out of empty bottles, the remaining milk starts streaming down and forms a puddle on the ground.";
			ItemGain MilkItem Entry by MilkVolume;
		else: [no milk item exists]
			say "<Drinking your own milk?>";

Cock Milking is an action applying to nothing.
understand "jerkoff" as Cock milking.
understand "jerk off" as Cock milking.
lastCockMilking is a number that varies. [@Tag:NotSaved] lastCockMilking is usually 500.

check cock milking:
	if Cock count of Player is 0:
		say "You don't appear to have anything worth milking.";
	if lastCockMilking - turns < 1:
		say "Your balls have been drained recently. You'll need to wait before another worthwhile milking.";
Carry out Cock milking:
	let CumVolume be 0; [calculate depending on ball size]
	if Ball Size of Player > 1:
		increase CumVolume by Ball Size of Player - 1;
	else:
		increase CumVolume by Ball Size of Player;
	now lastCockMilking is turns;
	let Searchstring be CockName of Player;
	if there is a name of Searchstring in the Table of Random Critters:
		choose a row with name of Searchstring in the Table of Random Critters;
		if CumItem Entry is not "" and CumItem Entry is not " ":
			ItemGain CumItem Entry by CumVolume;
		else: [no cum item exists]
			say "<Jizzing on the floor?>";

Milking ends here.
