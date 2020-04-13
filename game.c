#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sky.h"
#include "city.h"
#include "spritesheet.h"
#include "collisionmap.h"
#include "sound.h"
#include "bubblePop.h"
OBJ_ATTR shadowOAM[128];
DOCSPRITE doctor;
ENEMY enemies[ENEMYCOUNT];
PILL pills[PILLCOUNT];
int num;
enum {SPRITERIGHT,SPRITELEFT, SPRITESHIELDRIGHT,SPRITESHIELDLEFT,SPRITEIDLE};

int frameCounter;
int enemiesRemaining;
int cheat = 0;

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
	enemiesRemaining = ENEMYCOUNT * 2;
	num = -1;
   	//hideSprites();
	initDoctor();
	initEnemy();
	initPill();
}
void updateGame(){
	frameCounter++;
	updateBkgd();
	updateDoctor();
	spawnEnemy();
	for (int i = 0; i < PILLCOUNT; i++){
		updatePill(&pills[i]);
	}
	for (int i = 0; i < ENEMYCOUNT; i++){
		updateEnemy(&enemies[i]);
	}
	if (BUTTON_PRESSED(BUTTON_UP)){
		if (cheat == 0){
			cheat = 1;
		} else {
			cheat = 0;
		}
	}
}
void drawGame(){
	drawDoctor();
	for (int i = 0; i < PILLCOUNT; i++){
		drawPill(&pills[i]);
	}
	for (int i = 0; i < ENEMYCOUNT; i++){
		drawEnemy(&enemies[i]);
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
	doctor.col = SCREENWIDTH/2 - doctor.height / 2 + hOff;
	doctor.row = SCREENHEIGHT - 31;
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
		if (cheat == 1){
			doctor.aniState = SPRITESHIELDRIGHT;
		} else{
			doctor.aniState = SPRITERIGHT;	
		}
		// hOff++;
		// //character can actually move right on screen
		// if (doctor.col + doctor.width - 1 < SCREENWIDTH - doctor.cdel){
		// 	doctor.col += doctor.cdel;
		// }
		if (doctor.col + doctor.width < 256 && collisionmapBitmap[OFFSET(doctor.col + doctor.width + doctor.cdel - 1, doctor.row, MAPWIDTH)]
                                            && collisionmapBitmap[OFFSET(doctor.col + doctor.width + doctor.cdel - 1, doctor.row + doctor.height - 1, MAPWIDTH)])
			doctor.col += doctor.cdel;
			hOff++;
		}
	if(BUTTON_HELD(BUTTON_LEFT)){
		if (cheat == 1){
			doctor.aniState = SPRITESHIELDLEFT;
		} else{
			doctor.aniState = SPRITELEFT;	
		}
		// hOff--;
		// //character can actually move left on screen 
		// if (doctor.col >= doctor.cdel){
		// 	doctor.col 	-= doctor.cdel;
		// }
		if (doctor.col > 0 && collisionmapBitmap[OFFSET(doctor.col - doctor.cdel, doctor.row, MAPWIDTH)]
                                 && collisionmapBitmap[OFFSET(doctor.col - doctor.cdel, doctor.row + doctor.height - 1, MAPWIDTH)]) {

            doctor.col -= doctor.cdel;
			hOff--;
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
		playSoundB(bubblePop, BUBBLEPOPLEN, 0);
		doctor.pillTimer = 0;
	}
	doctor.pillTimer++;
	doctor.screenCol = doctor.col - hOff;
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
		pills[i].cdel = 1;
		pills[i].rdel = 1;
		pills[i].col = 0;
		pills[i].row = -SCREENHEIGHT - 35;
		pills[i].active = 0;
	}	
}
void firePill(){
	for (int i = 0; i < PILLCOUNT; i++){
		if (!pills[i].active){
			pills[i].row = SCREENHEIGHT - 35;
			if (doctor.aniState == SPRITERIGHT || doctor.aniState == SPRITESHIELDRIGHT){
				pills[i].col = doctor.col+5;
				pills[i].cdel = 2;
			} else if (doctor.aniState == SPRITELEFT || doctor.aniState == SPRITESHIELDLEFT){
				pills[i].col = doctor.col - 18;
				pills[i].cdel = -2;
			}
			pills[i].active = 1;
			
			break;
		}
	}
}
void updatePill(PILL *p){
	if (p->active) {
		p->col += p->cdel;
		
		if (p->col < -30 || p->col + p->width > SCREENWIDTH - 1) { 
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
void initEnemy(){
	for (int i = 0; i < ENEMYCOUNT; i++){
		enemies[i].row = SCREENHEIGHT - 31;
		enemies[i].col = SCREENWIDTH + 100;
		enemies[i].cdel = 1;
		enemies[i].rdel = 1;
		enemies[i].width = 32;
		enemies[i].height = 32;
		enemies[i].hitsTaken = -1;
		enemies[i].active = 0;
	}
}
//generates a random enemy
void spawnEnemy() {
	int randNum  = rand() % 10;
	if (frameCounter % randNum == 0){
		for (int i = 0; i < ENEMYCOUNT; i++){
			if (enemies[i].active == 0 && num == -1){
				enemies[i].active = 1;
				enemies[i].hitsTaken = 0;
				num = (rand() % 5);
				if (randNum % 2 == 0){
					enemies[i].col = SCREENWIDTH;
					enemies[i].cdel = -1;
				} else {
					enemies[i].col = 0;
					enemies[i].cdel = 1;
				}
				break;
			}
		}
	}
}
void updateEnemy(ENEMY * e){
	if (e->active){
		if (e->col < SCREENWIDTH || e->col > 0){
			e->col += e->cdel;
		} if (e->col < 0 || e->col > SCREENWIDTH){
			e->active = 0;
		}
		//handle pill and enemy collision
		for (int i = 0; i < PILLCOUNT; i++){
			if (pills[i].active && collision(e->row, e->col, e->width, e->height,
			pills[i].col, pills[i].row, pills[i].width, pills[i].height)){
				e->hitsTaken += 1;
				pills[i].active = 0;
				//enemies 0, 2, 4 die after 1 hit
				if ((num == 0 || num == 2 || num == 4)) {
					e->active = 0; 
					num = -1;
					enemiesRemaining--;
				}
				//enemies 1, 3 die after 3 hits
				if ((num == 1 || num == 3) && e-> hitsTaken == 2) {
					e->active = 0;
					num = -1;
					enemiesRemaining--;	
				}
			}
		}
	}
}

void drawEnemy(ENEMY * e){
	int r = 0;
	int c = 0;
	if (num == 0){
		c = 4;
		r = 24;
	} else if (num == 1){
		c = 8;
		r = 24;
	} else if (num == 2){
		c = 0;
		r = 28;
	} else if (num == 3){
		c = 4;
		r = 28;
	} else if (num == 4){
		c = 8;
		r = 28;
	}
	if (e->active){
		shadowOAM[10].attr0 = (ROWMASK & e->row) | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[10].attr1 = (COLMASK & e->col) | ATTR1_MEDIUM;
		shadowOAM[10].attr2 = ATTR2_TILEID(c,r);
	}
}