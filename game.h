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

typedef struct {
    int row;
    int col;
    int cdel;
    int rdel;
    int width;
    int height;
    int active;
    int powerupType;
}POWERUP;

//Constants
#define PILLCOUNT 5
#define ENEMYCOUNT 5
#define POWERUPCOUNT 5
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern int vOff;
extern int hOff;
extern OBJ_ATTR shadowOAM[128];
extern int frameCounter;
extern PILL pills[PILLCOUNT];
extern POWERUP powerups[POWERUPCOUNT];
extern int bubbles;
extern int fast;
extern int slow;
extern int box;
extern int attack;

//Prototypes
void initGame();
void updateGame();
void drawGame();
void updateBkgd();
//doctor
void initDoctor();
void updateDoctor();
void drawDoctor();
//enemies
void initEnemy();
void spawnEnemy();
void updateEnemy(ENEMY *);
void drawEnemy(ENEMY *);
//pills
void initPill();
void firePill();
void updatePill(PILL *);
void drawPill(PILL *);
//powerups
void initPowerup();
void spawnPowerup(POWERUP *);
void updatePowerup(POWERUP *);
void drawPowerup(POWERUP *);