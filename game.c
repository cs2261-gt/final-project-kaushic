#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sky.h"
#include "city.h"
#include "spritesheet.h"

OBJ_ATTR shadowOAM[128];
DOCSPRITE doctor;
PILL pills[PILLCOUNT];

enum {SPRITERIGHT,SPRITELEFT, SPRITESHIELDRIGHT,SPRITESHIELDLEFT,SPRITEIDLE};

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
   	//hideSprites();
	initDoctor();
	initPill();
}
void updateGame(){
	frameCounter++;
	updateBkgd();
	updateDoctor();
	for (int i = 0; i < PILLCOUNT; i++){
		updatePill(&pills[i]);
	}
}
void drawGame(){
	drawDoctor();
	for (int i = 0; i < PILLCOUNT; i++){
		drawPill(&pills[i]);
	}
}
void updateBkgd(){
    REG_BG0HOFF = hOff;
    if (hOff % 2 == 0){
        REG_BG1HOFF = hOff/2;
    }
}
void initDoctor(){
	doctor.height = 32;
	doctor.width = 32;
	doctor.cdel = 1;
	doctor.rdel = 1;
	doctor.col = doctor.width / 2;
	doctor.row = SCREENHEIGHT - doctor.height;
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
		//character can actually move right on screen
		if (doctor.col + doctor.width - 1 < SCREENWIDTH - doctor.cdel){
			doctor.col += doctor.cdel;
		}
	}
	if(BUTTON_HELD(BUTTON_LEFT)){
		doctor.aniState = SPRITELEFT;
		hOff--;
		//character can actually move left on screen 
		if (doctor.col >= doctor.cdel){
			doctor.col 	-= doctor.cdel;
		}
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
}
void initPill(){
	for (int i = 0; i < PILLCOUNT; i++){
		pills[i].height = 8;
		pills[i].width = 8;
		pills[i].cdel = 8;
		pills[i].rdel = 8;
		pills[i].col = 0;
		pills[i].row = -SCREENHEIGHT - 35;
		pills[i].active = 0;
	}	
}
void firePill(){
	for (int i = 0; i < PILLCOUNT; i++){
		if (!pills[i].active){
			pills[i].row = SCREENHEIGHT - 35;
			if (doctor.aniState == SPRITERIGHT){
				pills[i].col = doctor.col;
				pills[i].cdel = 8;
			} else if (doctor.aniState == SPRITELEFT){
				pills[i].col = doctor.col - 18;
				pills[i].cdel = -8;
			}
			pills[i].active = 1;
			break;
		}
	}
}
void updatePill(PILL *p){
	if (p->active) {
		p->col += p->cdel;
		
		if (p->col < 0 || p->col + p->width > SCREENWIDTH - 1) { 
			p->active = 0;
		} 
	}
}
void drawPill(PILL * p){
	if (p->active){
		shadowOAM[1].attr0 = (ROWMASK & p->row) | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[1].attr1 = (COLMASK & p->col) | ATTR1_MEDIUM;
		shadowOAM[1].attr2 = ATTR2_TILEID(4,16);
	}
}