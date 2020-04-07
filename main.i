# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 342 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "main.c" 2
# 1 "sky.h" 1
# 22 "sky.h"
extern const unsigned short skyTiles[1856];


extern const unsigned short skyMap[1024];


extern const unsigned short skyPal[256];
# 3 "main.c" 2
# 1 "city.h" 1
# 22 "city.h"
extern const unsigned short cityTiles[224];


extern const unsigned short cityMap[2048];


extern const unsigned short cityPal[256];
# 4 "main.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[1312];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 5 "main.c" 2
# 1 "paused.h" 1
# 22 "paused.h"
extern const unsigned short pausedTiles[864];


extern const unsigned short pausedMap[1024];


extern const unsigned short pausedPal[256];
# 6 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[3024];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 7 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[912];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 8 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[1088];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 9 "main.c" 2
# 1 "game.h" 1

extern int vOff;
extern int hOff;
extern OBJ_ATTR shadowOAM[128];
extern int frameCounter;



void initGame();
void updateGame();
void drawGame();
void updateBkgd();
void initDoctor();
void updateDoctor();
void drawDoctor();
void initPill();
void firePill();
void updatePill();
void drawPill();

typedef struct {
    int row;
    int col;
    int cdel;
    int rdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int pillTimer;
} DOCSPRITE;

typedef struct {
    int row;
    int col;
    int cdel;
    int rdel;
    int width;
    int height;
    int active;
}PILL;
# 10 "main.c" 2


void initialize();
void initialize();


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



enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;


unsigned short buttons;
unsigned short oldButtons;


int hOff;


int main() {
    initialize();
    while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

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


void initialize() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((0)<<2) | ((28)<<8) | (0<<7);
    (*(volatile unsigned short*)0x4000008) = (1<<14) | ((1)<<2) | ((30)<<8) | (0<<7);
    buttons = (*(volatile unsigned short *)0x04000130);
    goToStart();
}
void goToStart() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;
    DMANow(3, startScreenTiles, &((charblock *)0x6000000)[0], 2624/2);
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[28], 2048/2);
    DMANow(3, startScreenTiles, &((charblock *)0x6000000)[1], 2624/2);
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, startScreenPal, ((unsigned short *)0x5000000), 256);
    waitForVBlank();
    state = START;
}
void start() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToGame();
        initGame();
    }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
       goToInstructions();
    }
}
void goToInstructions() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 6048/2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[28], 2048/2);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[1], 6048/2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 256);
    waitForVBlank();
    state = INSTRUCTIONS;
}
void instructions(){
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        goToStart();
    } else if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToGame();
        initGame();
    }
}
void goToGame() {
    DMANow(3, skyPal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, skyTiles, &((charblock *)0x6000000)[0], 3712/2);
    DMANow(3, skyMap, &((screenblock *)0x6000000)[28], 2048/2);

    DMANow(3, cityTiles, &((charblock *)0x6000000)[1], 448/2);
    DMANow(3, cityMap, &((screenblock *)0x6000000)[30], 4096/2);
    hideSprites();
    hOff = 0;
    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToPause();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        goToWin();
    } else if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))){
        goToLose();
    }
    DMANow(3,shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
}

void goToPause(){
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;
    hideSprites();
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[0], 1728/2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[28], 2048/2);
    DMANow(3, pausedTiles, &((charblock *)0x6000000)[1], 1728/2);
    DMANow(3, pausedMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, pausedPal, ((unsigned short *)0x5000000), 256);
    waitForVBlank();
    state = PAUSE;
}
void pause(){
    if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))){
        goToStart();
    } else if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToGame();
    }
}
void goToWin(){
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;
    hideSprites();
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 1824/2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[28], 2048/2);
    DMANow(3, winTiles, &((charblock *)0x6000000)[1], 1824/2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, winPal, ((unsigned short *)0x5000000), 256);
    waitForVBlank();
    state = WIN;
}
void win(){
    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToStart();
    }
}
void goToLose(){
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000014) = 0;
    hideSprites();
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 2176/2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[28], 2048/2);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[1], 2176/2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[30], 2048/2);
    DMANow(3, losePal, ((unsigned short *)0x5000000), 256);
    waitForVBlank();
    state = LOSE;
}
void lose(){
    if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))){
        goToStart();
    }
}
