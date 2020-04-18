#include <stdlib.h>
#include "myLib.h"
#include "win.h"
#include "spritesheet.h"


OBJ_ATTR shadowOAM[128];
int hOff;
int frameCounter;

void initWin() {
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen/2);
    DMANow(3, winTiles, &CHARBLOCK[1], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[30], winMapLen/2);
    DMANow(3, winPal, PALETTE, 256);

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
	DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    
	hOff = 0;
	frameCounter = 0;


}
