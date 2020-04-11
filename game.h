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
    int screenCol;
} DOCSPRITE;

typedef struct {
    int row;
    int col;
    int cdel;
    int rdel;
    int width;
    int height;
    int hitsTaken;
} ENEMYSPRITE;

typedef struct {
    int row;
    int col;
    int cdel;
    int rdel;
    int width;
    int height;
    int active;
}PILL;

//Constants
#define PILLCOUNT 5
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern int vOff;
extern int hOff;
extern OBJ_ATTR shadowOAM[128];
extern int frameCounter;
extern PILL pills[PILLCOUNT];

//Prototypes
void initGame();
void updateGame();
void drawGame();
void updateBkgd();
void initDoctor();
void updateDoctor();
void drawDoctor();
void initPill();
void firePill();
void updatePill(PILL *);
void drawPill(PILL *);