/************************************************************************
Title:		Darkest Hour
Author:		The Geek on Skates
		http://www.geekonskates.com
License:	The Unlicense

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
************************************************************************/

#ifndef _DARKEST_HOUR_H
#define _DARKEST_HOUR_H

/************************************************************************
 DEPENDENCIES
************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>

/************************************************************************
 FIXES FOR AmigaOS3 using C89:
 1. Do not use "#include <stdint.h>", instead use these these typedefs:
    https://stackoverflow.com/questions/62937049/stdint-h-in-ansi-c-c89
 2. Also uint8_t as unsigned char:
    https://stackoverflow.com/questions/1725855/uint8-t-vs-unsigned-char
************************************************************************/

typedef unsigned char  uint8_t;
typedef unsigned char  uint8;
typedef signed char    int8;
typedef unsigned short uint16;
typedef signed short   int16;
typedef unsigned long  uint32;
typedef signed long    int32;

/************************************************************************
 COMPILER SETTINGS
************************************************************************/

/* Set to 20, 40, or 80 for each display */
#define COLUMNS 40

/* Comment this out if not building for the Apple ][ */
#define APPLE2


/************************************************************************
 LOCATION CODES
************************************************************************/

#define LOCATION_WOODS		0
#define LOCATION_SCHOOL		1
#define LOCATION_FRESH_MART	2
#define LOCATION_CHURCH		3
#define LOCATION_FIRE_HALL	4
#define LOCATION_NIKOS_TACOS	5
#define LOCATION_LIBRARY	6
#define LOCATION_CEMETERY	7
#define LOCATION_HOUSE1		8
#define LOCATION_OLD_MAN	9
#define LOCATION_GYM		10
#define LOCATION_BRIDGE		11
#define LOCATION_VAMPS_HOUSE	12
#define LOCATION_HOUSE2		13
#define LOCATION_BAR		14
#define LOCATION_PAWN_SHOP	15


/************************************************************************
DIRECTIONS
************************************************************************/

#define EXIT_NORTH	1
#define EXIT_SOUTH	2
#define EXIT_EAST	4
#define EXIT_WEST	8


/************************************************************************
INVENTORY ITEMS
************************************************************************/

#define ITEM_BIBLE		1
#define ITEM_GARLIC		2
#define ITEM_CRUCIFIX		4
#define ITEM_STAKE		8
#define ITEM_PUMPKIN		16
#define ITEM_BULLETS		32
#define ITEM_RING		64
#define ITEM_MONEY		128


/************************************************************************
GLOBAL VARIABLES
************************************************************************/

uint8_t player;		/* Player's location */
uint8_t vampire;	/* vampire's location and day/night timer */
uint8_t items;		/* Player's inventory */
uint8_t exits;		/* Used to tell the player where the exits are */
char input[8];		/* Buffer used for storing player's input */
bool isDay;		/* True=day, false=night (used in the AI) */
bool isGameOver;	/* Used to exit while-loops when the game ends */
bool struck;		/* If "the vampire strikes" and the player has a
			   Bible, the vampire runs away!  But we only need
			   to show that once, so this is for that. */


/************************************************************************
FORWARD-DECLARATIONS
************************************************************************/

void Credits(void);
void Exits(void);
void GameOver(void);
void Help(void);
void Inventory(void);
void Location0(void);
void Location1(void);
void Location2(void);
void Location3(void);
void Location4(void);
void Location5(void);
void Location6(void);
void Location7(void);
void Location8(void);
void Location9(void);
void LocationA(void);
void LocationB(void);
void LocationC(void);
void LocationD(void);
void LocationE(void);
void LocationF(void);
void Password(void);
void Prompt(void);
uint8_t ReadNybble(char ch);
uint8_t Row(uint8_t n);
void ShowPassword(void);
void StartGame(void);
void UpdateAI(void);
void WaitForReturn(void);


/************************************************************************
FUNCTION DEFINITIONS
************************************************************************/

#ifdef APPLE2

void Input() {
	uint8_t i = 0;
	while(i < 8) {
		input[i] = getchar();
		if (input[i] == '\n') return;
		i++;
	}
}

#endif


/** Prints the credits (this is an Easter egg) */
void Credits() {
	#if COLUMNS == 20
	printf("\nCREDITS\n\nWritten and\nprogrammed by:\nThe Geek on Skates\ngeekonskates.com\n\nBeta testing:\nCasey Matthews\nwebfriendlyhelp.com\n\nSpecial thanks to:\nThe Lunduke\ncommunity\nlunduke.locals.com\n\nAnd to my mom,, who\nshowed me how to\nget through life's\nreal \"darkest hour\"");
	#else
	printf("\nCREDITS\n\nWritten and programmed by:\nThe Geek on Skates\ngeekonskates.com\n\nBeta testing:\nCasey Matthews\nwebfriendlyhelp.com\n\nSpecial thanks to:\nThe Lunduke community\nlunduke.locals.com\n\nAnd to my mom,, who showed me how to\nget through life's real \"darkest hour\"");
	#endif
}

/* Tells the player where the exits are */
void Exits() {
	printf("\nExits are: ");
	if (exits & EXIT_NORTH) printf("north ");
	if (exits & EXIT_SOUTH) printf("south ");
	if (exits & EXIT_EAST) printf("east ");
	if (exits & EXIT_WEST) printf("west ");
}

/** Prints a spooky (but not too gruesome) "game over" message and ends the game */
void GameOver() {
	isGameOver = true;
	if (items & ITEM_BIBLE) {
		if (!struck) {
			struck = true;
			#if COLUMNS == 20
			printf("\nSuddenly, the\nvampire strikes!\nYou fall on your\nback! In a moment\nshe's standing over\nyou, grabbing your\nneck!  You pull\nthe Bible out of\nyour pocket, and\nshe jumps back!\n\"The Living Word!\"\nshe screams,\nvanishing in a puff\nof smoke.  You get\nup and look around.\nShe's gone.\n");
			#elif COLUMNS == 40
			printf("\nSuddenly, the vampire strikes! You fall\non your back! In a moment she's\nstanding over you, grabbing your neck!\nYou pull the Bible out of your pocket,\nand she jumps back!\n\"The Living Word!\" she screams,\nvanishing in a puff of smoke.  You get\nup and look around.  She's gone.\n");
			#else
			printf("\nSuddenly, the vampire strikes!  You fall on your back! In a moment she's\nstanding over you, grabbing your neck!  You pull the Bible out of your pocket,\nand she jumps back!\n\"The Living Word!\" she screams, vanishing in a puff of smoke.  You get up and\nlook around.  She's gone.\n");
			#endif
		}
		isGameOver = false;
		return;
	}
	if (items & ITEM_CRUCIFIX) {
		#if COLUMNS == 20
		printf("\nYou walk down the\nquiet road, turning\naround every few\nminutes.  The\nsounds here make\nyou feel like\nsomeone's watching\nyou.  You grab the\ncrucifix, just in\ncase.  Whoa!  Oh,\njust a cat. It's\nnot her.  You laugh\nat how paranoid the\nvampire hunt has\nmade you.  Is it\neven real?");
		WaitForReturn();
		printf("\nThen you get your\"answer!  Bats\nsurround you!  You\nswat them away, and\nsomeone grabs you\nfrom behind!  You\ntry to break free,\nholding up the\ncrucifix like in\nthe movies.\n\"That's just a\nsymbol,\" she\nsmiles, her hot\nbreath on your\nneck, \"And He\nisn't there\nanymore...\"");
		#elif COLUMNS == 40
		printf("\nYou walk down the quiet road, turning\naround every few minutes.  The sounds\nhere make you feel like someone's\nwatching you.  You grab the crucifix,\njust in case.  Whoa!  Oh, just a cat.\nIt's not her.  You laugh at how\nparanoid this vampire hunt has made\nyou.  Is it even real?\nThen you get your answer!  Bats\nsurround you!  You swat them away, and\nsomeone grabs you from behind!  You try\nto break free, holding up the crucifix\nlike in the movies.  \"That's just a\nsymbol,\" she smiles, her hot breath on\nyour neck, \"And He isn't there\nanymore...\"");
		#else
		printf("\nYou walk down the quiet road, turning around every few minutes.  The sounds\nhere make you feel like someone's there watching you.  You grab the crucifix,\njust in case.  Whoa!  Oh, just a cat.  It's not her.  You laugh at how paranoid\nthis vampire hunt has made you.  Is it even real?\nThen you get your answer!  Bats surround you!  You swat them away, and someone\ngrabs you from behind!  You try to break free, holding up the crucifix like in\nthe movies.  \"That's just a symbol,\" she smiles, her hot breath on your neck,\n\"And He isn't there anymore...\"");
		#endif
	}
	else if (items & ITEM_GARLIC) {
		#if COLUMNS == 20
		printf("\nYou turn the corner\nand find yourself\nstanding face-to-\nface with the\nvampire!  She\nsmiles, showing her\nlong white fangs.\nYou bite the\ngarlic, chew, and\nspit it in her\nface!");
		WaitForReturn();
		printf("\n\"That's disgusting,\" she says, wiping\nthe junk off her cheek. \"And I'm done\nplaying!\"  As she says this, her feet\nlift off the ground.  You run as fast\nas you can, but it's not fast enough!\nShe grabs you, and everything goes\nblack...");
		#elif COLUMNS == 40
		printf("\nYou turn the corner and find yourself\nstanding face-to-face with the vampire!\nShe smiles, showing her long white\nfangs.  You bite the garlic, chew, and\nspit it in her face!\n\"That's disgusting,\" she says, wiping\nthe junk off her cheek. \"And I'm done\nplaying!\"  As she says this, her feet\nlift off the ground.  You run as fast\nas you can, but it's not fast enough!\nShe grabs you, and everything goes\nblack...");
		#else
		printf("\nYou turn the corner and find yourself standing face-to-face with the vampire!\nShe smiles, showing her long white fangs.  You bite the garlic, chew, and spit\nit in her face!\n\"That's disgusting,\" she says, wiping the junk off her cheek. \"And I'm done\nplaying!\"  As she says this, her feet lift off the ground.  You run as fast as\nyou can, but it's not fast enough!  She grabs you, and everything goes black...");
		#endif
	}
	else if (items & ITEM_BULLETS) {
		#if COLUMNS == 20
		printf("\nSomeone knocks you\nto the ground! You\njump to your feet\nand face her.  A\ntall, dark-haired\nwoman in a black\nrobe hovers off the\nground in front of\nyou.  She smiles,\nand you see this\nlady has razor-\nsharp fangs!  You\ndraw your gun and\nfire!  A direct hit!");
		WaitForReturn();
		printf("\n\"Seriously?\" she\nlaughs, \"do I look\nlike a werewolf?\"\nYou now realize\nyour mistake, but\nit's too late...");
		#elif COLUMNS == 40
		printf("\nSomeone knocks you to the ground! You\njump to your feet and face her.  A\ntall, dark-haired woman in a black robe\nhovers off the ground in front of you.\nShe smiles, and you see this lady has\nrazor-sharp fangs!  You draw your gun\nand fire!  A direct hit!\n\"Seriously?\" she laughs, \"do I look\nlike a werewolf?\"  You now realize\nyour mistake, but it's too late...");
		#else
		printf("\nSomeone knocks you to the ground! You jump to your feet and face her.  A tall,\ndark-haired woman in a black robe hovers off the ground in front of you.  She\nsmiles, and you see this lady has razor-sharp fangs!  You draw your gun and\nfire!  A direct hit!\n\"Seriously?\" she laughs, \"do I look like a werewolf?\"  You now realize your\nmistake, but it's too late...");
		#endif
	}
	else if (items & ITEM_STAKE) {
		#if COLUMNS == 20
		printf("\nThe vampire grabs\nyou by the throat!\nYou use your wooden\nstake to try to\nfend her off!  It\nsnaps like a twig\nagainst her chest,\nand she laughs.");
		WaitForReturn();
		printf("\n\"Should have\nlistened to the old\nman,\" she says,\nfinishing you off...");
		#elif COLUMNS == 40
		printf("\nThe vampire grabs you by the throat!\nYou use your wooden stake to try to\nfend her off!  It snaps like a twig\nagainst her chest, and she laughs.\n\"Should have listened to the old man,\"\nshe says, finishing you off...");
		#else
		printf("\nThe vampire grabs you by the throat!  You use your wooden stake to try to fend\nher off!  It snaps like a twig against her chest, and she laughs.\n\"Should have listened to the old man,\" she says, finishing you off...");
		#endif
	}
	else {
		#if COLUMNS == 20
		printf("\nSmoke swirls around\nyou, blotting out\nthe starry sky.\nYou hear her laugh,\nand see her bright\nyellow eyes stare\nat you.  Instantly\nshe's at your\nthroat, and\neverything goes\nblack...");
		#elif COLUMNS == 40
		printf("\nSmoke swirls around you, blotting out\nthe starry sky.  You hear her laugh,\nand see her bright yellow eyes stare at\nyou.  Instantly she's at your throat,\nand everything goes black...");
		#else
		printf("\nSmoke swirls around you, blotting out the starry sky.  You hear her laugh, and\nsee her bright yellow eyes stare at you.  Instantly she's at your throat, and\neverything goes black...");
		#endif
	}
	printf("\n\nGAME OVER");
	ShowPassword();
}

/** Shows the command list */
void Help() {
	printf("\r\n\nCOMMAND LIST:\r\n\n  N: Go north\r\n  S: Go south\r\n  E: Go east\r\n  W: Go west\r\n  L: Look around\r\n  G: Grab something\r\n  T: Talk to people\r\n  I: inventory\r\n  X: List exits\r\n  H: view this list\r\n  Q: Quit the game\r\n\n");
}

/** Prints the player's inventory (duh) */
void Inventory() {
	printf("\nINVENTORY:");
	if (items == 0) {
		printf("\n  You don't have anything yet.");
		return;
	}
	if (items & ITEM_GARLIC) printf("\n  Four heads of garlic");
	if (items & ITEM_STAKE) printf("\n  A wood tent spike");
	if (items & ITEM_PUMPKIN) printf("\n  A plastic pumpkin with a light");
	if (items & ITEM_BULLETS) printf("\n  A gun with silver bullets");
	if (items & ITEM_CRUCIFIX) printf("\n  A crucifix");
	if (items & ITEM_MONEY) printf("\n  A $100 bill");
	if (items & ITEM_BIBLE) printf("\n  A pocket-size Bible");
	if (items & ITEM_RING) printf("\n  A diamond ring");
}

/** Hiking trail, top left corner of the map */
void Location0() {
	exits = EXIT_SOUTH | EXIT_EAST;
	player = 0;
	UpdateAI();
	if (isGameOver) return;
	printf("\nHIKING TRAIL");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {
			case 'w': case 'n':
				printf("Can't go that way.");
				break;
			case 't':
				#if COLUMNS == 20
				printf("\nNo one to talk to\nhere (unless you\nspeak Squirrel)");
				#elif COLUMNS == 40
				printf("\nNo one to talk to here (unless you\nspeak Squirrel)");
				#else
				printf("\nNo one to talk to here (unless you speak Squirrel)");
				#endif
				break;
			case 'g':
				if (items & ITEM_RING)
					printf("\nNothing to grab here.");
				else {
					items |= ITEM_RING;
					printf("\nYou grab the ring.");
				}
				break;
			case 'l':
				#if COLUMNS == 20
				printf("\nYou're in a dense\nforest, on a\nwinding trail.\nIt's hard to see\nwhere you're going.");
				if (vampire > 7)
					printf("\nIt's creepy here at\nnight!  The trees\nseem to reach out\nat you.  You hear\nfootsteps coming\ntoward you.  You\nstop and listen.\nIt's just a deer.");
				if (!(items & ITEM_RING) && !(items & ITEM_BIBLE))
					printf("\nYou see something\nshiny on the\nground.  A diamond\nring?!  Whoever\nlost it must be\nlooking for it.");
				#elif COLUMNS == 40
				printf("\nYou're in a dense forest, on a winding\ntrail.  It's hard to see where you're\ngoing.");
				if (vampire > 7)
					printf("\nIt's creepy here at night!  The trees\nseem to reach out at you.  You hear\nfootsteps coming toward you.  You stop\nand listen.  It's just a deer.");
				if (!(items & ITEM_RING) && !(items & ITEM_BIBLE))
					printf("\nYou see something shiny on the ground.\nA diamond ring?!  Whoever lost it must\nbe looking for it.");
				#else
				printf("\nYou're in a dense forest, on a winding trail.  It's hard to see where you're\ngoing.");
				if (vampire > 7)
					printf("\nIt's creepy here at night!  The trees seem to reach out at you.  You hear\nfootsteps coming toward you.  You stop and listen.  It's just a deer.");
				if (!(items & ITEM_RING) && !(items & ITEM_BIBLE))
					printf("\nYou see something shiny on the ground.  A diamond ring?!  Whoever lost it must\nbe looking for it.");
				#endif
				break;
			case 'e':
				Location1();
				return;
			case 's':
				Location4();
				return;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** School, east of the hiking trail, north of the taco shop, west of the supermarket */
void Location1() {
	player = 1;
	exits = EXIT_SOUTH | EXIT_EAST | EXIT_WEST;
	UpdateAI();
	if (isGameOver) return;
	printf("\nLOWLAND ELEMENTARY SCHOOL");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {
			case 'w':
				Location0();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7) {
					printf("\nNobody here");
				}
				else {
					printf("\n\"You're LOOKING\nfor the vampire?\"\na kid asks, \"No!\nShe'll get you,\nlike she got my\nmom!\"\n\"Your mom ditched\nyou,\" says a\nbigger kid,\n\"Vampires aren't\nreal, moron!  Now\ncome on, you\nplayin' or not?\"");
					WaitForReturn();
					printf("\n\"Kiss my skates,\njerk!\" says the\nfirst, slapping the\npuck hard.  They\nplay on, and you\nwonder what really\nhappened to this\npoor kid's mom. \nKids can sure be\nmean!");
				}
				#elif COLUMNS == 40
				if (vampire > 7) {
					printf("\nNobody here");
				}
				else printf("\n\"You're LOOKING for the vampire?\" a\nkid asks, \"No!  She'll get you, like\nshe got my mom!\"\n\"Your mom ditched you,\" says a bigger\nkid, \"Vampires aren't real, moron!\nNow come on, you playin' or not?\"\n\"Kiss my skates, jerk!\" says the\nfirst, slapping the puck hard.  They\nplay on, and you wonder what really\nhappened to this poor kid's mom.  Kids\ncan be so mean!");
				#else
				if (vampire > 7) {
					printf("\nNobody here");
				}
				else printf("\n\"You're LOOKING for the vampire?\" a kid asks, \"No!  She'll get you, like she\ngot my mom!\"\n\"Your mom ditched you,\" says a bigger kid, \"Vampires aren't real, moron!  Now\ncome on, you playin' or not?\"\n\"Kiss my skates, jerk!\" says the first, slapping the puck hard.  They play on,\nand you wonder what really happened to this poor kid's mom.  Kids can sure be\nmean!");
				#endif
				break;
			case 'g':
				printf("\nNothing to grab here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nYou're in a parking\nlot.  Street lights\ncast strange\nshadows on the only\ncar still here.\nIt's dead silent, a\nbit weird, but at\nleast you can see\nwhere you're going.");
				else printf("\nYou're in the parking lot.  There are\nkids playing street hockey here.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nYou're in a parking lot.  Street lights\ncast strange shadows on the only car\nstill here.  It's dead silent, a bit\nweird, but at least you can see where\nyou're going.");
				else printf("\nYou're in the parking lot.  There are\nkids playing street hockey here.");
				#else
				if (vampire > 7)
					printf("\nYou're in a parking lot.  Street lights cast strange shadows on the only car\nstill here.  It's dead silent, a bit weird, but at least you can see where\nyou're going.");
				else printf("\nYou're in the parking lot.  There are kids playing street hockey here.");
				#endif
				break;
			case 'e':
				Location2();
				return;
			case 's':
				Location5();
				return;
			case 'n':
				printf("\nCan't go that way.");
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Supermarket, east of school, west of church, north of library */
void Location2() {
	exits = EXIT_SOUTH | EXIT_EAST | EXIT_WEST;
	player = 2;
	UpdateAI();
	if (isGameOver) return;
	printf("\nFRESH-MART");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				#if COLUMNS == 20
				printf("\nYou go behind the\nstore.  Nothing to\nsee here.");
				#elif COLUMNS == 40
				printf("\nYou go behind the store.\nNothing to see here.");
				#else
				printf("\nYou go behind the store.  Nothing to see here.");
				#endif
				break;
			case 'w':
				Location1();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\n\"If you're into\nthat stuff,\" says a\nguy, \"try the\nlibrary.  The lady\nthere is very\nhelpful.\"");
				else printf("\n\"Vampires?\" says a\ngirl, \"I don't\nknow, in the movies\nthey use wooden\nstakes to kill\nvampires.  Why do\nyou ask?\"");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\n\"If you're into that stuff,\" says a\nguy, \"try the library.  The lady there\nis very helpful.\"");
				else printf("\n\"Vampires?\" says a girl, \"I don't\nknow, in the movies they use wooden\nstakes to kill vampires.  Why do you\nask?\"");
				#else
				if (vampire > 7)
					printf("\n\"If you're into that stuff,\" says a guy, \"try the library.  The lady there is\nvery helpful.\"");
				else printf("\n\"Vampires?\" says a girl, \"I don't know, in the movies they use wooden stakes\nto kill vampires.  Why do you ask?\"");
				#endif
				break;
			case 'g':
				if (!(items & ITEM_GARLIC)) {
					items |= ITEM_GARLIC;
					printf("\nYou grab the garlic.");
				}
				else printf("\nNothing here.");
				break;
			case 'l':
				#if COLUMNS == 20
				printf("\nThe supermarket\nparking lot is\nnuts!  There must\nbe a sale on candy.\nThere are lines out\nthe the door.  Oh,\nit's a sale on\ngarlic.  That's\nweird.");
				if (!(items & ITEM_GARLIC))
					printf("\nA guy runs to his\ncar, drops some\ngarlic, and drives\noff.");
				#elif COLUMNS == 40
				printf("\nThe supermarket parking lot is nuts!\nThere must be a sale on candy.  There\nare lines out the the door.  Oh,\nit's a sale on garlic.  That's weird.");
				if (!(items & ITEM_GARLIC))
					printf("\nA guy runs to his car, drops some\ngarlic, and drives off.");
				#else
				printf("\nThe supermarket parking lot is nuts!  There must be a sale on candy.  There are\nlines out the the door.  Oh, it's a sale on garlic.  That's weird.");
				if (!(items & ITEM_GARLIC))
					printf("\nA guy runs to his car, drops some garlic, and drives off.");
				#endif
				break;
			case 'e':
				Location3();
				return;
			case 's':
				Location6();
				return;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Church, top right corner of the map, east of supermarket, north of cemetery */
void Location3() {
	exits = EXIT_SOUTH | EXIT_WEST;
	player = 3;
	UpdateAI();
	if (isGameOver) return;
	printf("\nST. MARY'S CATHEDRAL");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
			case 'e':
				printf("\nCan't go that way.");
				break;
			case 'w':
				Location2();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\n\"Is anyone there?\"\nyou whisper,\nlooking around\nuneasily.  A woman\nlaughs in the\ndistance.\nIt's her!  Run!");
				else {
					printf("\n\"Bless you!\" says\nthe priest,\ncrossing himself.\n\"You're looking for\na vampire?  I can't\nsay anything\nofficially, but\nI've heard... the\nstories are true.\nA young man who\nused to attend mass\nhere went\nmissing... I've\nalready said more\nthan I should.");
					WaitForReturn();
					printf("\nBut I will say this:\nI've often heard\nvampires hate holy\nthings.  As a boy I\nplayed a video game\nwhere you used holy\nwater as a weapon\n(not that I'd\nrecommend that),\nbut if you can find\na crucifix, it\nmight help.\"");
				}
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\n\"Is anyone there?\" you whisper, looking\naround uneasily.  A woman laughs in the\ndistance.  It's her!  Run!");
				else printf("\n\"Bless you!\" says the priest,\ncrossing himself.  \"You're looking for\na vampire?  I can't say anything\nofficially, but I've heard... the\nstories are true.  A young man who\nused to attend mass here went\nmissing... I've already said more than\nI should.   But I will say this: I've\noften heard vampires hate holy things.\nAs a boy I played a video game where\nyou used holy water as a weapon (not\nthat I'd recommend that), but if you\ncan find a crucifix, it might help.\"");
				#else
				if (vampire > 7)
					printf("\n\"Is anyone there?\" you whisper, looking around uneasily.  A woman laughs in the\ndistance.  It's her!  Run!");
				else printf("\n\"Bless you!\" says the priest, crossing himself.  \"You're looking for a vampire?\nI can't say anything officially, but I've heard... the stories are true.  A\nyoung man who used to attend mass here went missing... I've already said more\nthan I should.   But I will say this: I've often heard vampires hate holy\nthings.  As a boy I played a video game where you used holy water as a weapon\n(not that I'd recommend that), but if you can find a crucifix, it might help.\"");
				#endif
				break;
			case 'g':
				if (vampire <= 7 && !(items & ITEM_CRUCIFIX)) {
					items |= ITEM_CRUCIFIX;
					printf("\nYou grab the crucifix.");
				}
				else printf("\nNothing here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nThe towering spires\nand ornately carved\ngargoyles loom\nabove you.  At\nnight, it looks\nlike the kind of\nplace you would see\nin a scary movie.");
				else {
					printf("\nIn front of you is\na huge stone\nbuilding that\nreminds you of a\ncastle in a horror\nmovie.  You step\ninside to rest a\nbit.  It's\nbeautiful, all\nstained glass\nwindows and marble\nstatues.  A priest\nsits in a pew,\nstudying a book.");
					if (!(items & ITEM_CRUCIFIX))
						printf("\nYou see a\ncrucifix on the pew\nin front of you.");
				}
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nThe towering spires and ornately carved\ngargoyles loom above you.  At night, it\nlooks like the kind of place you would\nsee in a scary movie.");
				else {
					printf("\nIn front of you is a huge stone\nbuilding that reminds you of a castle\nin a horror movie.  You step inside to\nrest a bit.  It's beautiful, all\nstained glass windows and marble\nstatues.  A priest sits in a pew,\nstudying a book.");
					if (!(items & ITEM_CRUCIFIX))
						printf("\nYou see a crucifix on the pew in front\nof you.");
				}
				#else
				if (vampire > 7)
					printf("\nThe towering spires and ornately carved gargoyles loom above you.  At night, it\nlooks like the kind of place you would see in a scary movie.");
				else {
					printf("\nIn front of you is a huge stone building that reminds you of a castle in a\nhorror movie You step inside to rest a bit.  It's beautiful, all stained glass\nwindows and marble statues.  A priest sits in a pew, studying a book.");
					if (!(items & ITEM_CRUCIFIX))
						printf("\nYou see a crucifix on the pew in front of you.");
				}
				#endif
				break;
			case 's':
				Location7();
				return;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Fire hall, south of hiking trail */
void Location4() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_EAST;
	player = 4;
	UpdateAI();
	if (isGameOver) return;
	printf("\nLOWLAND FIRE HALL");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location0();
				return;
			case 'w':
				printf("\nCan't go that way.");
				break;
			case 'e':
				Location5();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\n\"Seriously?\" she\nlaughs, \"You\nthought I was a\nREAL vampire? \nYou're nuts!\"");
				else printf("\n\"Don't tell anyone\nI said this,\" says\na fireman, \"but\nwe've been super\nbusy looking for\nmissing people.\nWe got a call from\na lady whose\nhusband was\nattacked.  I don't\nknow who or what it\nis, but it's weird.\nWe're Fire &\nRescue, not the\ndang Ghostbusters!\nAnd now when I\nfinally get a break\nthey got us setting\nup for a party.\nSheesh!\"");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\n\"Seriously?\" she laughs, \"You\nthought I was a REAL vampire?  You're\nnuts!\"");
				else printf("\n\"Don't tell anyone I said this,\" says a\nfireman, \"but we've been super busy\nlooking for missing people.  We got a\ncall from a lady whose husband was\nattacked.  I don't know who or what it\nis, but it's weird. We're Fire &\nRescue, not the dang Ghostbusters!\nAnd now when I finally get a break they\ngot us setting up for a party.\nSheesh!\"");
				#else
				if (vampire > 7)
					printf("\n\"Seriously?\" she laughs, \"You thought I was a REAL vampire?  You're nuts!\"");
				else printf("\n\"Don't tell anyone I said this,\" says a fireman, \"but we've been super busy\nlooking for missing people.  We got a call from a lady whose husband was\nattacked.  I don't know who or what it is, but it's weird. We're Fire & Rescue,\nnot the dang Ghostbusters!  And now when I finally get a break they got us\nsetting up for a party.  Sheesh!\"");
				#endif
				break;
			case 'g':
				printf("\nYou grab a cup of cider.\nMmmm!");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nThe Halloween party\nis going on.  Kids\nwalk through a\nhaunted house, and\na monster greets\nguests with cider\nand doughnuts.\nWhoa, is that a\nvampire?!");
				else printf("\nThe garage doors\nare open, and\npeople are putting\nup decorations like\npaper bats, rubber\nspiders, and\nglowing orange\nlights.  Two guys\nlug a cauldron as\nbig as a bathtub,\nand a lady hangs\nlong black ribbons\nover a door.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nThe Halloween party is going on.  Kids\nwalk through a haunted house, and a\nmonster greets guests with cider and\ndoughnuts.  Whoa, is that a vampire?!");
				else printf("\nThe garage doors are open, and people\nare putting up decorations like paper\nbats, rubber spiders, and glowing\norange lights.  Two guys lug a cauldron\nas big as a bathtub, and a lady hangs\nlong black ribbons over a door.");
				#else
				if (vampire > 7)
					printf("\nThe Halloween party is going on.  Kids walk through a haunted house, and a\nmonster greets guests with cider and doughnuts.  Whoa, is that a vampire?!");
				else printf("\nThe garage doors are open, and people are putting up decorations like paper\nbats, rubber spiders, and glowing orange lights.  Two guys lug a cauldron as\nbig as a bathtub, and a lady hangs long black ribbons over a door.");
				#endif
				break;
			case 's':
				Location8();
				return;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Taco shop */
void Location5() {
	uint8_t tacos = 0;
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_EAST | EXIT_WEST;
	player = 5;
	UpdateAI();
	if (isGameOver) return;
	printf("\nNIKO'S TACOS");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location1();
				return;
			case 'w':
				Location4();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nIt's like her voice\nis in your head!\n\"Keep running...\"!");
				else {
					printf("\n\"I'm telling you,\"\nshe says,\n\"something weird\nis going on.  That\nkid down the street\nswears a vampire\ngot his mom. Then\nthere's my boss;\nshe said it got\nher husband.  And\nthere's a run on\ngarlic at the\nFresh-Mart.\"");
					WaitForReturn();
					printf("\n\"Rumors,\" he\nlaughs, \"the kid's\nprobably messing\nwith you, your boss\nis a drunk and\ngarlic makes great\nItalian food.\"");
				}
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nIt's like her voice is in your head!\n\"Keep running...\"!");
				else printf("\n\"I'm telling you,\" she says,\n\"something weird is going on.  That\nkid down the street swears a vampire\ngot his mom. Then there's my boss; she\nsaid it got her husband.  And there's a\nrun on garlic at the Fresh-Mart.\"\n\n\"Rumors,\" he laughs, \"the kid's\nprobably messing with you, your boss is\na drunk and garlic makes great Italian\nfood.\"\n\n\"Yeah, but our neighbor?\" she insists,\n\"he says there's a ghost in the \ncemetery warning people!\"\n\n\"Honey, the guy's crazy!\" he laughs, \"I\nmean come on, he took apart his camping\ntent so he could get a wooden stake.\nOh, steak, should have gotten that.\"");
				#else
				if (vampire > 7)
					printf("\nIt's like her voice is in your head!  \"Keep running...\"!");
				else printf("\n\"I'm telling you,\" she says, \"something weird is going on.  That kid down\nthe street swears a vampire got his mom. Then there's my boss; she said it got\nher husband.  And there's a run on garlic at the Fresh-Mart.\"\n\n\"Rumors,\" he laughs, \"the kid's probably messing with you, your boss is a drunk\nand garlic makes great Italian food.\"\n\n\"Yeah, but our neighbor?\" she insists, \"he says there's a ghost in the cemetery\nwarning people!\"\n\n\"Honey, the guy's crazy!\" he laughs, \"I mean come on, he took apart his camping\ntent so he could get a wooden stake.  Oh, steak, should have gotten that.\"");
				#endif
				break;
			case 'g':
				if (vampire > 7)
					printf("\nNothing here");
				else {
					tacos++;
					if (tacos >= 13)
						printf("\n%d tacos! If the vampire gets you, she\nwill be sucking salsa instead of blood!", tacos);
					else if (tacos == 0)	/* tacos was 255, but it's unsigned, so it's 0 now */
						printf("\nYou run to the restroom.\nCool, just opened up room for more!");
					else printf("\nYou grab a taco.  Yum!");
				}
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nThe taco shop is\nclosed, and at this\ntime of night it\nsmells like beer.");
				else printf("\nTwo guys make tacos\nat a buffet.  A man\nand his wife are\nenjoying a nice\nmeal; the woman has\na guide dog, and\nthe man has a\nhumongous burrito\nand four tacos.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nThe taco shop is closed, and at this\ntime of night it smells like beer.");
				else printf("\nTwo guys make tacos at a buffet.  A man\nand his wife are enjoying a nice meal;\nthe woman has a guide dog, and the man\nhas a humongous burrito and four tacos.");
				#else
				if (vampire > 7)
					printf("\nThe taco shop is closed, and at this time of night it smells like beer.");
				else printf("\nTwo guys make tacos at a buffet.  A man and his wife are enjoying a nice meal;\nthe woman has a guide dog, and the man has a humongous burrito and four tacos.");
				#endif
				break;
			case 'e':
				Location6();
				return;
			case 's':
				Location9();
				return;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Library */
void Location6() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_EAST | EXIT_WEST;
	player = 6;
	UpdateAI();
	if (isGameOver) return;
	printf("\nLIBRARY");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location2();
				return;
			case 's':
				LocationA();
				return;
			case 'w':
				Location5();
				return;
			case 'e':
				Location7();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nYou look around...\nno one is here!?");
				else if (items & ITEM_BIBLE)
					printf("\n\"Thank you so much\nfor finding my\nring!  I'm sorry I\ncan't do more to\nhelp you.\"");
				else if (items & ITEM_RING) {
					printf("\n\"You found it!\" the\nlibrarian shouts,\nmaking everyone\nstare.  \"Thank you!\nOh, by the way...\"\nand here her voice\nsoftens, \"please\ncome with me.\"\nYou follow her into\nher office, and she\ncloses the door.");
					WaitForReturn();
					printf("\n\"The vampire is\nreal! I saw her!\"\nshe says.  \"Last\nnight she attacked\nme when I was out\nlooking for my\nring.  But then, my\nBible fell out of\nmy pocket, and she\njust... flew away!\nI think the Bible\nscares her like she\nscares us.  Here,\nyou can have my\nspare.\"");
					items |= ITEM_BIBLE;
					items &= ~ITEM_RING;
				}
				else printf("\n\"Hello,\" the\nlibrarian smiles.\n\"Oh yeah, we have\nlots of books about\nvampires.  There's\nDracula, of course,\nand... oh, a real\none?  No, sorry, I\ndon't believe in\nvampires.  Hey, you\nhaven't seen a\ndiamond ring around\nhere, have you?  I\nlost it sometime\nthis morning and\ncan't find it\nanywhere!  It's my\nwedding ring and...\nno?  Okay.  Thanks\nanyway.\"");

				WaitForReturn();
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nYou look around... no one is here!?");
				else if (items & ITEM_BIBLE)
					printf("\n\"Thank you so much for finding my ring!\nI'm sorry I can't do more to help you.\"");
				else if (items & ITEM_RING) {
					printf("\n\"You found it!\" the librarian shouts,\nmaking everyone stare.  \"Thank you!\nOh, by the way...\" and here her voice\nsoftens, \"please come with me.\" You\nfollow her into her office, and she\ncloses the door.  \"The vampire is\nreal! I saw her!\" she says.  \"Last\nnight she attacked me when I was out\nlooking for my ring.  But then, my\nBible fell out of my pocket, and she\njust... flew away! I think the Bible\nscares her like she scares us.  Here,\nyou can have my spare.\"");
					items |= ITEM_BIBLE;
					items &= ~ITEM_RING;
				}
				else printf("\n\"Hello,\" the librarian smiles.  \"Oh\nyeah, we have lots of books about\nvampires.  There's Dracula, of course,\nand... oh, a real one?  No, sorry, I\ndon't believe in vampires.  Hey, you\nhaven't seen a diamond ring around\nhere, have you?  I lost it sometime\nthis morning and can't find it\nanywhere!  It's my wedding ring and...\nno?  Okay.  Thanks anyway.\"");
				#else
				if (vampire > 7)
					printf("\nYou look around... no one is here!?");
				else if (items & ITEM_BIBLE)
					printf("\n\"Thank you so much for finding my ring!  I'm sorry I can't do more to help you.\"");
				else if (items & ITEM_RING) {
					printf("\n\"You found it!\" the librarian shouts, making everyone stare.  \"Thank you!  Oh,\nby the way...\" and here her voice softens, \"please come with me.\" You follow\nher into her office, and she closes the door.  \"The vampire is real! I saw\nher!\" she says.  \"Last night she attacked me when I was out looking for my\nring.  But then, my Bible fell out of my pocket, and she just... flew away!\nI think the Bible scares her like she scares us.  Here, you can have my spare.\"");
					items |= ITEM_BIBLE;
					items &= ~ITEM_RING;
				}
				else printf("\n\"Hello,\" the librarian smiles.  \"Oh yeah, we have lots of books about vampires.\nThere's Dracula, of course, and... oh, a real one?  No, sorry, I don't believe\nin vampires.  Hey, you haven't seen a diamond ring around here, have you?  I\nlost it sometime this morning and can't find it anywhere!  It's my wedding ring\nand... no?  Okay.  Thanks anyway.\"");
				#endif
				break;
			case 'g':
				if (vampire > 7)
					printf("\nNothing to grab here.");
				#if COLUMNS == 20
				else printf("\nYou grab a book,\nread some, and put\nit down");
				#elif COLUMNS == 40
				else printf("\nYou grab a book, read some,\nand put it down");
				#else
				else printf("\nYou grab a book, read some, and put it down");
				#endif
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nYou hear her voice\nagain.  \"Come out,\ncome out wherever\nyou are...\"");
				else printf("\nA girl reads a\nstory to kids\naround a small\ntable, people use\nthe computers, and\na librarian sits at\nthe front desk.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nYou hear her voice again.  \"Come out,\ncome out wherever you are...\"");
				else printf("\nA girl reads a story to kids around a\nsmall table, people use the computers,\nand a librarian sits at the front desk.");
				#else
				if (vampire > 7)
					printf("\nYou hear her voice again.  \"Come out, come out wherever you are...\"");
				else printf("\nA girl reads a story to kids around a small table, people use the computers,\nand a librarian sits at the front desk.");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Cemetery */
void Location7() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_WEST;
	player = 7;
	UpdateAI();
	if (isGameOver) return;
	printf("\nCEMETERY");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location3();
				return;
			case 's':
				LocationB();
				return;
			case 'w':
				Location6();
				return;
			case 'e':
				printf("\nCan't go that way.");
				break;
			case 't':
				if (vampire > 7) {
					#if COLUMNS == 20
					printf("\n  \"In darkest hour\n  of evil's night,\n  Your only hope is\n  in the light.\n  If your life you\n  hope to save,\n  place the Book\n  inside her\n  grave...\"");
					WaitForReturn();
					printf("\nThe man disappears!  Was that a ghost?\nWhat was that?!  What book?  What was\nthat about light? You look around, and\ndon't see a grave that looks like it\ncould be hers.  All the women's graves\nhad names like Amy Smith and Jane\nBrown.  The vampire's grave isn't here.");
					#elif COLUMNS == 40
					printf("\n  \"In darkest hour of evil's night,\n  Your only hope is in the light.\n  If your life you wish to save,\n  place the Book inside her grave...\"\n\nThe man disappears!  Was that a ghost?\nWhat was that?!  What book?  What was\nthat about light? You look around, and\ndon't see a grave that looks like it\ncould be hers.  All the women's graves\nhad names like Amy Smith and Jane\nBrown.  The vampire's grave isn't here.");
					#else
					printf("\n    \"In darkest hour of evil's night, Your only hope is in the light.\n    If your life you wish to save, place the Book inside her grave...\"\n\nThe man disappears!  Was that a ghost?  What was that?!  What book?  What was\nthat about light? You look around, and don't see a grave that looks like it\ncould be hers.  All the women's graves had names like Amy Smith and Jane Brown.\nThe vampire's grave isn't here.");
					#endif
				}
				else printf("\nNobody here.");
				break;
			case 'g':
				printf("\nNothing to grab here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nThe full moon\nshines on the\ntombstones, making\nthe place even\nspookier than\nusual.  A man with\nan old-fashioned\nlantern stands\nwatch.");
				else printf("\nYou quietly walk\nacross the rows of\ntombstones.  Some\nof them are\nancient, or at\nleast so old you\ncan't read them.\nThere's no one else\naround.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nThe full moon shines on the tombstones,\nmaking the place even spookier than\nusual.  A man with an old-fashioned\nlantern stands watch.");
				else printf("\nYou quietly walk across the rows of\ntombstones.  Some of them are ancient,\nor at least so old you can't read them.\nThere's no one else around.");
				#else
				if (vampire > 7)
					printf("\nThe full moon shines on the tombstones, making the place even spookier than\nusual.  A man with an old-fashioned lantern stands watch.");
				else printf("\nYou quietly walk across the rows of tombstones.  Some of them are ancient, or\nat least so old you can't read them.  There's no one else around.");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** W. Putnam */
void Location8() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_EAST;
	player = 8;
	UpdateAI();
	if (isGameOver) return;
	printf("\nW PUTNAM ST.");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location4();
				return;
			case 's':
				LocationC();
				return;
			case 'w':
				printf("\nCan't go that way.");
				break;
			case 'e':
				Location9();
				break;
			case 't':
				printf("\nNobody here.");
				break;
			case 'g':
				if (!(items & ITEM_PUMPKIN)) {
					items |= ITEM_PUMPKIN;
					#if COLUMNS == 20
					printf("\nYou grab the\njack-o-lantern.");
					#else
					printf("\nYou grab the jack-o-lantern.");
					#endif
				}
				else printf("\nNothing to grab here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7) {
					if (!(items & ITEM_PUMPKIN))
						printf("\nThere are no lights\nhere.  Did you hear\nsomething?");
					else printf("\nIn the orange light\nof your pumpkin,\nyou look around.\nIt's so quiet!\nWhere are all the\ntrick-or-treaters?\nAll the houses are\ndark, too!");
				}
				else {
					printf("\nYou walk down the\nstreet, looking at\nall the cool\ndecorations.  One\nhouse has a\nscarecrow and corn\nstalks.  Another is\ncovered in cobwebs\nand has a foam\ntombstone by the\nmailbox.");
					if (!(items & ITEM_PUMPKIN))
						printf("\nA plastic jack-o-\nlantern with a\nglowing orange\nlight sits on the\nroad.");
				}
				#elif COLUMNS == 40
				if (vampire > 7) {
					if (!(items & ITEM_PUMPKIN))
						printf("\nThere are no lights here.  Did you hear\nsomething?");
					else printf("\nIn the orange light of your pumpkin,\nyou look around.  It's so quiet!  Where\nare all the trick-or-treaters?  All\nthe houses are dark, too!");
				}
				else {
					printf("\nYou walk down the street, looking at\nall the cool decorations.  One house\nhas a scarecrow and corn stalks.\nAnother is covered in cobwebs and has a\nfoam tombstone by the mailbox.");
					if (!(items & ITEM_PUMPKIN))
						printf("\nA plastic jack-o-lantern with a glowing\norange light sits on the road.");
				}
				#else
				if (vampire > 7) {
					if (!(items & ITEM_PUMPKIN))
						printf("\nThere are no lights here.  Did you hear something?");
					else printf("\nIn the orange light of your pumpkin, you look around.  It's so quiet!  Where\nare all the trick-or-treaters?  All the houses are dark, too!");
				}
				else {
					printf("\nYou walk down the street, looking at all the cool decorations.  One house has\na scarecrow and corn stalks.  Another is covered in cobwebs and has a foam\ntombstone by the mailbox.");
					if (!(items & ITEM_PUMPKIN))
						printf("\nA plastic jack-o-lantern with a glowing orange light sits on the road.");
				}
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** E. Putnam */
void Location9() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_EAST | EXIT_WEST;
	player = 9;
	UpdateAI();
	if (isGameOver) return;
	printf("\nE PUTNAM ST.");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location5();
				return;
			case 's':
				LocationD();
				return;
			case 'w':
				Location8();
				return;
			case 'e':
				LocationA();
				break;
			case 't':
				if (vampire <= 7) {
					#if COLUMNS == 20
					printf("\n\"It's happening\nagain,\" he says.\n\"When I was young,\nI had a neighbor\nfrom a foreign\ncountry.  He told a\nfantastic story\nabout a witch who\ntried to protect\nherself from\nvampires, by making\na brew of all the\nthings they hate.");
					WaitForReturn();
					printf("\nIt worked, but not\nhow she planned.\nShe was bitten, but\nher spell didn't\nwork till after she\nbecame a vampire.\nNow things like\ngarlic don't harm\nher.  It was only a\nstory, but then\npeople started\ndisappearing - even\nthe old man.");
					WaitForReturn();
					printf("\nI think his story\nwas true.  Anyway,\nI just took apart\nmy tent to get a\nwooden stake.  I\ndoubt it'll stop\nher, but you're\nwelcome to have one\ntoo.\"");
					#elif COLUMNS == 40
					printf("\n\"It's happening again,\" he says.\n\"When I was young, I had a neighbor\nfrom a foreign country.  He told a\nfantastic story about a witch who tried\nto protect herself from vampires, by\nmaking a brew of all the things they\nhate.  It worked, but not how she\nplanned.  She was bitten, but her spell\ndidn't work till after she became a\nvampire.  Now things like garlic don't\nharm her.  It was only a story, but\nthen people started disappearing - \neven the old man.  I think his story\nwas true.  Anyway, I just took apart\nmy tent to get a wooden stake.  I doubt\nit'll stop her, but you're welcome to\nhave one too.\"");
					#else
					printf("\n\"It's happening again,\" he says.  \"When I was young, I had a neighbor from a\nforeign country.  He told a fantastic story about a witch who tried to protect\nherself from vampires, by making a brew of all the things they hate.  It\nworked, but not how she planned.  She was bitten, but her spell didn't work\ntill after she became a vampire.  Now things like garlic don't harm her.  It\nwas only a story, but then people started disappearing - even the old man.  I\nthink his story was true.  Anyway, I just took apart my tent to get a wooden\nstake.  Not sure if it'll stop her, but you're welcome to have one too.\"");
					#endif
				}
				else printf("\nNo one else here");
				break;
			case 'g':
				if (!(items & ITEM_STAKE)) {
					items |= ITEM_STAKE;
					#if COLUMNS == 20
					printf("\nYou grab a wooden stake.");
					#else
					printf("\nYou grab a wooden stake.");
					#endif
				}
				else printf("\nNothing else here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7) {
					printf("\nYou walk around the\nblock, listening to\nevery sound.  A\nblack cat walks by,\nbut you're sure\nthere's something\nelse.  Or maybe\nyou're just getting\nspooked.");
				}
				else printf("\nOn this road, you\njust see more\nhouses. Some are\ndecorated, some\nnot.  An old man\nsits on his front\nporch.");
				#elif COLUMNS == 40
				if (vampire > 7) {
					printf("\nYou walk around the block, listening to\nevery sound.  A black cat walks by, but\nyou're sure there's something else.  Or\nmaybe you're just getting spooked.");
				}
				else printf("\nOn this road, you just see more houses.\nSome are decorated, some not. An old\nman sits on his front porch.");
				#else
				if (vampire > 7) {
					printf("\nYou walk around the block, listening to every sound.  A black cat walks by, but\nyou're sure there's something else.  Or maybe you're just getting spooked.");
				}
				else printf("\nOn this road, you just see more houses. Some are decorated, some not. An old man sits on his front porch.");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Gym */
void LocationA() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_EAST | EXIT_WEST;
	player = 10;
	UpdateAI();
	if (isGameOver) return;
	printf("\nBIFF'S GYM");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location6();
				return;
			case 's':
				LocationE();
				return;
			case 'w':
				Location9();
				return;
			case 'e':
				LocationB();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nNo one answers, but you hear a lady laugh somewhere nearby.");
				else printf("\n\'If you're not here\nto sign up,\' he\nsays, \'get out.\'");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nNo one answers, but you hear a lady\nlaugh somewhere nearby.");
				else printf("\n\'If you're not here to sign up,\' he\nsays, \'get out.\'");
				#else
				if (vampire > 7)
					printf("\nNo one answers, but\nyou hear a lady\nlaugh somewhere\nnearby.");
				else printf("\n\'If you're not here to sign up,\' he says, \'get out.\'");
				#endif
				break;
			case 'g':
				if (!(items & ITEM_MONEY) && vampire <= 7) {
					items |= ITEM_MONEY;
					#if COLUMNS == 20
					printf("\nYou look around\ncautiously, then\ngrab the cash");
					#elif COLUMNS == 40
					printf("\nYou look around cautiously, then grab\nthe cash");
					#else
					printf("\nYou look around cautiously, then grab the cash");
					#endif
				}
				else printf("\nNothing else here");
				break;
			case 'l':
				if (vampire > 7) {
					printf("\nThe door's locked.");
				}
				else {
					#if COLUMNS == 20
					if (!(items & ITEM_MONEY) && !(items & ITEM_BULLETS))
						printf("\nOutside, you see a\n$100 bill on the\nground!  No one is\naround.");
					printf("\nYou go inside.  A\nwoman bench-presses\ntwice her weight,\nand a big guy gasps\nfor air on a\ntreadmill.  The\nowner helps a girl\nsign up.");
					#elif COLUMNS == 40
					if (!(items & ITEM_MONEY) && !(items & ITEM_BULLETS))
						printf("\nOutside, you see a $100 bill on the\nground!  No one is around.");
					printf("\nYou go inside.  A woman bench-presses\ntwice her weight, and a big guy gasps\nfor air on a treadmill.  The owner\nhelps a girl sign up.");
					#else
					if (!(items & ITEM_MONEY) && !(items & ITEM_BULLETS))
						printf("\nOutside, you see a $100 bill on the ground!  No one is around.");
					printf("\nYou go inside.  A woman bench-presses twice her weight, and a big guy gasps for\nair on a treadmill.  The owner helps a girl sign up.");
					#endif
				}
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Creek / bridge */
void LocationB() {
	exits = EXIT_NORTH | EXIT_SOUTH | EXIT_WEST;
	player = 11;
	UpdateAI();
	if (isGameOver) return;
	printf("\n16-MILE CREEK");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location7();
				return;
			case 's':
				LocationF();
				return;
			case 'w':
				LocationA();
				return;
			case 'e':
				printf("\nCan't go that way.");
				break;
			case 't':
				if (vampire > 7)
					printf("\nNo one is here");
				#if COLUMNS == 20
				else printf("\n\"Nah,\" said the\nfisherman, \"I ain't\nhad a bite all day.\"");
				#elif COLUMNS == 40
				else printf("\n\"Nah,\" said the fisherman, \"I ain't\nhad a bite all day.\"");
				#else
				else printf("\n\"Nah,\" said the fisherman, \"I ain't had a bite all day.\"");
				#endif
				break;
			case 'g':
				printf("\nNothing to grab here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nYou come to the\nbridge.  Still\nblocked off.  There\nare no lights, and\nyou hear weird\nsounds.  Probably\njust wild animals.");
				else printf("\nOn the other side\nof the plaza is a\nbridge.  There are\ncones blocking the\nway, and\nconstruction work\ngoing on the other\nside.  A guy is\nfishing.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nYou come to the bridge.  Still blocked\noff.  There are no lights, and you hear\nweird sounds.  Probably just wild\nanimals.");
				else printf("\nOn the other side of the plaza is a\nbridge.  There are cones blocking the\nway, and construction work going on the\nother side.  A guy is fishing.");
				#else
				if (vampire > 7)
					printf("\nYou come to the bridge.  Still blocked off.  There are no lights, and you hear\nweird sounds.  Probably just wild animals.");
				else printf("\nOn the other side of the plaza is a bridge.  There are cones blocking the way,\nand construction work going on the other side.  A guy is fishing.");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Vampire's house */
void LocationC() {
	if (isGameOver) return;
	exits = EXIT_NORTH | EXIT_EAST;
	player = 12;
	if (vampire > 7) {
		if (items & ITEM_BIBLE) {
			#if COLUMNS == 20
			printf("\nYou duck behind a\ncar as the vampire\nflies by.  Did she\nsee you?  You wait\na few minutes, then\nstep out.  The gate\nis wide open, so you\nsneak in.  She left\nthe front door\nopen, so you step\ninside.  The room is\npitch dark, but you\nturn on a light\nswitch.  What\nthe...?!  Is that a\ncoffin?!  Thinking\nabout all you have\nheard, you know\nwhat you have to\ndo.");
			WaitForReturn();
			printf("\nYou take a deep\nbreath, look around\none last time, and\nlift the top of the\ncoffin.\nIt's empty, so you\nthrow the Bible\ninside it and close\nthe lid.");
			WaitForReturn();
			printf("\n\"What are you\ndoing?!  Get away\nfrom there!\" The\nvampire shouts,\ncharging into\nthe room.  She\nthrows you against\na wall, opens the\ncoffin, and falls\nover backwards!\nGasping for air,\nshe pulls herself\noff the ground.\n\"You...!  Take it\nout!  Take it out\nNOW!\"\n");
			WaitForReturn();
			printf("\nYou try to run, but\nfind you can't\nmove.  \"Take it out\nor I'll... what...\nis...\nhappening...?!\"\nSuddenly you find\nyou can move again\n- she can't!\nThrough the window\nin the front door,\nyou can see a single\nray of light peeking\nout from behind her\nfront gate, touching\nher forehead.  You\nrun to the windows,\nripping off the\ncurtains.");
			WaitForReturn();
			printf("\n\"No, stop!\" she\nyells,\n\"NOOOOOOOO!!!!!!\"\nAs the sun rises,\nthe room is flooded\nwith brilliant\norange light.  The\nvampire screams,\nthen dissolves into\na heap of ash.\nCatching your\nbreath, you realize\nyour adventure has\nfinally ended.\nThis evil\ncreature's days of\nhunting the\ninnocent are over.\nNot exactly a happy\nending, but you\nsurvived...");
			WaitForReturn();
			printf("\n\"You did it!\"\nYou hear someone\nsay, \"you\ndestroyed her!\nWe're free!\"\nYou watch as two\npeople step out\nfrom another room.\n"She was keeping us\nhere, keeping us\nalive just so she\ncould keep\ndrinking...\" said\na man, holding back\ntears.  \"Thank\nyou!  God bless\nyou!  I've got to\nget back to my\nwife!\"");
			WaitForReturn();
			printf("\n\"And my son!\"\nsaid a lady, \"he\nprobably thinks I\nleft him!  Oh thank\nyou so much!  Come\non, let's all go\nhome!\"\nTHE END");
			WaitForReturn();
			#elif COLUMNS == 40
			printf("\nYou duck behind a car as the vampire\nflies by.  Did she see you?  You wait a\nfew minutes, then step out.  The gate\nis wide open, so you sneak in.  She\nleft the front door open, so you step\ninside.  The room is pitch dark, but\nyou turn on a light switch.  What\nthe...?!  Is that a coffin?!  Thinking\nabout all you have heard, you know what\nyou have to do.  You take a deep breath,\nlook around one last time, and lift the\ntop of the coffin.  It's empty, so you\nthrow the Bible inside and close it.");
			WaitForReturn();
			printf("\n\"What are you doing?!  Get away from\nthere!\" The vampire shouts, charging\ninto the room.  She throws you against\na wall, opens the coffin, and falls\nover backwards!  Gasping for air, she\npulls herself off the ground.\n\"You...!  Take it out!  Take it out\nNOW!\"\nYou try to run, but you can't move!");
			WaitForReturn();
			printf("\n\"Take it out or I'll... what... is...\nhappening...?!\" Suddenly you find you\ncan move again - she can't!  Through\nthe window in the front door, you can\nsee a single ray of light peeking out\nfrom behind her front gate, touching\nher forehead.  You run to the windows,\nripping off the curtains.\n\"No, stop!\" she yells,\n\"NOOOOOOOO!!!!!!\"\nAs the sun rises, the room is flooded\nwith brilliant orange light.  The\nvampire screams, then dissolves into a\nheap of ash.  Catching your breath, you\nrealize your adventure has finally\nended.  This evil creature's days of\nhunting the innocent are over.  Not\nexactly a happy ending, but you\nsurvived...");
			WaitForReturn();
			printf("\n\"You did it!\"  You hear someone say,\n\"you destroyed her!  We're free!\"\nYou watch as two people step out from\nanother room.  \"She was keeping us\nhere, keeping us alive just so she\ncould keep drinking...\" said a man,\nholding back tears.  \"Thank you!  God\nbless you!  I've got to get back to my\nwife!\"\n\"And my son!\" said a lady, \"he\nprobably thinks I left him!  Oh thank\nyou so much!  Come on, let's go home!\"\nTHE END");
			WaitForReturn();
			#else
			printf("\nYYou duck behind a car as the vampire flies by.  Did she see you?  You wait a\nfew minutes, then step out.  The gate is wide open, so you sneak in.  She left\nthe front door open, so you step inside.  The room is pitch dark, but you turn\non a light switch.  What the...?!  Is that a coffin?!  Thinking about all you\nhave heard, you know what you have to do.  You take a deep breath, look around\none last time, and lift the top of the coffin.  It's empty, so you throw the\nBible inside it and close the lid.");
			WaitForReturn();
			printf("\n\"What are you doing?!  Get away from there!\" The vampire shouts, charging into\nthe room.  She throws you against a wall, opens the coffin, and falls over\nbackwards!  Gasping for air, she pulls herself off the ground.  \"You...!  Take\nit out!  Take it out NOW!\"\nYou try to run, but find you can't move.  \"Take it out or I'll... what... is...\nhappening...?!\" Suddenly you find you can move again - she can't!  Through the\nwindow in the front door, you can see a single ray of light peeking out from\nbehind her front gate, touching her forehead.  You run to the windows, ripping\noff the curtains.\n\"No, stop!\" she yells, \"NOOOOOOOO!!!!!!\"\nAs the sun rises, the room is flooded with brilliant orange light.  The vampire\nscreams, then dissolves into a heap of ash.  Catching your breath, you realize\nyour adventure has finally ended.  This evil creature's days of hunting the\ninnocent are over.  Not exactly a happy ending, but you survived...");
			WaitForReturn();
			printf("\n\"You did it!\"  You hear someone say, \"you destroyed her!  We're free!\"\nYou watch as two people step out from another room.  \"She was keeping us here,\nkeeping us alive just so she could keep drinking...\" said a man, holding back\ntears.  \"Thank you!  God bless you!  I've got to get back to my wife!\"\n\"And my son!\" said a lady, \"he probably thinks I left him!  Oh thank you so\nmuch!  Come on, let's all go home!\"\nTHE END");
			WaitForReturn();
			#endif
			isGameOver = true;
			printf("\nPress Enter/Return to go\nback to the main menu.");
			getchar();
			return;
		}
		
		/* If it gets here, it's night and the player doesn't have the Bible... uh-oh! */
		#if COLUMNS == 20
		printf("\nYou're standing in\nfront of a huge\nmansion.  The gates\ncreak open as you\nwalk towards them.\nYou carefully step\nthrough, trying not\nto make a sound.\nBut as soon as\nyou're inside, the\ngates slam behind\nyou!  You run back\nto find them\nlocked!  You turn\naround as the front\ndoor of the mansion\nswings open.  A\nlady steps out and\nthe door closes\nbehind her.\nWith a flick of her\nwrist, you are\nflung down to the\nfoot of the\nstaircase!");
		WaitForReturn();
		printf("\n\"Welcome to my new\nhome,\" she says, \"I\nhope you like it\nhere, because it's\nthe last place you\nwill ever see!\"");
		WaitForReturn();
		#elif COLUMNS == 40
		printf("\nYou're standing in front of a huge\nmansion.  The gates creak open as you\nwalk towards them.  You carefully step\nthrough, trying not to make a sound.\nBut as soon as you're inside, the gates\nslam behind you!  You run back to find\nthem locked!  You turn around as the\nfront door of the mansion swings open.\nA lady steps out and the door closes\nbehind her.  With a flick of her wrist,\nyou are flung down to the foot of the\nstaircase!\n\"Welcome to my new home,\" she says,\n\"I hope you like it here, because it's\nthe last place you will ever see!\"");
		#else
		printf("\nYou're standing in front of a huge mansion.  The gates creak open as you walk\ntowards them.  You carefully step through, trying not to make a sound.  But as\nsoon as you're inside, the gates slam behind you!  You run back to find them\nlocked!  You turn around as the front door of the mansion swings open.  A lady\nsteps out and the door closes behind her.  With a flick of her wrist, you are\nflung down to the foot of the staircase!\n\"Welcome to my new home,\" she says, \"I hope you like it here, because it's the\nlast place you will ever see!\"");
		#endif
		GameOver();
		return;
	}
	
	/* If it gets here, it's like any other location */
	UpdateAI();
	if (isGameOver) return;
	printf("\nMATTHEWS MANSION.");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location8();
				return;
			case 'w':
			case 's':
				printf("\nCan't go that way.");
				break;
			case 'e':
				LocationD();
				return;
			case 't':
				printf("\nNo one is here.");
				break;
			case 'g':
				printf("\nNothing to grab here.");
				break;
			case 'l':
				#if COLUMNS == 20
				printf("\nYou walk down\nanother row of\nhouses and come to\nanother corner.\nHere, one big house\ntakes up half the\nstreet.  It's old\nand a bit spooky,\nbut not abandoned\nor anything.  It's\nactually a very\nnice place, with a\nfancy iron gate and\na little tower like\na castle.  If this\nis where the\nvampire lives, she\nmust be swimming in\nmoney.");
				WaitForReturn();
				#elif COLUMNS == 40
				printf("\nYou walk down another row of houses and\ncome to another corner.  Here, one big\nhouse takes up half the street.  It's\nold and a bit spooky, but not abandoned\nor anything.  It's actually a very nice\nplace, with a fancy iron gate and a\nlittle tower like a castle.  If this is\nwhere the vampire lives, she must be\nswimming in money!");
				#else
				printf("\nYou walk down another row of houses and come to another corner.  Here, one big\nhouse takes up half the street.  It's old and a bit spooky, but not abandoned\nor anything.  It's actually a very nice place, with a fancy iron gate and a\nlittle tower like a castle.  If this is where the vampire lives, she must be\nswimming in money!");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Wellington Ave. */
void LocationD() {
	exits = EXIT_NORTH | EXIT_EAST | EXIT_WEST;
	player = 13;
	UpdateAI();
	if (isGameOver) return;
	printf("\nWELLINGTON AVE.");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				Location9();
				return;
			case 's':
				printf("\nCan't go that way.");
				break;
			case 'w':
				LocationC();
				return;
			case 'e':
				LocationE();
				return;
			case 't':
				#if COLUMNS == 20
				if (vampire <= 7)
					printf("\n\"I'm coming...\"\nyou hear a whisper.");
				else printf("\n\"Out of the way!\"\na kid shouts.");
				#else
				if (vampire > 7)
					printf("\n\"I'm coming...\" you hear a whisper.");
				else printf("\n\"Out of the way!\" a kid shouts.");
				#endif
				break;
			case 'g':
				printf("\nNothing to grab here.");
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nIt's dark and quiet\nhere.  You can't\nsee much.");
				else printf("\nTwo kids fly down\nthe street on\nskates.  \"Come on,\"\nsays one, \"The guys\nare already at the\nschool.  I\nwant to\nplay goalie this\ntime!\"");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nIt's dark and quiet here.\nYou can't see much.");
				else printf("\nTwo kids fly down the street on skates.\n\"Come on,\" says one, \"The guys are\nalready at the school.  I want to play\ngoalie this time!\"");
				#else
				if (vampire > 7)
					printf("\nIt's dark and quiet here.  You can't see much.");
				else printf("\nTwo kids fly down the street on skates.  \"Come on,\" says one, \"The guys are already at the school.  I want to play goalie this time!\"");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Bar */
void LocationE() {
	exits = EXIT_NORTH | EXIT_EAST | EXIT_WEST;
	player = 14;
	UpdateAI();
	if (isGameOver) return;
	printf("\nTHE DRUNK SKUNK");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				LocationA();
				return;
			case 's':
				printf("\nCan't go that way.");
				break;
			case 'w':
				LocationD();
				return;
			case 'e':
				LocationF();
				return;
			case 't':
				#if COLUMNS == 20
				printf("\n\"Oh, she's out\nthere,\" she says,\ndowning another\ndrink.  \"I've seen\nher.  One night, a\nbunch of bats flew\nout of our\nfireplace, and I\nswear... they\nturned into the\nvampire!  She\nsnatched him away\nin a second, then\ncame for me.");
				WaitForReturn();
				printf("\nI ran to the\nkitchen and got\ngarlic, but she\nkept coming, till\nshe bumped into his\nold Bible.  Then\nshe freaked and\nvanished.  I don't\nget it, but now I'm\nwalking around with\na Bible all the\ntime.  If I were\nyou, I'd get one.\nI just wish...\"");
				#elif COLUMNS == 40
				printf("\n\"Oh, she's real,\" she says, downing\nanother drink.  \"I've seen her.  One\nnight, a bunch of bats flew out of our\nfireplace, and I swear... they turned\ninto the vampire!  She snatched him\naway in a second, then came for me.  I\nran to the kitchen and got garlic, but\nshe kept coming, till she bumped into\nhis old Bible.  Then she freaked and\nvanished.  I don't get it, but now I'm\nwalking around with a Bible all the\ntime.  If I were you, I'd get one.  I\njust wish...\"");
				#else
				printf("\n\"Oh, she's real,\" she says, downing another drink.  \"I've seen her.  One\nnight, a bunch of bats flew out of our fireplace, and I swear... they turned\ninto the vampire!  She snatched him away in a second, then came for me.  I ran\nto the kitchen and got garlic, but she kept coming, till she bumped into his\nold Bible.  Then she freaked and vanished.  I don't get it, but now I'm walking\naround with a Bible all the time.  If I were you, I'd get one.  I just wish...\"");
				#endif
				break;
			case 'g':
				printf("\nYou grab a cold drink.");
				break;
			case 'l':
				#if COLUMNS == 20
				printf("\nIt doesn't look\ngreat, but smells\ndelicious.  A\nserver brings a\nplate of wings to\nsome guys watching\nfootball.  In the\ncorner, a young\nwoman drinks small\nglasses so fast you'd\nthink they were\nfull of water.");
				#elif COLUMNS == 40
				printf("\nIt doesn't look great, but smells\ndelicious.  A server brings a plate of\nwings to some guys watching football.\nIn the corner, a young woman drinks\nsmall glasses so fast you'd think they\nwere full of water.");
				#else
				printf("\nIt doesn't look great, but smells delicious.  A server brings a plate of wings\nto some guys watching football.  In the corner, a young woman drinks small\nglasses so fast you'd think they were full of water.");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/** Pawn Shop */
void LocationF() {
	exits = EXIT_NORTH | EXIT_WEST;
	player = 15;
	UpdateAI();
	if (isGameOver) return;
	printf("\nPAWN SHOP");
	while(true) {
		if (isGameOver) return;
		switch(input[0]) {

			case 'n':
				LocationB();
				return;
			case 's':
			case 'e':
				printf("\nCan't go that way.");
				break;
			case 'w':
				LocationE();
				return;
			case 't':
				if (vampire > 7)
					printf("\nNo one else here");
				#if COLUMNS == 20
				else if (items & ITEM_MONEY)
					printf("\n\"Oh, you got $100?\nYou're in luck!\"\nThe shop owner\ngrabs a handgun\nfrom under the\ncounter and reaches\ninto a jar.  \"These\nare silver\nbullets,\" he says.\n\"I've been selling\nthem... let's say,\nquietly... ever\nsince the vampire\nattacks started.\nYou can have a gun\nand ammo for $100.\"");
				else printf("\n\"Well, I think we\ngot vampire movies,\nbut that's about\nit,\" says the shop\nowner.  \"Try again\nlater.\"");
				#elif COLUMNS == 40
				else if (items & ITEM_MONEY)
					printf("\n\"Oh, you got $100?  You're in luck!\"\nThe shop owner grabs a handgun from\nunder the counter and reaches into a\njar.  \"These are silver bullets,\" he\nsays.  \"I've been selling them... let's\nsay, quietly... ever since the vampire\nattacks started.  You can have a gun\nand ammo for $100.\"");
				else printf("\n\"Well, I think we got vampire movies,\nbut that's about it,\" says the shop\nowner.  \"Try again later.\"");
				#else
				else if (items & ITEM_MONEY)
					printf("\n\"Oh, you got $100?  You're in luck!\"  The shop owner grabs a handgun from under\nthe counter and reaches into a jar.  \"These are silver bullets,\" he says.\n\"I've been selling them... let's say, quietly... ever since the vampire attacks\nstarted.  You can have a gun and ammo for $100.\"");
				else printf("\n\"Well, I think we got vampire movies, but that's about it,\" says the shop\nowner.  \"Try again later.\"");
				#endif
				break;
			case 'g':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nNothing to grab\nhere.");
				else if (items & ITEM_MONEY) {
					items &= ~ITEM_MONEY;
					items |= ITEM_BULLETS;
					printf("\nYou pay him and\ngrab the gun and\nsilver bullets.\nIt's not legal, but\nthe only one you\nwant to shoot is\nalready dead.");
				}
				else printf("\n\"Hey, you gotta pay\nfor that!\"");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nNothing to grab here.");
				else if (items & ITEM_MONEY) {
					items &= ~ITEM_MONEY;
					items |= ITEM_BULLETS;
					printf("\nYou pay him and grab the gun and silver\nbullets.  It's not legal, but the only\none you want to shoot is already dead.");
				}
				else printf("\n\"Hey, you gotta pay for that!\"");
				#else
				if (vampire > 7)
					printf("\nNothing to grab here.");
				else if (items & ITEM_MONEY) {
					items &= ~ITEM_MONEY;
					items |= ITEM_BULLETS;
					printf("\nYou pay him and grab the gun and silver bullets.  It's not legal, but the only\none you want to shoot is already dead.");
				}
				else printf("\n\"Hey, you gotta pay for that!\"");
				#endif
				break;
			case 'l':
				#if COLUMNS == 20
				if (vampire > 7)
					printf("\nThe door is locked.\nSomething moves\nnearby.  Is it her?\nBetter keep moving.");
				else printf("\nThe place is a\nmess, but there's\nall kinds of cool\nstuff here; chess\nsets, a baseball\nbat, old computers,\nand a shelf full of\nmovies.");
				#elif COLUMNS == 40
				if (vampire > 7)
					printf("\nThe door is locked.  Something moves\nnearby.  Is it her?  Better keep\nmoving.");
				else printf("\nThe place is a mess, but there's all\nkinds of cool stuff here; chess sets,\na baseball bat, old computers, and a\nshelf full of movies.");
				#else
				if (vampire > 7)
					printf("\nThe door is locked.  Something moves nearby.  Is it her?  Better keep moving.");
				else printf("\nThe place is a mess, but there's all kinds of cool stuff here; chess sets, a\nbaseball bat, old computers, and a shelf full of movies.");
				#endif
				break;
		}
		Prompt(); if (isGameOver) return;
	}
}

/**
 * Gets info from the player's password
 * @param[in] A character the player typed
 * @returns A number from 0 to 15, or 255 if the character is invalid
 * @remarks A "nybble" is half a byte (4 bits).  By working with data
 * at the bit level, you can save space on things like the player's
 * inventory, location etc.  For example, this game has 8 inventory
 * items; instead of 8 Boolean (true/false) variables, which would
 * take 8 bytes, I can fit all 8 into a single byte.
 */
uint8_t ReadNybble(char ch) {
	switch(ch) {
		case '0': return 0;
		case '1': return 1;
		case '2': return 2;
		case '3': return 3;
		case '4': return 4;
		case '5': return 5;
		case '6': return 6;
		case '7': return 7;
		case '8': return 8;
		case '9': return 9;
		case 'a': case 'A': return 10;
		case 'b': case 'B': return 11;
		case 'c': case 'C': return 12;
		case 'd': case 'D': return 13;
		case 'e': case 'E': return 14;
		case 'f': case 'F': return 15;
	}
	return 255;
}

/** Handles option 2 on the main menu ("enter password") */
void Password() {
	uint8_t temp;
	printf("\r\n\nEnter password:  ");
	memset(input, 8, 8);
	#ifdef APPLE2
	Input();
	#else
	fgets(input, 8, stdin);
	#endif
	temp = ReadNybble(input[0]);
	if (temp == 255) {
		printf("Invalid password.\r\n");
		return;
	}
	player = temp;
	temp = ReadNybble(input[1]);
	if (temp == 255) {
		printf("Invalid password.\r\n");
		return;
	}
	items = temp << 4;
	temp = ReadNybble(input[2]);
	if (temp == 255) {
		printf("Invalid password.\r\n");
		return;
	}
	items += temp;
	StartGame();
}

/** Prompts the user to type something and checks to make sure it's a valid command */
void Prompt() {
	printf("\n\n");
	#ifdef APPLE2
	Input();
	#else
	fgets(input, 8, stdin);
	#endif
	input[0] = tolower(input[0]);
	switch(input[0]) {
		case 'x': Exits(); return;
		case 'c': Credits(); return;
		case 'i': Inventory(); return;
		case 'h': Help(); return;
		case 'q':
			printf("\nPassword: %x%02x\n\nPress ENTER/RETURN to exit.", player, items);
			getchar();
			exit(0);
			return;
		case 'n':
		case 's':
		case 'e':
		case 'w':
		case 't':
		case 'l':
		case 'g':
			return;
	}
	printf("I can't do that.  For help, type H.");
}

/**
 * Figures out which row the player or vampire is in
 * @param[in] A location (number from 0 to 15)
 * @returns The row (a number from 0 to 3)
 */
uint8_t Row(uint8_t n) {
	if (n < 4) return 0;
	if (n < 8) return 1;
	if (n < 12) return 2;
	return 3;
}

/** Shows the player's password when a "game over" has occurred */
void ShowPassword() {
	printf("\nPassword: %x%02x\n\nPress ENTER/RETURN to go\nback to the main menu.", player, items);
	getchar();
	isGameOver = true;
}

/** Starts the game (obviously) :D */
void StartGame() {
	switch(player) {
		case 0: Location0(); return;
		case 1: Location1(); return;
		case 2: Location2(); return;
		case 3: Location3(); return;
		case 4: Location4(); return;
		case 5: Location5(); return;
		case 6: Location6(); return;
		case 7: Location7(); return;
		case 8: Location8(); return;
		case 9: Location9(); return;
		case 10: LocationA(); return;
		case 11: LocationB(); return;
		case 12: LocationC(); return;
		case 13: LocationD(); return;
		case 14: LocationE(); return;
		default: LocationF(); return;
	}
}

/** Handles the day/night mechanic and moves the vampire if night */
void UpdateAI() {
	static uint8_t timer;
	
	/*
	This is more a byte-saving measure than part of the function.
	All of the Location* functions do this, and all will eventually
	call this UpdateAI function, so it makes sense to put it here.
	*/
	input[0] = 'l';
	
	/* Break down the "vampire" variable into two parts */
	timer = vampire - (vampire >> 4) * 0x10;	/* (timer = the high byte) */
	vampire -= timer;				/* vampire = the low byte */
	
	/* If the game is over, end it */
	if (!isDay && vampire / 0x10 == player) {
		GameOver();
		return;
	}
	
	/* Update the timer */
	timer++;
	if (timer == 8) {
		if (isDay) {
			#if COLUMNS == 20
			printf("\nThe sun sets, and\nthe darkness brings\nan eerie silence...\n");
			#elif COLUMNS == 40
			printf("\nThe sun sets, and the darkness brings\nan eerie silence...\n");
			#else
			printf("\nThe sun sets, and the darkness brings an eerie silence...\n");
			#endif
			vampire = 0xC0;
		}
		else {
			#if COLUMNS == 20
			printf("\nThe sun rises.  You\nsurvived another\nnight...\n");
			#elif COLUMNS == 40
			printf("\nThe sun rises.  You survived another\nnight...\n");
			#else
			printf("\nThe sun rises.  You survived another night...\n");
			#endif
			vampire = 0;
			return;
		}
		isDay = !isDay;
	}
	
	/* If it gets here, and it's day, do nothing. */
	if (isDay) {
		vampire += timer;
		return;
	}
	
	/* If it gets here, we know it's at night,
	so the vampire needs to move. */
	vampire /= 0x10;
	
	/*
	printf("\nDEBUG INFO:\ntimer = %x, ", timer);
	printf("player = %x, ", player);
	printf("vampire = %x", vampire);
	printf("\nrows: v=%x p=%x\n\n", Row(vampire), Row(player));
	*/
	
	if (Row(vampire) < Row(player)) {
		vampire += 4;
	}
	else if (Row(vampire) > Row(player)) {
		vampire -= 4;
	}
	else if (vampire < player) vampire++;
	else vampire--;
	
	/* If the game is over, end it */
	if (vampire == player) {
		GameOver();
		return;
	}
	
	/* And update the global vampire variable */
	vampire *= 0x10;
	vampire += timer;
}

/** When there's more text to print than rows to put them in,
this is used to give the reader a way to read it all.  This
is called in scenarios like when the player beats the game,
when someone has a lot to say, stuff like that */
void WaitForReturn() {
	#if COLUMNS == 20
	printf("\n\nPress Enter/Return\nto continue...");
	#else
	printf("\n\nPress Enter/Return to continue...");
	#endif
	getchar();
}



/************************************************************************
MAIN ENTRY POINT
************************************************************************/

int main() {
	input[0] = 'm';
	while(true) {
		isDay = true;
		isGameOver = false;
		player = 5;	/* The taco shop */
		vampire = 0;
		items = 0;
		struck = false;
		switch(input[0]) {
			case 'm': case 'M':
				printf("\n\nDARKEST HOUR\n\nMain Menu:\n    1. New Game\n    2. Enter Password\n    3. Help\n    4. Exit");
				break;
			case '1': StartGame(); input[0] = 'm'; continue;
			case '2': Password(); input[0] = 'm'; continue;
			case '3': Help(); break;
			case 'c': case 'C': Credits(); break;
			case '4': return 0;
			default:
				printf("That's not on the menu.\nTo see the menu again, enter M.\n");
		}
		printf("\n\nYour choice:  ");
		fgets(input, 8, stdin);
	}
	return 0;
}

#endif
