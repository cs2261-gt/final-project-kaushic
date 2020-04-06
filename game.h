// Variables
extern int vOff;
extern int hOff;
extern OBJ_ATTR shadowOAM[128];
extern int frameCounter;


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