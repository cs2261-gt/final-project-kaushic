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
    int active;
} ENEMY;

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
#define ENEMYCOUNT 5
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
void initEnemy();
void spawnEnemy();
void updateEnemy(ENEMY *);
void drawEnemy(ENEMY *);
void initPill();
void firePill();
void updatePill(PILL *);
void drawPill(PILL *);