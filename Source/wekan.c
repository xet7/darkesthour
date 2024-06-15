/************************************************************************
Title:		WeKan Studio
Author:		xet7
		https://github.com/xet7
License:	MIT
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

#define LOCATION_SIGN_IN	0
#define LOCATION_SIGN_UP	1
#define LOCATION_FORGOTPASSWORD 2
#define LOCATION_ALLBOARDS	3
#define LOCATION_ALLBOARDSCHAR	4
#define LOCATION_BOARD  	5
#define LOCATION_LANGUAGE	6
#define LOCATION_USER_SETTINGS	7
#define LOCATION_BOARD_SETTINGS	8
#define LOCATION_ADMIN_PANEL	9
#define LOCATION_VERSION	10

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

#define ITEM_CARD		1
#define ITEM_CHECKLIST		2
#define ITEM_ATTACHMENT		4
#define ITEM_LIST		8
#define ITEM_SWIMLANE		16
#define ITEM_DUEDATE		32
#define ITEM_STARTDATE		64
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
	printf("\nCREDITS\n\nWritten and\nprogrammed by:\nxet7\ngithub.com/xet7\n\nBeta testing:\nTODO\n\nSpecial thanks to:\nThe Lunduke\ncommunity\nlunduke.locals.com\n\nAnd to GeekOnSkates");
	#else
	printf("\nCREDITS\n\nWritten and programmed by:\nxet7\ngithub.com/xet7\n\nBeta testing:\nTODO\n\nSpecial thanks to:\nThe Lunduke community\nlunduke.locals.com\n\nAnd to GeekOnSkates");
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
/*
	if (items & ITEM_GARLIC) printf("\n  Four heads of garlic");
	if (items & ITEM_STAKE) printf("\n  A wood tent spike");
	if (items & ITEM_PUMPKIN) printf("\n  A plastic pumpkin with a light");
	if (items & ITEM_BULLETS) printf("\n  A gun with silver bullets");
	if (items & ITEM_CRUCIFIX) printf("\n  A crucifix");
	if (items & ITEM_MONEY) printf("\n  A $100 bill");
	if (items & ITEM_BIBLE) printf("\n  A pocket-size Bible");
	if (items & ITEM_RING) printf("\n  A diamond ring");
*/
}

/** Hiking trail, top left corner of the map */

void LocationF() {
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
				/*
				if (items & ITEM_RING)
				*/
					printf("\nNothing to grab here.");
				/*
				else {
					items |= ITEM_RING;
					printf("\nYou grab the ring.");
				}
				*/
				break;
			case 'l':
				/* #if COLUMNS == 20 */
				printf("\nYou're in a dense\nforest, on a\nwinding trail.\nIt's hard to see\nwhere you're going.");
				/*
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
				*/
				break;
			case 'e':
				printf("Location1()");
				return;
			case 's':
				printf("Location4()");
				return;
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
		case 0: printf("Location0()"); return;
		case 1: printf("Location1()"); return;
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
				printf("\n\nWeKan\n\nMain Menu:\n    1. New Game\n    2. Enter Password\n    3. Help\n    4. Exit");
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
