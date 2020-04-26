# 1 "city.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "city.c"
# 18 "city.c"
const unsigned short cityTiles[224] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x4444,0x4444,
 0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
 0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
 0x2222,0x2222,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

 0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
 0x3333,0x3333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short cityMap[2048] __attribute__((aligned(4)))=
{
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
 0x0000,0x0000,0x0000,0x1001,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x1002,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x1001,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1002,0x1002,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x1001,0x1003,0x1003,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x1003,0x1003,0x1003,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x1003,0x1003,0x1003,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x1004,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x1005,0x0000,0x0000,0x0000,0x1006,
 0x1005,0x0000,0x0000,0x0000,0x0000,0x1003,0x1003,0x1003,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x1007,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x1008,0x0000,0x0000,0x1009,0x1008,
 0x1008,0x1009,0x0000,0x0000,0x0000,0x1003,0x1003,0x1003,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x1009,
 0x1008,0x1008,0x1008,0x1009,0x1009,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x1005,0x1008,0x1005,0x0000,0x1809,0x1008,
 0x1008,0x1809,0x0000,0x0000,0x0000,0x1003,0x1003,0x1003,
 0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,0x0000,0x1809,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1005,0x0000,0x0000,

 0x0000,0x1008,0x100A,0x1008,0x100A,0x1008,0x0000,0x1008,
 0x1008,0x1008,0x1009,0x0000,0x0000,0x1003,0x1003,0x1008,
 0x1003,0x1003,0x1003,0x100B,0x1008,0x1009,0x0000,0x0000,
 0x1008,0x1008,0x1008,0x1008,0x100A,0x1008,0x1008,0x0000,
 0x0000,0x1008,0x180A,0x1008,0x180A,0x1008,0x0000,0x1008,
 0x1008,0x1008,0x1008,0x1005,0x0000,0x1003,0x1003,0x1008,
 0x1003,0x1003,0x100C,0x1008,0x1008,0x1008,0x1005,0x1005,
 0x1008,0x1008,0x1008,0x1008,0x180A,0x1008,0x1008,0x1006,

 0x0000,0x1008,0x100D,0x1008,0x100D,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x100D,0x1008,0x1009,0x100B,0x1008,0x1008,
 0x1003,0x1003,0x180C,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x100D,0x1008,0x1008,0x1008,
 0x1005,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1003,0x1003,0x1003,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,

 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1003,0x1003,0x1003,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x100C,0x1003,0x1003,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,

 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,

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

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x1001,0x1001,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x1003,0x1003,0x1001,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x1003,0x1003,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x1003,0x1003,0x1003,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x1009,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x1001,0x1003,0x1003,0x1001,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x0000,0x1001,0x1003,0x1003,0x1003,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1005,0x0000,0x0000,
 0x0000,0x0000,0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x0000,0x1003,0x1003,0x1003,0x1003,0x1006,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1009,
 0x0000,0x0000,0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x0000,0x1003,0x1003,0x1003,0x1003,0x1008,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x1005,0x0000,0x1003,0x1003,0x1003,0x1003,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1002,0x1003,0x100C,0x1003,0x1003,0x1008,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x1008,0x100A,0x1008,0x100A,
 0x1008,0x100A,0x100B,0x1003,0x1003,0x1003,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1003,0x1008,0x1008,0x1008,0x100B,0x1008,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x180A,0x1008,0x180A,
 0x1008,0x180A,0x1008,0x1003,0x1003,0x1003,0x1002,0x1002,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x100C,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x1008,0x100D,0x1008,0x100D,
 0x1008,0x100D,0x1008,0x1003,0x1003,0x1003,0x1003,0x1003,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x100D,0x1008,0x100D,0x1008,0x1008,0x0000,
 0x0000,0x0000,0x1005,0x0000,0x1008,0x180D,0x1008,0x180D,
 0x1008,0x180D,0x1008,0x1003,0x1003,0x1003,0x1003,0x1003,
 0x0000,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,

 0x1009,0x1008,0x1008,0x1008,0x1008,0x100A,0x1008,0x100A,
 0x1008,0x100A,0x1008,0x1003,0x1003,0x1003,0x1003,0x1008,
 0x1008,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x100D,0x1008,0x100D,0x1008,0x1008,0x0000,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x180A,0x1008,0x180A,
 0x1008,0x180A,0x1008,0x1003,0x1003,0x1003,0x1003,0x1008,
 0x1008,0x0000,0x0000,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,

 0x1008,0x1008,0x100D,0x1008,0x1008,0x100D,0x1008,0x100D,
 0x1008,0x100D,0x1008,0x1003,0x1003,0x100B,0x1008,0x1008,
 0x1008,0x1008,0x1009,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x100D,0x1008,0x100D,0x1008,0x1008,0x0000,
 0x1008,0x1008,0x180D,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1003,0x1003,0x1008,0x1008,0x180D,
 0x1008,0x180D,0x1008,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,

 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1003,0x1003,0x1008,0x1008,0x100A,
 0x1008,0x100A,0x1008,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x100D,0x1008,0x100D,0x1008,0x1008,0x0000,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1003,0x1003,0x1008,0x1008,0x180A,
 0x1008,0x180A,0x1008,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,

 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1003,0x1003,0x1008,0x1008,0x100D,
 0x1008,0x100D,0x1008,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1003,0x1003,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x0000,0x1008,0x1008,0x1008,0x1008,
 0x0000,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x0000,

 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x100B,0x100B,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1009,0x1008,0x1008,0x1008,0x1008,
 0x1009,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1009,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,
 0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,0x1008,

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

const unsigned short cityPal[256] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x7C1F,0x41A9,0x6B5A,0x7FFF,0x227E,0x0000,0x0000,0x0000,
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
