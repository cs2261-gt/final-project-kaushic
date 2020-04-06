#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sky.h"
#include "city.h"
#include "spritesheet.h"

OBJ_ATTR shadowOAM[128];
DOCSPRITE doctor;
PILL pill;

enum {SPRITEIDLE, SPRITERIGHT,SPRITELEFT};

int frameCounter;

void initGame() {
	DMANow(3, skyPal, PALETTE, skyPalLen/2);
    //parallax background
    DMANow(3, skyTiles, &CHARBLOCK[0], skyTilesLen/2);
    DMANow(3, skyMap, &SCREENBLOCK[28], skyMapLen/2);
    
    DMANow(3, cityTiles, &CHARBLOCK[1], cityTilesLen/2);
    DMANow(3, cityMap, &SCREENBLOCK[30], cityMapLen/2);
    
	DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
	DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    
	hOff = 0;
	frameCounter = 0;
   	hideSprites();
	initDoctor();
}
void updateGame(){
	frameCounter++;
	updateBkgd();
	updateDoctor();
}
void drawGame(){
	waitForVBlank();
	drawDoctor();
	DMANow(3, shadowOAM, OAM, 128 * 8);
}
void updateBkgd(){
    waitForVBlank();
    REG_BG0HOFF = hOff;
    if (hOff % 2 == 0){
        REG_BG1HOFF = hOff/2;
    }
}
void initDoctor(){
	doctor.height = 32;
	doctor.width = 32;
	doctor.cdel = 32;
	doctor.rdel = 32;
	doctor.col = SCREENWIDTH / 2;
	doctor.row = SCREENHEIGHT / 2;
	doctor.aniCounter = 0;
	doctor.curFrame = 0;
	doctor.numFrames = 3;
	doctor.aniState = SPRITERIGHT;
	doctor.pillTimer = 16;
}
void updateDoctor(){
	if (doctor.aniState != SPRITEIDLE){
		doctor.prevAniState = doctor.aniState;
		doctor.aniState = SPRITEIDLE;
	}

	if (doctor.aniCounter % 10 == 0) {
		if (doctor.curFrame < doctor.numFrames - 1){
			doctor.curFrame += 1;
		} else {
			doctor.curFrame = 0;
		}
	}

	if(BUTTON_HELD(BUTTON_RIGHT)){
		doctor.aniState = SPRITERIGHT;
		hOff++;
	}
	if(BUTTON_HELD(BUTTON_LEFT)){
		doctor.aniState = SPRITELEFT;
		hOff--;
	}

	if (doctor.aniState == SPRITEIDLE){
            doctor.curFrame = 0;
            doctor.aniState = doctor.prevAniState;
        } else {
            doctor.aniCounter += 1;
    }

	if (BUTTON_PRESSED(BUTTON_A) && doctor.pillTimer >= 16){
		firePill();
		doctor.pillTimer = 0;
	}
	doctor.pillTimer++;
}
void drawDoctor(){
	shadowOAM[0].attr0 = doctor.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[0].attr1 = doctor.col | ATTR1_MEDIUM;
	shadowOAM[0].attr2 = ATTR2_TILEID(doctor.curFrame *  4, doctor.aniState *  4);
	waitForVBlank();
}
void initPill(){
	pill.height = 8;
	pill.width = 8;
	pill.cdel = 8;
	pill.rdel = 8;
	pill.col = doctor.col + doctor.width;
	pill.row = doctor.row + doctor.height / 2;
	pill.active = 0;
}
void firePill(){
	if (pill.active == 0){
		pill.active = 1;
	}
}
void updatePill(){
	if (pill.active == 1){
		pill.col += pill.cdel;
		if (pill.col > SCREENWIDTH){
			pill.active = 0;
		}
	} 
}
void drawPill(){
	shadowOAM[1].attr0 = pill.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[1].attr1 = pill.col | ATTR1_MEDIUM;
	shadowOAM[1].attr2 = ATTR2_TILEID(4,16);
	waitForVBlank();
}