Version 2 of Graphics Director by Executaball begins here.

"Provides functions that link the new window based graphics."
[New Graphics modifier]
[The graphics window pixel count is 1. The graphics window position is g-above.]
The graphics window position is g-right. The graphics window proportion is 30.
[Now the graphics window proportion is NewGraphicsRatio.]

[Rule for starting the virtual machine:
	now the current graphics drawing rule is the bland graphics drawing rule.]

[The graphics-window is a graphics g-window spawned by the main-window. The position of the graphics-window is g-placeabove. Every turn: follow the refresh windows rule.

When play begins: open up the graphics-window.

The roomview-canvas is a g-canvas. The associated canvas of the graphics-window is the roomview-canvas. The canvas-width is 640. The canvas-height is 480.]

		[now the graphics window proportion is 20;]
		[now the graphics window proportion is 1;]
		[now the graphics window pixel count is 1;]

[- Master Override Function -]
[Instead of looking:
	follow the ngraphics_blank rule;
	try looking;]

TempClearBypass is a number that varies. TempClearBypass is usually 0.
[Because of new system, setting this to 1 is needed for making projections work when applied in a 'look' order]

After looking:
	if TempClearBypass is 0:
		follow the ngraphics_blank rule;
		if NewGraphicsDebugMode is true:
			say "[bold type]DEBUG:[roman type] After looking, Function Ran: ngraphics_blank [line break]";
	else if TempClearBypass is 1:
		now TempClearBypass is 0;
		if NewGraphicsDebugMode is true:
			say "[bold type]DEBUG:[roman type] After looking, *Function not run* because TempClearBypass = 1 [line break]";
	else:
		follow the ngraphics_blank rule;
		say "[bold type]ERROR:[roman type] You have an invald graphics clear bypass state! Please inform the FS developers in Discord. Here is an important number: [TempClearBypass] [line break]";

This is the ngraphics_refresh rule:
	if graphics is true and NewGraphics is true:
		follow the current graphics drawing rule;

This is the ngraphics_blank rule:
	if graphics is true and NewGraphics is true:
		project the figure of pixel_icon;
		follow the current graphics drawing rule;
		[now the graphics window proportion is 20;]

This is the ngraphics_phone rule:
	if graphics is true and NewGraphics is true:
		follow the current graphics drawing rule;


[Graphics Color Table]
[NOTICE: To add new values, please take notice that these values are REVERSE of normal hex/html. Therefore 'AA0000' should be '0000AA'... Except for non-primary colors... I dunno, try it out, no idea how inform handles colors. Different for each interpreter too. Best to stick to simple web colors.]
Table of Common Color Values
glulx color value	assigned number
g-black	0		[== $000000]
g-dark-grey	4473924	[== $444444]
g-medium-grey	8947848	[== $888888]
g-light-grey	14540253	[== $DDDDDD]
g-white	16777215		[== $FFFFFF]
g-yellow-orange	39423		[== $0099FF]
g-ice-blue	15645627		[== $EEBBBB]

graphicmoding is an action applying to nothing.
understand "graphics" as graphicmoding.
carry out graphicmoding:
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		clear the screen;
		say "[bold type]Graphic Settings:[roman type][line break]";
		say "NOTE: To disable the new graphics display, you MUST restart your interpreter. You may do a [bold type]restore[roman type] after launching to resume your game.";
		say "(1) [link]Graphics[as]1[end link] - [bold type][if NewGraphicsInteger is 1]OLD[otherwise if NewGraphicsInteger is 2]NEW[otherwise if NewGraphicsInteger is 0]DISABLED[end if][roman type][line break]";
		say "(2) [link]EXIT[as]2[end link][line break]";
		while 1 is 1:
			say "(1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				if NewGraphicsInteger is 1:
					now NewGraphics is true;
					now NewGraphicsInteger is 2;
				else if NewGraphicsInteger is 2:
					now graphics is false;
					now NewGraphics is false;
					now NewGraphicsInteger is 0;
				else if NewGraphicsInteger is 0:
					now graphics is true;
					now NewGraphics is false;
					now NewGraphicsInteger is 1;
			-- 2:
				say "Exit graphics menu?";
				if player consents:
					[now the graphics window proportion is 1;]
					follow the current graphics drawing rule; [cleanup here needs no condition check because even NewGraphics enabled players will need the window gone.]
					now trixieexit is 1;

[DEBUG Commands]
[Cheat for enabling inline debug stuff]
graphisdebugtoggle is an action applying to nothing.
understand "devgraphicsdebug" as graphisdebugtoggle.
carry out graphisdebugtoggle:
	if NewGraphicsDebugMode is false:
		say "[bold type]DEBUG:[roman type] Graphics debug information is now [bold type]enabled[roman type] (NewGraphicsDebugMode = True)[line break]";
		now NewGraphicsDebugMode is true;
	else:
		say "[bold type]DEBUG:[roman type] Graphics debug information is now [bold type]disabled[roman type] (NewGraphicsDebugMode = False)[line break]";
		now NewGraphicsDebugMode is false;

graphisdebugreport is an action applying to nothing.
understand "devgraphicsreport" as graphisdebugreport.
carry out graphisdebugreport:
	say "[bold type]Grabbing Graphics Variables, please standby.[roman type][line break]";
	clear the screen;
	say "[bold type]Graphics[roman type][line break]";
	[NewGraphics test]
	if NewGraphics is true:
		say "NewGraphics = <true>";
	else if NewGraphics is false:
		say "NewGraphics = <false>";
	else:
		say "NewGraphics = STATE ERROR!";
	[graphics now]
	if graphics is true:
		say "graphics = <true>";
	else if graphics is false:
		say "graphics = <false>";
	else:
		say "graphics = STATE ERROR!";
	[NewGraphicsInteger now]
	if NewGraphicsInteger is 1:
		say "NewGraphicsInteger = <1> (Note: Old Graphics)";
	else if NewGraphicsInteger is 2:
		say "NewGraphicsInteger = <2> (Note: New Graphics)";
	else if NewGraphicsInteger is 0:
		say "NewGraphicsInteger = <0> (Note: Graphics Disabled)";
	else:
		say "NewGraphicsInteger = STATE_ERROR";

Graphics Director ends here.
