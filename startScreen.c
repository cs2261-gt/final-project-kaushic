
//{{BLOCK(startScreen)

//======================================================================
//
//	startScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 137 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4384 + 2048 = 6944
//
//	Time-stamp: 2020-04-17, 23:39:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short startScreenTiles[2192] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x1333,0x3333,0x1333,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x4441,0x1144,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1211,0x1111,
	0x1211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1222,0x1111,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2122,0x2112,

	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2211,0x2111,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1112,0x1221,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2211,0x2221,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2222,0x1111,

	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1122,0x1111,0x1121,0x1111,0x1121,0x1111,0x1121,0x1222,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x2222,0x1111,0x2111,0x1111,0x2111,0x1111,0x2111,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,0x1222,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1211,0x1111,0x1211,0x1111,0x1211,0x1112,0x2222,

	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,0x2112,
	0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1122,0x1111,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x4444,0x1111,0x4444,0x1111,0x4444,0x1111,0x4444,

	0x4441,0x1144,0x4441,0x1144,0x4441,0x1144,0x4441,0x1144,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1444,0x1111,0x1444,0x1111,0x1444,0x1111,0x1444,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2211,
	0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,
	0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,0x2222,0x1222,

	0x1221,0x1221,0x1121,0x1121,0x1121,0x1121,0x1121,0x1121,
	0x1121,0x1121,0x1121,0x1121,0x1121,0x1121,0x1222,0x1221,
	0x1121,0x1122,0x1121,0x1112,0x1121,0x1112,0x1121,0x1112,
	0x1121,0x1112,0x1121,0x1112,0x1121,0x1112,0x2221,0x1122,
	0x1122,0x1112,0x1112,0x1112,0x1112,0x1112,0x1112,0x1112,
	0x1112,0x1112,0x1112,0x1112,0x1112,0x1112,0x1122,0x1122,
	0x1112,0x1211,0x1112,0x1211,0x1112,0x1211,0x1112,0x1211,
	0x1112,0x1211,0x1112,0x1211,0x1112,0x1221,0x2221,0x2212,

	0x2111,0x1112,0x2111,0x1111,0x2111,0x1111,0x2111,0x1111,
	0x2111,0x1111,0x2111,0x1111,0x2111,0x1111,0x2211,0x1112,
	0x1112,0x1211,0x1121,0x1121,0x1121,0x1121,0x1121,0x1121,
	0x1121,0x1121,0x1121,0x1121,0x1121,0x1211,0x1222,0x2111,
	0x1111,0x1112,0x1111,0x1121,0x1111,0x1121,0x1111,0x1121,
	0x1111,0x1121,0x1111,0x1121,0x1111,0x1112,0x2222,0x1111,
	0x2221,0x2111,0x1121,0x1111,0x1121,0x1111,0x1121,0x1111,
	0x1121,0x1111,0x1121,0x1111,0x1221,0x2111,0x2122,0x1222,

	0x1111,0x2111,0x1112,0x2111,0x1112,0x2111,0x1112,0x2111,
	0x1112,0x2111,0x1112,0x2111,0x1111,0x2111,0x2111,0x2222,
	0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,
	0x1111,0x1211,0x1111,0x1211,0x1111,0x1211,0x2222,0x2111,
	0x1111,0x1112,0x1111,0x1121,0x1111,0x1121,0x2222,0x1122,
	0x1111,0x1121,0x1111,0x1121,0x1111,0x1122,0x2222,0x1221,
	0x1211,0x2111,0x1211,0x1111,0x2111,0x1222,0x1111,0x2111,
	0x1111,0x1111,0x1211,0x1111,0x2211,0x2111,0x1211,0x1222,

	0x1112,0x1211,0x1111,0x1211,0x1111,0x1211,0x1111,0x1211,
	0x1112,0x1211,0x1112,0x1211,0x1111,0x1211,0x1111,0x2111,
	0x1111,0x1111,0x1111,0x2111,0x1111,0x2111,0x1111,0x2111,
	0x1111,0x2111,0x1111,0x2111,0x2111,0x1112,0x1222,0x1111,
	0x1112,0x1121,0x1111,0x1211,0x1111,0x1211,0x2222,0x1222,
	0x1111,0x1111,0x1111,0x1111,0x1112,0x1211,0x2221,0x1122,
	0x1111,0x1212,0x1111,0x1122,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,0x2111,0x2222,

	0x1211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1112,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x4444,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x4444,0x4444,0x4441,0x1144,0x4441,0x1144,0x4441,0x1144,
	0x4441,0x1144,0x4441,0x1144,0x1111,0x1111,0x1111,0x1111,

	0x1444,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1333,0x1111,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,
	0x3333,0x1333,0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,

	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2221,
	0x1111,0x1211,0x1111,0x1211,0x1111,0x2211,0x1111,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1112,0x2222,
	0x1121,0x1121,0x1121,0x1121,0x1112,0x2222,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,0x1112,
	0x2211,0x1122,0x1211,0x1111,0x2111,0x1122,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2222,0x2211,
	0x1222,0x2211,0x2111,0x1111,0x1222,0x2211,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1122,0x1111,
	0x1112,0x1111,0x1121,0x1111,0x1112,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2221,0x2122,0x1211,0x1121,0x2211,0x1111,
	0x1211,0x1111,0x1211,0x1121,0x2221,0x2122,0x1111,0x1111,
	0x1111,0x1111,0x2212,0x2222,0x2122,0x2121,0x2122,0x2111,
	0x2212,0x2111,0x2212,0x2111,0x2122,0x2211,0x1111,0x1111,

	0x1111,0x1111,0x2122,0x2222,0x1121,0x2112,0x1111,0x1122,
	0x1111,0x1112,0x1111,0x2112,0x2112,0x2222,0x1111,0x1111,
	0x1111,0x1111,0x2221,0x1112,0x1211,0x1121,0x1211,0x1121,
	0x2211,0x1112,0x1211,0x1121,0x2221,0x1211,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1211,0x1111,0x2221,
	0x1111,0x1211,0x1111,0x1211,0x1111,0x2111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1122,0x1221,
	0x1111,0x2112,0x1121,0x2112,0x1112,0x1221,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x2211,0x1111,0x2111,0x1222,0x2111,
	0x2112,0x2111,0x2112,0x2111,0x1222,0x2211,0x1112,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2221,
	0x1111,0x2111,0x1111,0x2222,0x1112,0x2222,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2221,0x1221,
	0x1211,0x1121,0x2111,0x1121,0x1112,0x1112,0x2111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,

	0x1111,0x2221,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1133,0x1111,0x1133,0x1111,0x1133,0x1111,0x1133,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,
	0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3331,0x1111,0x3331,0x1111,0x3331,0x1111,0x3331,

	0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x2211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,
	0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,

	0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,
	0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2222,0x2111,0x1121,0x1112,0x1121,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1222,0x2211,0x1112,0x2221,0x1112,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2111,0x1222,0x2112,0x1122,0x1111,0x1211,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2221,0x1112,0x2221,0x1111,0x1111,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2221,
	0x1111,0x1121,0x1111,0x2211,0x1111,0x1111,0x1111,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2212,0x1222,
	0x2112,0x1211,0x2111,0x1112,0x2112,0x1111,0x2112,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1222,0x2211,
	0x1121,0x2111,0x1121,0x2111,0x1121,0x2111,0x1121,0x2112,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1222,0x2211,
	0x1211,0x1121,0x1112,0x1121,0x1111,0x1121,0x1211,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x2212,0x1222,
	0x1212,0x1212,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1221,0x1111,
	0x1112,0x1111,0x1222,0x2211,0x1112,0x1121,0x1112,0x1121,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2111,0x1222,0x1112,0x1112,0x1112,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1121,0x1111,
	0x1111,0x1111,0x1122,0x2222,0x1121,0x1121,0x1121,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2111,0x1222,0x2112,0x1122,0x1112,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1121,0x1111,0x2222,0x2112,0x1121,0x1111,0x1121,0x1112,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1222,0x2122,0x1112,0x1121,0x1112,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1222,0x2112,0x1111,0x2112,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1121,0x1111,0x2222,0x1112,0x1121,0x1111,0x1121,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1121,0x1111,
	0x1111,0x1111,0x1122,0x2211,0x1121,0x1121,0x1121,0x1121,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2211,0x1122,0x2112,0x1211,0x2112,0x1211,
	0x2221,0x2111,0x1121,0x1111,0x1222,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1222,0x2211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2112,0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x2221,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x2221,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2211,0x1222,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2222,0x2212,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2111,0x1222,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1222,0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2122,0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x2211,0x2111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1122,0x1222,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2211,0x2211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,
	0x1111,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1113,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,
	0x1111,0x3311,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,
	0x3331,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,
	0x1111,0x3333,0x1111,0x3333,0x1111,0x3333,0x1111,0x1111,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1111,0x1111,
	0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1113,0x1111,0x1113,0x1111,0x1113,0x1111,0x1111,0x1111,

	0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,
	0x1111,0x3311,0x1111,0x3311,0x1111,0x3311,0x1111,0x1111,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1111,0x1111,
	0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,
	0x3331,0x3333,0x3331,0x3333,0x3331,0x3333,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x3333,0x1111,0x3333,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x3311,0x1111,0x3311,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x3333,0x3333,
	0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x3333,0x3333,
	0x3333,0x3333,0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x4441,0x1111,0x4441,0x1111,0x4441,
	0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,
	0x1111,0x3111,0x1114,0x3111,0x1114,0x3111,0x1114,0x3111,
	0x1111,0x4441,0x1111,0x4441,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x1111,0x4441,0x1111,0x4441,

	0x1114,0x3111,0x1114,0x3111,0x4444,0x3444,0x4444,0x3444,
	0x4444,0x3444,0x4444,0x3444,0x1114,0x3111,0x1114,0x3111,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,
	0x1333,0x1111,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x1111,0x4441,0x1111,0x4441,0x1111,0x4441,0x1111,0x1111,
	0x1111,0x1111,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,

	0x1114,0x3111,0x1114,0x3111,0x1114,0x3111,0x1111,0x3111,
	0x1111,0x3111,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
};

const unsigned short startScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0002,0x0003,0x0004,0x0003,0x0005,0x0006,0x0007,
	0x0407,0x0008,0x0009,0x000A,0x0005,0x000B,0x000C,0x000D,
	0x0003,0x000B,0x000E,0x000F,0x000B,0x040E,0x0010,0x0011,
	0x0003,0x0003,0x0404,0x0003,0x0402,0x0001,0x0000,0x0000,
	0x0001,0x0012,0x0013,0x0014,0x0015,0x0016,0x0017,0x0018,
	0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,
	0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,
	0x0029,0x0415,0x0414,0x0413,0x0412,0x0001,0x0000,0x0000,

	0x0001,0x0012,0x002A,0x002B,0x002C,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x042C,0x042B,0x042A,0x0412,0x0001,0x0000,0x0000,
	0x002D,0x002E,0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,
	0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,
	0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,0x002F,
	0x002F,0x002F,0x002F,0x002F,0x042E,0x042D,0x0000,0x0000,

	0x0030,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0031,
	0x0032,0x0033,0x0034,0x0035,0x0036,0x0037,0x0038,0x0039,
	0x003A,0x003B,0x003C,0x003D,0x003E,0x003F,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0430,0x0000,0x0000,
	0x0030,0x0040,0x0041,0x0042,0x0029,0x0043,0x0041,0x0044,
	0x0029,0x0043,0x0041,0x0045,0x0029,0x0029,0x0046,0x0446,
	0x0029,0x0029,0x0047,0x0048,0x0443,0x0049,0x0043,0x0041,
	0x0443,0x0029,0x0442,0x0041,0x0440,0x0430,0x0000,0x0000,

	0x0030,0x004A,0x0001,0x004B,0x0029,0x004C,0x0001,0x044C,
	0x0029,0x004C,0x0001,0x0030,0x0029,0x0029,0x0412,0x0012,
	0x0029,0x0029,0x0430,0x0001,0x044C,0x0029,0x004C,0x0001,
	0x044C,0x0029,0x044B,0x0001,0x044A,0x0430,0x0000,0x0000,
	0x0030,0x0029,0x0029,0x0029,0x0029,0x004D,0x004E,0x004F,
	0x0050,0x0051,0x0052,0x0053,0x0054,0x0055,0x0056,0x0057,
	0x0058,0x0029,0x0059,0x005A,0x005B,0x005C,0x005D,0x005E,
	0x005F,0x0060,0x0050,0x0029,0x0029,0x0430,0x0000,0x0000,

	0x0030,0x0029,0x0029,0x0029,0x0029,0x0061,0x0062,0x0063,
	0x0064,0x0065,0x0066,0x0067,0x0062,0x0063,0x0068,0x0062,
	0x0069,0x0029,0x006A,0x006B,0x006C,0x0062,0x006D,0x0049,
	0x0062,0x006E,0x0064,0x0029,0x0029,0x0430,0x0000,0x0000,
	0x0030,0x004A,0x0001,0x004B,0x0029,0x004C,0x0001,0x044C,
	0x0029,0x004C,0x0001,0x0030,0x0029,0x0029,0x0412,0x0012,
	0x0029,0x0029,0x0430,0x0001,0x044C,0x0029,0x004C,0x0001,
	0x044C,0x0029,0x044B,0x0001,0x044A,0x0430,0x0000,0x0000,

	0x0030,0x006F,0x0070,0x0071,0x0029,0x0072,0x0070,0x0472,
	0x0029,0x0072,0x0070,0x0073,0x0029,0x0029,0x0074,0x0474,
	0x0029,0x0029,0x0473,0x0070,0x0472,0x0029,0x0072,0x0070,
	0x0472,0x0029,0x0471,0x0070,0x046F,0x0430,0x0000,0x0000,
	0x0030,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0430,0x0000,0x0000,

	0x0030,0x086F,0x0870,0x0871,0x0029,0x0872,0x0870,0x0C72,
	0x0029,0x0872,0x0870,0x0873,0x0029,0x0029,0x0874,0x0C74,
	0x0029,0x0029,0x0C73,0x0870,0x0C72,0x0029,0x0872,0x0870,
	0x0C72,0x0029,0x0C71,0x0870,0x0C6F,0x0430,0x0000,0x0000,
	0x0030,0x0075,0x0076,0x0077,0x0029,0x0078,0x0076,0x0478,
	0x0029,0x0078,0x0076,0x0079,0x0029,0x0029,0x007A,0x047A,
	0x0029,0x0029,0x0479,0x0076,0x0478,0x0029,0x0078,0x0076,
	0x0478,0x0029,0x0477,0x0076,0x0475,0x0430,0x0000,0x0000,

	0x0030,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0430,0x0000,0x0000,
	0x0030,0x007B,0x0803,0x007C,0x0029,0x007D,0x0803,0x047D,
	0x0029,0x007D,0x0803,0x007E,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x047E,0x0803,0x047D,0x0029,0x007D,0x0803,
	0x047D,0x0029,0x047C,0x0803,0x047B,0x0430,0x0000,0x0000,

	0x0030,0x004A,0x0001,0x004B,0x0029,0x004C,0x0001,0x044C,
	0x0029,0x004C,0x0001,0x0030,0x0C73,0x007F,0x0080,0x0480,
	0x007F,0x0873,0x0430,0x0001,0x044C,0x0029,0x004C,0x0001,
	0x044C,0x0029,0x044B,0x0001,0x044A,0x0430,0x0000,0x0000,
	0x0030,0x087B,0x0003,0x087C,0x0029,0x087D,0x0003,0x0C7D,
	0x0029,0x087D,0x0003,0x087E,0x0430,0x0081,0x0082,0x0482,
	0x0481,0x0030,0x0C7E,0x0003,0x0C7D,0x0029,0x087D,0x0003,
	0x0C7D,0x0029,0x0C7C,0x0003,0x0C7B,0x0430,0x0000,0x0000,

	0x0030,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0430,0x0083,0x0084,0x0484,
	0x0483,0x0030,0x0029,0x0029,0x0029,0x0029,0x0029,0x0029,
	0x0029,0x0029,0x0029,0x0029,0x0029,0x0430,0x0000,0x0000,
	0x0085,0x0086,0x0086,0x0086,0x0086,0x0086,0x0086,0x0086,
	0x0086,0x0086,0x0086,0x0086,0x0485,0x0087,0x0088,0x0488,
	0x0487,0x0085,0x0086,0x0086,0x0086,0x0086,0x0086,0x0086,
	0x0086,0x0086,0x0086,0x0086,0x0086,0x0485,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short startScreenPal[256] __attribute__((aligned(4)))=
{
	0x001F,0x7FFF,0x7E40,0x4633,0x001F,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(startScreen)
