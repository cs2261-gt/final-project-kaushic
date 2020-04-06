#include "myLib.h"
// TODO 2.0
#include "sky.h"
// TODO 4.0
#include "city.h"
#include "startScreen.h"
#include "paused.h"
#include "instructions.h"
#include "win.h"
#include "lose.h"
#include "game.h"
// Prototypes
void initialize();
void initialize();

// State Prototypes
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();


// States
enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Horizontal Offset
int hOff;


int main() {
    initialize();
    while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;
        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
           
        }
	}
}

// Initialize the game on first launch
void initialize() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP;
    REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_4BPP;
    buttons = BUTTONS;
    goToStart();
}
void goToStart() {
    REG_BG0HOFF = 0;
    REG_BG1HOFF = 0;
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen/2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], startScreenMapLen/2);
    DMANow(3, startScreenTiles, &CHARBLOCK[1], startScreenTilesLen/2);
    DMANow(3, startScreenMap, &SCREENBLOCK[30], startScreenMapLen/2);
    DMANow(3, startScreenPal, PALETTE, 256);
    waitForVBlank();
    state = START;
}
void start() {
    if (BUTTON_PRESSED(BUTTON_START)){
        goToGame();
    } 
    if (BUTTON_PRESSED(BUTTON_SELECT)){
       goToInstructions();
    }
}
void goToInstructions() {
    REG_BG0HOFF = 0;
    REG_BG1HOFF = 0;
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen/2);
    DMANow(3, instructionsTiles, &CHARBLOCK[1], instructionsTilesLen/2);
    DMANow(3, instructionsMap, &SCREENBLOCK[30], instructionsMapLen/2);
    DMANow(3, instructionsPal, PALETTE, 256);
    waitForVBlank();
    state = INSTRUCTIONS;
}
void instructions(){
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    } else if (BUTTON_PRESSED(BUTTON_START)){
        goToGame();
    }
}
void goToGame() {
    DMANow(3, skyPal, PALETTE, skyPalLen/2);
    //parallax background
    DMANow(3, skyTiles, &CHARBLOCK[0], skyTilesLen/2);
    DMANow(3, skyMap, &SCREENBLOCK[28], skyMapLen/2);
    
    DMANow(3, cityTiles, &CHARBLOCK[1], cityTilesLen/2);
    DMANow(3, cityMap, &SCREENBLOCK[30], cityMapLen/2);
    
    hOff = 0;
    state = GAME;
}
// Update game each frame
void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)){
        goToPause();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)){
        goToWin();
    } else if (BUTTON_PRESSED(BUTTON_B)){
        goToLose();
    }
}

void goToPause(){
    REG_BG0HOFF = 0;
    REG_BG1HOFF = 0;
    hideSprites();
    DMANow(3, pausedTiles, &CHARBLOCK[0], pausedTilesLen/2);
    DMANow(3, pausedMap, &SCREENBLOCK[28], pausedMapLen/2);
    DMANow(3, pausedTiles, &CHARBLOCK[1], pausedTilesLen/2);
    DMANow(3, pausedMap, &SCREENBLOCK[30], pausedMapLen/2);
    DMANow(3, pausedPal, PALETTE, 256);
    waitForVBlank();
    state = PAUSE;
}
void pause(){
    if(BUTTON_PRESSED(BUTTON_SELECT)){
        goToStart();
    } else if (BUTTON_PRESSED(BUTTON_START)){
        goToGame();
    }
}
void goToWin(){
    REG_BG0HOFF = 0;
    REG_BG1HOFF = 0;
    hideSprites();
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen/2);
    DMANow(3, winTiles, &CHARBLOCK[1], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[30], winMapLen/2);
    DMANow(3, winPal, PALETTE, 256);
    waitForVBlank();
    state = WIN;
}
void win(){
    if(BUTTON_PRESSED(BUTTON_START)){
        goToStart();
    } 
}
void goToLose(){
    REG_BG0HOFF = 0;
    REG_BG1HOFF = 0;
    hideSprites();
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen/2);
    DMANow(3, loseTiles, &CHARBLOCK[1], loseTilesLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[30], loseMapLen/2);
    DMANow(3, losePal, PALETTE, 256);
    waitForVBlank();
    state = LOSE;
}
void lose(){
    if(BUTTON_PRESSED(BUTTON_START)){
        goToStart();
    }
}