
//{{BLOCK(paused)

//======================================================================
//
//	paused, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 54 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 1728 + 2048 = 4288
//
//	Time-stamp: 2020-04-05, 18:57:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSED_H
#define GRIT_PAUSED_H

#define pausedTilesLen 1728
extern const unsigned short pausedTiles[864];

#define pausedMapLen 2048
extern const unsigned short pausedMap[1024];

#define pausedPalLen 512
extern const unsigned short pausedPal[256];

#endif // GRIT_PAUSED_H

//}}BLOCK(paused)
