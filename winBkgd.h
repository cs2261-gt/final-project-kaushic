
//{{BLOCK(winBkgd)

//======================================================================
//
//	winBkgd, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 230 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7360 + 2048 = 9920
//
//	Time-stamp: 2020-04-20, 22:15:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINBKGD_H
#define GRIT_WINBKGD_H

#define winBkgdTilesLen 7360
extern const unsigned short winBkgdTiles[3680];

#define winBkgdMapLen 2048
extern const unsigned short winBkgdMap[1024];

#define winBkgdPalLen 512
extern const unsigned short winBkgdPal[256];

#endif // GRIT_WINBKGD_H

//}}BLOCK(winBkgd)
