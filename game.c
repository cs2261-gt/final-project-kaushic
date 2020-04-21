#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sky.h"
#include "city.h"
#include "spritesheet.h"
#include "collisionmap.h"
#include "sound.h"
#include "bubblePop.h"

//struct objects
OBJ_ATTR shadowOAM[128];
DOCSPRITE doctor;
POWERUP powerups[POWERUPCOUNT];
CONFETTI confetti[CONFETTICOUNT];
ENEMY enemies[ENEMYCOUNT];
PILL pills[PILLCOUNT];
BOX boxes[BOXCOUNT]; 
BOXCOUNTER boxbar;

//enums
enum {SPRITERIGHT,SPRITELEFT, SPRITESHIELDRIGHT,SPRITESHIELDLEFT,SPRITEIDLE};
enum {STANDARDMODE, WHITEMODE, BLACKMODE};

//variables
int collided; //doctor and enemy collision
int frameCounter;
int frameCounter2;
int frameCounter3;
int enemiesRemaining;
int cheat;
int randPowerup; //to pick a rand powerup
int prevBox; //which box to add to healthbar
int activeEnemies;
int activePowerups;
int boxesCollected;
int pillSpeed; //"speed" at which pills can shoot
int blend; //for alpha-blend when hit
int livesRemaining;
int num;
int bubbles;


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
	boxesCollected = 0;
	activePowerups = 0;
	bubbles = 0;
	pillSpeed = 2;
	collided = 0;
	blend = 0;
	livesRemaining = 1;
	prevBox = 0;
	activeEnemies = 0;
	cheat = 0;
	initDoctor();
	initEnemy();
	initPill();
	initPowerup();
	initBar();
	initBox();
}
void updateGame(){
	frameCounter++;
	updateBkgd();
	updateDoctor();
	updateBox();
	for (int i = 0; i < PILLCOUNT; i++){
		updatePill(&pills[i]);
	}
	for (int i = 0; i < ENEMYCOUNT; i++){
			spawnEnemy();
			updateEnemy(&enemies[i]);
		
	}
	for (int i = 0; i < POWERUPCOUNT; i++){
		spawnPowerup(); 
		updatePowerup(&powerups[i]);
	}
	if (BUTTON_PRESSED(BUTTON_B)){
		if (cheat == 0){
			cheat = 1;
		} else {
			cheat = 0;
		}
	}
}
void drawGame(){
	drawDoctor();
	drawPill();
	drawEnemy();
	drawPowerup();
	drawBar();
	drawBox();
}
void updateBkgd(){
    REG_BG0HOFF = hOff;
    if (hOff % 2 == 0){
        REG_BG1HOFF = hOff/2;
    }
}
/* HEALTH BAR CODE */
void initBar(){
	boxbar.row = 0;
	boxbar.col = 0;
	boxbar.width = 32;
}
void drawBar(){
	shadowOAM[60].attr0 = boxbar.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[60].attr1 = boxbar.col | ATTR1_MEDIUM;
	shadowOAM[60].attr2 = ATTR2_TILEID(20,0);
}
/* HEALTH BOX CODE */
void initBox(){
	for (int i = 0; i < BOXCOUNT; i++){
		boxes[i].height = 8;
		boxes[i].width = 8;
		boxes[i].active = 0;
		boxes[i].row = boxbar.row;
	}
}
void updateBox(){
	if (boxesCollected > prevBox){
		//if collected, indicate box on bar
		boxes[prevBox].active = 1;
		int prev = prevBox - 1;
		boxes[prevBox].col = boxes[prev].col + boxes[prev].width + 8;
	}
		//boxes[prevBox].row = boxbar.row;
		prevBox = boxesCollected;
}
void drawBox(){
	for (int i = 0; i < BOXCOUNT; i++){
		if (boxes[i].active){
			shadowOAM[61 + i].attr0 = (ROWMASK & boxes[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[61 + i].attr1 = (COLMASK & boxes[i].col) | ATTR1_MEDIUM;
			shadowOAM[61 + i].attr2 = ATTR2_TILEID(16,0);
		} else {
			shadowOAM[61 + i].attr0 = ATTR0_HIDE;
		}
	}
}
/* DOCTOR CODE */
void initDoctor(){
	doctor.height = 32;
	doctor.width = 32;
	doctor.cdel = 1;
	doctor.rdel = 1;
	doctor.worldCol = SCREENWIDTH/2 - doctor.height / 2 + hOff;
	doctor.row = SCREENHEIGHT - 31;
	doctor.aniCounter = 0;
	doctor.curFrame = 0;
	doctor.numFrames = 3;
	doctor.aniState = SPRITERIGHT;
	doctor.pillTimer = 16;
	REG_BLDCNT = BLD_OBJa | BLD_WHITE;
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
		//remove collision map once 3 boxes are collected
		if (doctor.worldCol + doctor.width < 256 && collisionmapBitmap[OFFSET(doctor.worldCol + doctor.width + doctor.cdel - 1, doctor.row, MAPWIDTH)]
                                            && collisionmapBitmap[OFFSET(doctor.worldCol + doctor.width + doctor.cdel - 1, doctor.row + doctor.height - 1, MAPWIDTH)])
			doctor.worldCol += doctor.cdel;
			//hOff++;
			if (hOff < (50) && doctor.screenCol > 50) {
                // Update background offset variable if the above is true
                hOff++;
            }
		}
	if(BUTTON_HELD(BUTTON_LEFT)){
		if (cheat == 1){
			doctor.aniState = SPRITESHIELDLEFT;
		} else{
			doctor.aniState = SPRITELEFT;	
		}
		if (doctor.worldCol > 0 && collisionmapBitmap[OFFSET(doctor.worldCol - doctor.cdel, doctor.row, MAPWIDTH)]
                                 && collisionmapBitmap[OFFSET(doctor.worldCol - doctor.cdel, doctor.row + doctor.height - 1, MAPWIDTH)]) {
			doctor.worldCol -= doctor.cdel;
			//hOff--;
			if (hOff > 0 && doctor.screenCol < 50) {
                // Update background offset variable if the above is true
                hOff--;
            }
        }
	}

	if (doctor.aniState == SPRITEIDLE){
            doctor.curFrame = 0;
            doctor.aniState = doctor.prevAniState;
        } else {
            doctor.aniCounter += 1;
    }

	//doctor can shoot only if he hasn't collided with an enemy
	if (BUTTON_PRESSED(BUTTON_A) && doctor.pillTimer >= 16 && collided != 1){
		firePill();
		playSoundB(bubblePop, BUBBLEPOPLEN, 0);
		doctor.pillTimer = 0;
	}
	

	doctor.pillTimer+= pillSpeed;
	doctor.screenCol = doctor.worldCol - hOff;
}
void drawDoctor(){
	REG_BLDY = blend;
	shadowOAM[0].attr0 = doctor.row | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[0].attr1 = doctor.screenCol | ATTR1_MEDIUM;
	shadowOAM[0].attr2 = ATTR2_TILEID(doctor.curFrame *  4, doctor.aniState *  4);
}
/* POWERUP CODE  */
void initPowerup(){
	for (int i = 0; i < POWERUPCOUNT; i++){
		powerups[i].worldRow = -1;
		powerups[i].worldCol = -1;
		powerups[i].cdel = 1;
		powerups[i].rdel = 1;
		powerups[i].width = 16;
		powerups[i].height = 16;
		powerups[i].active = 0;
		powerups[i].powerupType = -1;
	}
}
void spawnPowerup(){
	//generate index for powerup to fall down from
	int randColIndex = rand() % 220;
	if (randColIndex == SCREENWIDTH){
		randColIndex = 200;
	} else if (randColIndex == 0){
		randColIndex = 0 + 20;
	}
	
	//choose a random powerup
	int randPow = (rand() % 5);
	//for every random even number force it to be a health box
	if (randPow % 2 == 0){
		randPow = 0;
	}
	if (frameCounter % 50 == 0){
		for (int i = 0; i < POWERUPCOUNT; i++){
			//allow only 3 active powerups on screen at a time
			if (powerups[i].active == 0 && activePowerups < 3){
				powerups[i].worldCol = randColIndex;
				powerups[i].worldRow = 10;
				powerups[i].active = 1;
				powerups[i].powerupType = randPow;
				activePowerups += 1;
			}
			break;
		}
	}
}
void updatePowerup(POWERUP *w){
	if (w->active){
		w->worldRow += w->rdel;
		if (w->worldRow >= SCREENHEIGHT){
			w->active = 0;
			activePowerups -= 1;
		}
		//collision logic for powerups
		for (int i = 0; i < POWERUPCOUNT; i++){
			if (powerups[i].active && collision(powerups[i].screenCol, powerups[i].screenRow, powerups[i].width, powerups[i].height, 
				doctor.screenCol, doctor.row, doctor.width, doctor.height)){
					w->active = 0;
					activePowerups -= 1;
					if (powerups[i].powerupType == 0){ //health box
						boxesCollected += 1;
						w->active = 0;
					}
					if (powerups[i].powerupType == 1){ //x0.5 speed
						pillSpeed = 1; 
					}
					if (powerups[i].powerupType == 2){ //x2 speed
						pillSpeed = 4;
					}
					if (powerups[i].powerupType == 3){ //^ attack/switch back to pills if bubbles
						bubbles = 0;
					}
					if (powerups[i].powerupType == 4){ //change pills to bubbles
						bubbles = 1;
						pillSpeed = 1;
					}
				}
		}
	}
	w->screenCol= w->worldCol - hOff;
	w->screenRow = w->worldRow;
}
void drawPowerup(){
	int r = 0;
	int c = 0;
	for (int i = 0; i < POWERUPCOUNT; i++){
		if (powerups[i].active == 1){
			if (powerups[i].powerupType == 0){ //health box
				r = 16;
			} else if (powerups[i].powerupType == 1){ //x0.5 speed
				c = 0;
				r = 20;
			} else if (powerups[i].powerupType == 2){ //x2 speed
				c = 4;
				r = 20;
			} else if (powerups[i].powerupType == 3){ //^ attack
				c = 8;
				r = 20;
			} else if (powerups[i].powerupType == 4){ //bubbles
				c = 0;
				r = 24;
			}
			shadowOAM[20 + i].attr0 = (ROWMASK & powerups[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND;
			shadowOAM[20 + i].attr1 = (COLMASK & powerups[i].screenCol) | ATTR1_MEDIUM;
			shadowOAM[20 + i].attr2 = ATTR2_TILEID(c,r);
		} else {
			shadowOAM[20 + i].attr0 = ATTR0_HIDE;
		}
	}
} 
/* PILL CODE*/
void initPill(){
	for (int i = 0; i < PILLCOUNT; i++){
		pills[i].height = 8;
		pills[i].width = 8;
		pills[i].cdel = 1;
		pills[i].rdel = 1;
		pills[i].worldCol = 0;
		pills[i].row = -SCREENHEIGHT - 35;
		pills[i].active = 0;
	}	
}
void firePill(){
	for (int i = 0; i < PILLCOUNT; i++){
		if (!pills[i].active){
			pills[i].row = SCREENHEIGHT - 35;
			//pill shoots to the right
			if (doctor.aniState == SPRITERIGHT || doctor.aniState == SPRITESHIELDRIGHT){
				pills[i].worldCol = doctor.worldCol+6;
				pills[i].cdel = 2;
			//pill shoots to the left
			} else if (doctor.aniState == SPRITELEFT || doctor.aniState == SPRITESHIELDLEFT){
				pills[i].worldCol = doctor.worldCol - 18;
				pills[i].cdel = -2;
			}
			pills[i].active = 1;
			
			break;
		}
	}
}
void updatePill(PILL *p){
	if (p->active) {
		p->worldCol += p->cdel;
		//pill has gone off screen
		if (p->worldCol < -30 || p->worldCol + p->width > SCREENWIDTH - 1) { 
			p->active = 0;
		} 
	}
	p->screenCol = p->worldCol - hOff;
}
void drawPill(){
	for (int i = 0; i < PILLCOUNT; i++){
		int c;
		int r;
		if (bubbles){
			c = 8;
			r = 16;
		} else {
			c = 4;
			r = 16;
		}
		if (pills[i].active){
			shadowOAM[1 + i].attr0 = (ROWMASK & pills[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[1 + i].attr1 = (COLMASK & pills[i].screenCol) | ATTR1_MEDIUM;
			shadowOAM[1 + i].attr2 = ATTR2_TILEID(c,r);
		} else {
			shadowOAM[1 + i].attr0 = ATTR0_HIDE;
		}
	}
}
/* ENEMY CODE*/
void initEnemy(){
	//initializes enemy
	for (int i = 0; i < ENEMYCOUNT; i++){
		enemies[i].row = SCREENHEIGHT - 31;
		enemies[i].worldCol = -SCREENWIDTH;
		enemies[i].cdel = 1;
		enemies[i].rdel = 1;
		enemies[i].width = 32;
		enemies[i].height = 32;
		enemies[i].hitsTaken = 0;
		enemies[i].active = 0;
	}
}
//generates a random enemy
void spawnEnemy() {
	int randNum  = rand() % 500;
	//spawns enemies at random time intervals

	int randEnemy = (rand() % 5); //generate a random enemy type
	if (frameCounter % 100 == 0){
		for (int i = 0; i < ENEMYCOUNT; i++){
			//if an enemy is inactive and there currently isn't an enemy on screen, initalize one
			if (enemies[i].active == 0 && activeEnemies < 3){
				enemies[i].active = 1;
				enemies[i].num = randEnemy;
				activeEnemies += 1;
				//picks a random enemy type to determine position
				if (randNum % 2 == 0){ //enemy comes from the right
					enemies[i].worldCol = SCREENWIDTH;
					enemies[i].cdel = -1;
				} 
				else {
				 //enemy comes from the left 
					enemies[i].worldCol = 0;
					enemies[i].cdel = 1;
				}
				break;
			}
		}
	}
}
void updateEnemy(ENEMY * e){
	if (e->active){
		e->worldCol += e->cdel;
		if (e->worldCol < 1 || e->worldCol > SCREENWIDTH){ //enemy is at left or right edge
			e->active = 0;
			activeEnemies -= 1;
		}
		//handle collision of doctor and an enemy
		if (collision(e->screenCol, e->row, e->width, e->height, doctor.screenCol, doctor.row, doctor.width, doctor.height)){
			collided = 1;
			blend = (rand() % 10) + 2;
		} else {
			collided = 0;
			blend = 0;
			livesRemaining--;
		}
		for (int i = 0; i < PILLCOUNT; i++){
			//handle pill and enemy collision
			if (pills[i].active && collision(e->worldCol, e->row, e->width, e->height,
			pills[i].worldCol, pills[i].row, pills[i].width, pills[i].height) && collided != 1){
				//e->active = 0;
				e->hitsTaken += 1;
				pills[i].active = 0;
				//activeEnemies -= 1;
				//enemies 0, 2, 4 die after 1 hit

				//trying to have variable amounts of attack but not working...
 				if ((e->num % 2 == 0)) {
					if (e->hitsTaken >= 1){
						e->active = 0;
						activeEnemies -= 1; 
						enemiesRemaining--;
					}
				}
				//enemies 1, 3 die after 3 hits
				else {
					if (e->hitsTaken >= 2){
						e->active = 0; 
						activeEnemies -= 1;
						enemiesRemaining--;
					}
				} 
			}

			if (cheat == 1 && collision(e->worldCol, e->row, e->width, e->height,
										doctor.worldCol, doctor.row, doctor.width, doctor.height)){
				e->hitsTaken += 1;
				if (e->worldCol == 240){
					e->active = 0;
					activeEnemies -= 1;
				} else {
					e->cdel *= -1;
					if (e->worldCol < doctor.worldCol){
						e->worldCol -= 5;
					} else {
						e->worldCol += 5;
					}
				}
			}
		}
	}
	e->screenCol = e->worldCol - hOff;
}

void drawEnemy(){
	int r = 0;
	int c = 0;
	for (int i = 0; i < ENEMYCOUNT; i++){
		if (enemies[i].active == 1){
			if (enemies[i].num == 0){ //enemy type 1
				c = 4;
				r = 24;
			} else if (enemies[i].num == 1){ //enemy type 2
				c = 8;
				r = 24;
			} else if (enemies[i].num == 2){ //enemy type 3
				c = 0;
				r = 28;
			} else if (enemies[i].num == 3){ //enemy type 4
				c = 4;
				r = 28;
			} else if (enemies[i].num == 4){ //enemy type 4
				c = 8;
				r = 28;
			}
			shadowOAM[10 + i].attr0 = (ROWMASK & enemies[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[10 + i].attr1 = (COLMASK & enemies[i].screenCol) | ATTR1_MEDIUM;
			shadowOAM[10 + i].attr2 = ATTR2_TILEID(c,r);
		} else {
			shadowOAM[10 + i].attr0 = ATTR0_HIDE;
		}
	}
}

/* confetti screen */
void initWin(){
	frameCounter2 = 0;
	initConfetti();
}
void updateWin(){
	frameCounter2++;
	for (int i = 0; i < CONFETTICOUNT; i++){
		fireConfetti(); 
		updateConfetti(&confetti[i]);
	}
}
void drawWin(){
	drawConfetti();
}
void initConfetti(){
	for (int i = 0; i < CONFETTICOUNT; i++){
		confetti[i].row = 0;
		confetti[i].col = 0;
		confetti[i].cdel = 1;
		confetti[i].rdel = 4;
		confetti[i].width = 16;
		confetti[i].height = 16;
		confetti[i].active = 1;
	}
}
void fireConfetti(){
	int randColIndex = rand() % 220;
	if (randColIndex == SCREENWIDTH){
		randColIndex = 200;
	} else if (randColIndex == 0){
		randColIndex = 0 + 20;
	}
	int randPow = (rand() % 3);

	if (frameCounter2 % 1 == 0){
		for (int i = 0; i < CONFETTICOUNT; i++){
			if (confetti[i].active == 0){
				confetti[i].worldCol = randColIndex;
				confetti[i].worldRow = 10;
				confetti[i].active = 1;
				confetti[i].confettiType = randPow;
			}
			break;
		}
	}
}
void updateConfetti(CONFETTI * c){
	if (c->active){
		c->worldRow += c->rdel;
		if (c->worldRow >= SCREENHEIGHT){
			c->active = 0;
		}
	}
	c->col= c->worldCol - hOff;
	c->row = c->worldRow;
}
void drawConfetti(){
	int r = 4;
	int c = 0;
	for (int i = 0; i < CONFETTICOUNT; i++){
		if (confetti[i].active == 1){
			if (confetti[i].confettiType == 0){ 
				c = 16;
			} else if (confetti[i].confettiType == 1){ 
				c = 20;
			} else if (confetti[i].confettiType == 2){ 
				c = 24;
			} 
			shadowOAM[40 + i].attr0 = (ROWMASK & confetti[i].row) | ATTR0_4BPP | ATTR0_SQUARE | ATTR0_BLEND;
			shadowOAM[40 + i].attr1 = (COLMASK & confetti[i].col) | ATTR1_MEDIUM;
			shadowOAM[40 + i].attr2 = ATTR2_TILEID(c,r);
		} else {
			shadowOAM[40 + i].attr0 = ATTR0_HIDE;
		}
	}
}
