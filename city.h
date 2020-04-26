
//{{BLOCK(city)

//======================================================================
//
//	city, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 14 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 448 + 4096 = 5056
//
//	Time-stamp: 2020-04-05, 12:56:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CITY_H
#define GRIT_CITY_H

#define cityTilesLen 448
extern const unsigned short cityTiles[224];

#define cityMapLen 4096
extern const unsigned short cityMap[2048];

#define cityPalLen 512
extern const unsigned short cityPal[256];

#endif // GRIT_CITY_H

//}}BLOCK(city)
