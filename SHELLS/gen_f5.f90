!=======================================================================
  Real(8) Function gen_f5 (ip,id)
!=======================================================================
!
! contains f5-shell cfp coefficients as  sqrt(m1/m2) 
!
! ip - index of parent term
! id - index of daughter term
!
!-----------------------------------------------------------------------
 
  Implicit none
 
  Integer, parameter :: nd =   73  ! number of daughter terms
  Integer, parameter :: np =   47  ! number of parent terms
  Integer, parameter :: ng = 1205  ! number of non-zero cfp's
 
  Integer(2) :: ind(0:nd)
  Integer(1) :: ipa(ng)
  Integer(4) :: m1(ng)
  Integer(4) :: m2(ng)
 
  Integer :: ip,id,i
 
  if(id.le.0) Stop "gen_f5: id < 0"
  if(ip.le.0) Stop "gen_f5: ip < 0"
  if(id.gt.nd) Stop "gen_f5: id > nd"
  if(ip.gt.np) Stop "gen_f5: ip > np"
 
  gen_f5 = 0.d0
  Do i=ind(id-1)+1,ind(id)
   if(ip.ne.ipa(i)) Cycle
   gen_f5 = sqrt(abs(DBLE(m1(i)))/DBLE(m2(i)))
   if(m1(i).lt.0) gen_f5 = -gen_f5
   Exit
  End Do
 
  Data ind/  &
    0,    3,    8,   12,   15,   24,   33,   52,   68,   82,   96,  107, &
  122,  136,  160,  181,  200,  217,  231,  248,  265,  285,  303,  318, &
  332,  345,  355,  362,  376,  387,  397,  407,  431,  456,  470,  491, &
  506,  513,  541,  547,  570,  584,  599,  613,  644,  677,  695,  723, &
  742,  762,  785,  816,  835,  862,  882,  903,  925,  951,  966,  984, &
 1004, 1024, 1050, 1073, 1088, 1106, 1124, 1143, 1160, 1174, 1182, 1192, &
 1200, 1205  /
 
 
  Data ipa/  &
  2,  3,  4,  1,  2,  3,  4,  5,  2,  3,  4,  5,  3, 11, 12,  2,  3,  4, &
  9, 10, 12, 13, 15, 16,  2,  4,  9, 10, 13, 14, 15, 16, 17,  2,  3,  4, &
  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21,  2,  3, &
  4,  7,  8,  9, 10, 12, 13, 14, 15, 16, 17, 19, 20, 21,  2,  4,  7,  8, &
  9, 10, 13, 14, 15, 16, 17, 19, 20, 21,  1,  2,  3,  4,  5,  6,  7,  9, &
 11, 12, 15, 18, 19, 22,  1,  2,  3,  4,  5,  7,  9, 12, 15, 19, 22,  2, &
  4,  5,  7,  8,  9, 10, 13, 15, 16, 17, 19, 21, 22, 23,  2,  4,  5,  8, &
  9, 10, 14, 15, 16, 17, 20, 21, 22, 23,  2,  3,  4,  5,  6,  7,  8,  9, &
 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,  2,  3, &
  4,  5,  7,  8,  9, 10, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, &
 25,  2,  4,  5,  7,  8,  9, 10, 13, 14, 15, 16, 17, 19, 20, 21, 22, 23, &
 24, 25,  2,  4,  5,  8,  9, 10, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, &
 25,  2,  3,  4,  5,  9, 10, 12, 13, 15, 16, 20, 22, 24, 26,  2,  4,  5, &
  9, 10, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26,  2,  4,  5,  9, &
 10, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26,  3,  4,  5, 11, 12, &
 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27,  3,  4,  5, &
 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26, 27,  4,  5, 13, &
 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27,  4,  5, 15, 16, 17, 19, &
 20, 21, 22, 23, 24, 25, 26, 27,  4,  5, 15, 16, 17, 20, 21, 22, 23, 24, &
 25, 26, 27,  5, 19, 20, 21, 22, 23, 24, 25, 26, 27,  5, 22, 23, 24, 25, &
 26, 27,  9, 10, 11, 12, 13, 15, 16, 30, 31, 32, 34, 35, 36, 37,  9, 10, &
 12, 13, 15, 16, 31, 32, 34, 36, 37, 10, 13, 14, 16, 17, 31, 32, 34, 36, &
 37, 10, 13, 14, 16, 17, 32, 33, 34, 37, 38,  6,  7,  8,  9, 10, 11, 12, &
 13, 14, 15, 16, 17, 18, 19, 20, 21, 30, 31, 32, 34, 35, 36, 37, 39,  6, &
  7,  8,  9, 10, 13, 14, 15, 16, 17, 18, 19, 20, 21, 30, 31, 32, 33, 34, &
 35, 36, 37, 38, 39, 40,  7,  9, 10, 13, 15, 16, 19, 20, 31, 32, 34, 36, &
 37, 39,  7,  8,  9, 10, 13, 14, 15, 16, 17, 19, 20, 21, 31, 32, 33, 34, &
 36, 37, 38, 39, 40,  8, 10, 13, 14, 16, 17, 20, 21, 32, 33, 34, 37, 38, &
 39, 40,  6, 11, 18, 28, 30, 35, 41,  6,  7,  8,  9, 10, 13, 15, 16, 17, &
 18, 19, 21, 22, 23, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 41, 42, &
 43,  7, 12, 19, 31, 36, 42,  7,  8,  9, 10, 13, 15, 16, 17, 19, 21, 22, &
 23, 29, 31, 32, 33, 34, 36, 37, 38, 40, 42, 43,  8, 10, 14, 16, 17, 20, &
 21, 23, 31, 32, 36, 37, 39, 42,  8, 10, 13, 16, 17, 21, 23, 29, 32, 33, &
 34, 37, 38, 40, 43,  8, 10, 14, 16, 17, 20, 21, 23, 32, 33, 37, 38, 39, &
 43,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, &
 23, 24, 25, 30, 31, 32, 34, 35, 36, 37, 39, 41, 42, 44,  6,  7,  8,  9, &
 10, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 30, 31, 32, 33, &
 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,  7,  9, 10, 13, 15, 16, 19, &
 20, 22, 24, 31, 32, 34, 36, 37, 39, 42, 44,  7,  8,  9, 10, 13, 14, 15, &
 16, 17, 19, 20, 21, 22, 23, 24, 25, 31, 32, 33, 34, 36, 37, 38, 39, 40, &
 42, 43, 44,  8, 10, 13, 14, 16, 17, 20, 21, 23, 24, 25, 31, 32, 34, 36, &
 37, 39, 42, 44,  8, 10, 13, 14, 16, 17, 20, 21, 23, 24, 25, 32, 33, 34, &
 37, 38, 39, 40, 43, 44,  9, 10, 11, 12, 13, 15, 16, 20, 22, 24, 26, 30, &
 31, 32, 34, 35, 36, 37, 39, 41, 42, 44, 45,  9, 10, 14, 15, 16, 17, 18, &
 19, 20, 21, 22, 23, 24, 25, 26, 30, 31, 32, 33, 35, 36, 37, 38, 39, 40, &
 41, 42, 43, 44, 45, 46,  9, 10, 12, 13, 15, 16, 20, 22, 24, 26, 31, 32, &
 34, 36, 37, 39, 42, 44, 45,  9, 10, 14, 15, 16, 17, 19, 20, 21, 22, 23, &
 24, 25, 26, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 10, 13, &
 14, 16, 17, 20, 21, 23, 24, 25, 26, 31, 32, 34, 36, 37, 39, 42, 44, 45, &
 10, 13, 14, 16, 17, 20, 21, 24, 25, 26, 32, 33, 34, 37, 38, 39, 40, 43, &
 44, 45, 46, 10, 13, 14, 16, 17, 20, 21, 23, 24, 25, 26, 32, 33, 34, 37, &
 38, 39, 40, 43, 44, 45, 46, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, &
 22, 23, 24, 25, 26, 27, 34, 35, 36, 37, 39, 41, 42, 44, 45, 13, 15, 16, &
 19, 20, 22, 24, 26, 34, 36, 37, 39, 42, 44, 45, 13, 14, 16, 17, 20, 21, &
 23, 24, 25, 26, 27, 34, 36, 37, 39, 42, 44, 45, 13, 14, 16, 17, 20, 21, &
 23, 24, 25, 26, 27, 34, 37, 38, 39, 40, 43, 44, 45, 46, 13, 14, 16, 17, &
 20, 21, 23, 24, 25, 26, 27, 34, 37, 38, 39, 40, 43, 44, 45, 46, 15, 16, &
 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 35, 36, 37, 38, 39, 40, 41, &
 42, 43, 44, 45, 46, 47, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26, 27, &
 36, 37, 38, 39, 40, 42, 43, 44, 45, 46, 47, 16, 17, 20, 21, 23, 24, 25, &
 26, 27, 36, 37, 39, 42, 44, 45, 16, 17, 20, 21, 23, 24, 25, 26, 27, 37, &
 38, 39, 40, 43, 44, 45, 46, 47, 16, 17, 20, 21, 23, 24, 25, 26, 27, 37, &
 38, 39, 40, 43, 44, 45, 46, 47, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, &
 39, 40, 41, 42, 43, 44, 45, 46, 47, 19, 20, 21, 22, 23, 24, 25, 26, 27, &
 39, 40, 42, 43, 44, 45, 46, 47, 20, 21, 23, 24, 25, 26, 27, 39, 40, 43, &
 44, 45, 46, 47, 23, 24, 25, 26, 27, 42, 44, 45, 23, 24, 25, 26, 27, 43, &
 44, 45, 46, 47, 24, 25, 26, 27, 44, 45, 46, 47, 26, 27, 45, 46, 47  /
 
 
  Data m1/  &
       -3,       -1,       33,        3,       -2,        2,       -6, &
      -26,       -2,       -1,      -39,       91,        1,       12, &
       27,       -1,        9,       11,       15,      -55,       -5, &
       11,      -33,       65,       11,        5,      -33,     -289, &
        1,       13,       -3,     -143,        1,        1,        1, &
      -33,      -36,       -1,       11,        1,      -33,       -8, &
       -1,      -11,      143,      -33,      -13,      -11,      -88, &
      -11,      143,      143,       -1,        7,       33,       -9, &
       99,     -289,      297,        7,       11,      143,     9537, &
      117,      -99,      -11,     -143,      143,       33,        4, &
       11,      289,      297,       10,       16,      -13,       36, &
    -2288,       -1,       -9,       26,      -13,       -1,       -5, &
       -3,       -9,      -13,        6,      -27,        1,       -8, &
        9,        9,       22,      -99,       13,       27,       -1, &
       -9,       -1,      -13,       -5,       -5,        5,       -3, &
      -55,      -13,      -55,       -2,       91,       11,        1, &
      -11,      -16,        2,      -18,      -26,        2,       -1, &
       13,       13,       13,      143,      -65,       35,       13, &
     -143,       13,       -1,       39,       -8,       13,       -1, &
       -1,       -1,       -2,      -55,        1,      125,      -91, &
       22,       11,        1,      -11,       -4,       -8,       -1, &
       -2,      -13,       25,      -26,       -1,      -26,      -13, &
       -4,        1,      -13,      -26,        4,       17,       55, &
        7,     -125,       13,       11,        1,     3179,        4, &
        7,        2,      -13,    -7225,       78,       -3,      -65, &
        4,        9,     3757,      -26,       -4,       17,       13, &
       26,        5,      -65,      143,       13,    -2288,       26, &
        8,       78,    11638,       26,      -11,     -704,     3971, &
        1,      -25,       64,      -68,       11,        1,      -65, &
       -1,      -11,       -5,      -14,      -91,       -3,       26, &
      343,       -7,      361,       13,       26,      -12,      -68, &
       -1,        9,      -13,       91,        5,       45,       -5, &
       -1,      195,        9,       -1,      -13,       -5,       17, &
       13,       -4,       -5,       13,      -26,       -7,      -12, &
       64,        7,       -1,     -578,      -81,       -1,        2, &
       88,      136,      136,       13,        9,       35,      -13, &
       65,       13,       -1,      -81,     -361,     -361,      -81, &
       56,       -1,        4,       -1,      272,      -17,        1, &
      -21,       -7,       -8,       -1,       49,       49,       -3, &
       -1,        1,       28,        7,       -1,        7,       -1, &
        3,      -17,        4,      -17,       19,        7,        3, &
        1,        7,       -7,        7,      867,        9,        9, &
        1,        1,        1,      289,       27,      153,       36, &
      153,      171,        2,       -3,       -7,       14,      -18, &
      -25,        2,       -2,       -4,       27,       -7,     -425, &
      112,       51,      -57,        4,      -17,       12,      -64, &
       36,       -1,      968,       -1,      -51,       85,      -17, &
     -121,      323,       19,       17,        4,      -51,       68, &
       68,      136,      272,      -12,     -112,     -121,       28, &
      -19,      304,        1,       -1,       -8,        1,        9, &
        3,      -19,       19,       19,     -133,        1,       -9, &
        3,        1,       16,        7,       77,       -3,      -11, &
       -6,        3,       11,       33,      117,        4,       12, &
      -11,       11,      -22,      -66,       39,       -6,       11, &
       -1,      -11,       33,      -13,       10,       33,      -33, &
      -11,     -351,     -289,       49,      -13,     -143,       -1, &
      -11,      867,       -3,      -10,     3861,      -13,      -13, &
        3,       11,      -13,      -13,        9,      -13,       11, &
       -8,       36,       64,       11,       32,      165,      -14, &
      -14,       55,      143,      -66,       13,      -11,       88, &
     1408,     -143,      286,      -96,      128,      891,       33, &
      198,     -264,      351,     -143,      132,      -33,      867, &
      297,      -45,       -3,     -117,       18,      429,       -3, &
     -162,       81,     -117,      -39,      198,      297,       15, &
      -13,        1,       96,        9,     -143,       13,       39, &
       -7,        9,     -128,     -297,      -11,      264,     -117, &
       22,      143,      -32,      891,       33,       66,      351, &
     -143,      121,     -289,     3267,     -125,       -5,       91, &
      198,       13,        7,      -99,      -13,       13,     -363, &
    -1215,     -117,      -81,      -11,     1053,      117,    -3159, &
      -63,      234,      -39,       13,      147,       -1,       13, &
       -3,     -256,      -13,      -48,       13,       -1,     -841, &
       -1,      -52,       -3,       -1,      -11,        1,       -1, &
       -3,      -13,       33,      -33,        3,      -11,        3, &
       -3,       -9,       39,        3,       -9,        9,       39, &
       13,       39,       -1,      -11,      -11,       -1,      -39, &
        1,      -48,       -9,      -13,      -13,       -1,       91, &
       13,     -221,       -1,       -8,      -11,        2,        2, &
       26,      121,       -7,     -121,       25,       -5,       -9, &
      325,      -49,      -11,      -91,       13,     -637,       -9, &
      605,       81,     -351,      -81,        1,     1053,     -117, &
       -9,      -13,    -1989,      -13,       13,        1,       -1, &
      -13,      -49,        1,        1,     -143,     -351,      130, &
       27,        9,       -5,        6,       -4,       -3,      -13, &
      -40,       78,      -26,        9,       -4,     -104,       -1, &
      -13,    -1664,        2,    -1768,      -39,      -13,       -9, &
        1,       13,       -9,        3,       -1,      -13,        1, &
        1,     -722,       -3,      119,      -22,     -352,        2, &
      -22,       25,      -14,      -14,        5,      -26,       50, &
       65,       -2,       26,      416,        5,        2,      -26, &
     -104,      -25,       17,       22,      -88,        3,        3, &
      -30,       40,      117,        1,       26,     -104,       -3, &
      -39,       39,      429,       13,      143,      -13,        1, &
       39,    -5819,       13,      -99,       99,       22,     3971, &
        1,      -25,       -6,      -51,       13,       13,     -143, &
       33,       13,      208,       39,     5819,       -1,      -22, &
      -77,        1,        1,      833,        2,      -11,       88, &
       -1,       -1,     -200,      -39,       65,       -1,      104, &
        1,      110,        3,        3,     -250,      117,        1, &
       26,       -3,     -715,      -13,      143,       65,     -325, &
       -7,      429,     -529,      -91,     -121,        2,     -361, &
       11,      175,      -10,      119,     -143,      117,       27, &
     -117,     -143,   -14283,       -3,       54,       -7,      -55, &
      833,     -162,        1,      -35,     -343,       91,       91, &
     -343,     -343,     -361,      -13,      -21,       17,      -11, &
        5,        7,       -2,      -39,       21,       65,       81, &
       39,      -13,       13,      -49,       -9,     -117,        1, &
     -529,        1,     -147,      -51,      -13,        3,       13, &
       -3,      -54,        1,      -32,     -119,      -49,       -2, &
       81,       -6,        3,       -9,      -39,       81,       -3, &
       13,       -9,       51,        8,        8,       27,       -3, &
       26,       78,       27,       -1,     -364,      -52,       -3, &
       17,       13,      117,      -21,       -6,      -18,       63, &
       -6,        3,      867,     -729,       -1,        9,      -99, &
      153,      -51,       26,       13,      -39,       -9,      -32, &
       -3,        6,     1083,     -289,       -3,       -4,       -1, &
       51,       33,       17,     -323,       -4,       -9,       -1, &
        1,      -39,       -9,        1,       26,        1,      -17, &
       20,     -243,       27,       65,     -243,        9,      -26, &
       27,     -153,      143,       65,      343,       -6,       -2, &
     -343,      -11,      289,     3969,       -1,       -7,       -5, &
     -119,     -425,     -143,     3159,      -81,        1,     -486, &
     9747,    23409,      -27,        5,      459,     -243,    -1377, &
    -2907,       65,      637,        1,     -361,      361,    -3969, &
      -14,       -1,      -49,      -68,     -833,      -26,     -585, &
     -117,      -18,     3249,     2187,       -5,        9,      459, &
     -663,     -221,       17,    -2057,      187,     -833,      119, &
    -2499,      147,     -441,     -221,       17,     -221,    -2057, &
    31433,     -833,      -17,       -7,     -833,     -147,       57, &
      273,      -91,     -175,   -71407,     -343,    -6241,        1, &
    -1014,       21,     1275,    44217,       91,       49,      -91, &
   -71407,       49,    -6241,      289,      -17,        7,    14739, &
     -969,      -14,      -14,      -35,        7,       -6,       25, &
        1,       -4,      -64,       25,        1,      -16,        3, &
      425,       16,       85,       19,      -21,       18,      -24, &
       27,        1,       48,      -64,      459,      459,        7, &
       24,       -9,       -1,       -1,       64,     -153,     -153, &
      -21,        6,       27,        1,       16,      459,      459, &
     -343,       -7,     -175,       -1,       -7,        1,        7, &
    -2975,      -28,      357,       57,       63,       -8,      225, &
       27,        3,     3825,    -1377,       -7,     1029,        7, &
      -25,    -2523,       -1,      507,     9639,     -144,      -85, &
       19,       -7,        7,       32,     -841,       -4,      -17, &
     3213,      -85,    -1292,     -119,     -357,      119,      -17, &
       51,      -34,      -51,      -63,     -162,       -5,     2299, &
     -119,      119,      -17,       17,     -136,       -8,      -21, &
       -5,       38,        6,       18,       81,       -6,        3, &
     -363,       -1,      -51,       85,       51,     -363,     -969, &
       57,       32,        3,       -6,      147,      121,        7, &
      -34,      -51,     2401,      -17,      323,      119,        7, &
        6,        2,      -63,      -11,      -11,       49,      -51, &
     -595,       85,       77,    -1615,     -133,       -1,      486, &
     1323,     -891,       21,       17,     7203,     1377,   -26163, &
     1071,       63,      119,      -17,      119,      -68,       28, &
     -847,       -7,     -133,      -76,      -17,     -459,     -153, &
      -16,     1089,      171,    -2261,   -54587,    10659,    20672, &
     3211,     1995,     -627,   -98283,        3,    -2261,     8075, &
     3553,     -323,     4864,      665,   -32761,   861184,   -48223, &
      -42,      384,       -9,       -3,     8619,     -119,     2048, &
     -323,       95,      -14,     -104,       -3,    -1521,     1458, &
     -119,     -323,     -442,       -7,       -6,        3,        3, &
        9,        9,       27,      171,      171,      -57,     -399, &
       -1,        3,        6,        9,        9,      -57,       19, &
       -1,      231,      -11,       25,      -49,       99,      -21, &
      475,     -133,      -95,     6517,       81,       27,      -11, &
       81,     4617,    -1539,       -9,      189,     -513,      171, &
      -57,      -14,   -14792,       -6,      -21,     -171,      -57, &
       38,      -14,       -2,    -1682,     -343,       -3,        7, &
       -4,      343,      -77,       -1,      -27,      -63,        3, &
      -49,      -16,        3,       33,       -7,      -49,        1, &
       -4,     1012,      -11,       11,       -1,      -23,      -11, &
       -1,       49,       46,       -1,        2,       -1,       -1, &
        6  /
 
 
  Data m2/  &
        7,       10,       70,       35,       21,        5,       35, &
      105,       21,       10,      154,      165,        4,       25, &
      100,       84,       40,      840,      196,      882,       24, &
       72,      392,      392,       84,       42,      980,     4410, &
       72,       30,       98,     1960,       10,       14,       32, &
      224,      175,      700,      700,      490,      980,       75, &
    21600,      360,     5400,     7840,     9800,      200,      525, &
     9450,     2700,     3150,       98,       32,     1568,      196, &
     4900,     3430,     6860,       96,      280,     4200,    54880, &
    68600,     1400,      294,     2100,     2450,      196,       49, &
      294,     7350,     6860,      343,      105,      175,     1715, &
    25725,       21,      196,      175,      588,       28,      224, &
       32,      224,      224,      175,     1400,       32,       25, &
      800,      160,      175,     1400,      160,      140,     6048, &
      160,     3360,    30240,       56,       96,       96,       32, &
      168,       96,      504,       77,      792,      168,      168, &
      392,      147,       15,     2695,      147,       33,       56, &
      168,      440,      330,     1512,      462,     2376,       70, &
     5880,      245,       30,     1078,      245,      110,       15, &
       70,      264,       11,      672,       32,     2464,     1056, &
      175,    12600,      126,     4704,      441,       75,    21600, &
      495,      594,    17248,      735,      330,      105,     7560, &
      135,       70,     5280,      495,       99,      396,     4704, &
       32,    17248,     1056,      392,       98,    32928,      343, &
       96,      385,      462,   120736,     1715,      770,     1176, &
      105,      490,    36960,      385,       77,      308,     3528, &
      147,       72,     1176,     5880,    13720,    46305,      189, &
      315,     1715,    77175,     1575,      392,    20475,  3439800, &
       56,      378,     1365,     1365,       72,       66,      792, &
       30,      280,      189,      297,      990,      770,     1575, &
     4950,      225,     1350,      616,     2079,      385,     1155, &
      378,       40,     1848,     5940,      294,     2156,       24, &
       88,     4312,      392,       12,      132,       44,      132, &
      108,       33,      594,      420,      385,      165,      385, &
     2275,      275,       12,     6825,     1300,      462,       77, &
      455,     5005,     3003,      126,      154,      396,      490, &
     6468,      264,      110,     5390,   382200,     1650,     1300, &
      975,       44,       33,     8580,     2145,      572,       32, &
      352,       44,       75,    21600,     3960,    30888,     1760, &
      104,       88,       75,     2700,      702,      468,      220, &
      220,      572,      143,      260,      260,       32,      352, &
       44,       96,      440,     3432,    12320,      728,      616, &
       12,      546,       52,     1540,     1540,     4004,     1001, &
     1820,     1820,       11,       44,      330,      143,      385, &
      546,      231,       91,       39,     1540,      220,    12012, &
      429,     1820,     1820,       33,      132,      385,     2275, &
     1925,       12,     6825,    11700,     1540,     2772,     1365, &
     1365,     1365,      420,      132,       33,     1540,     2275, &
     1925,     6825,     2925,      385,      495,     1365,     3315, &
     1365,     1785,        4,       12,      273,       52,      140, &
      140,       91,     1547,      105,     1020,        4,      140, &
      140,       28,      119,       60,      204,       49,      392, &
       25,       50,      160,      490,     1568,       35,      245, &
     1176,      480,      175,     1225,     1568,       49,     7056, &
        3,     2880,      245,     3136,      147,      784,      320, &
      147,     3136,     1440,     1152,      120,      640,       40, &
      147,     7840,      128,      147,    31360,      160,      128, &
       40,      640,       40,      480,       35,      384,     1920, &
      105,     1225,     1225,     1225,     1715,     5488,       75, &
      675,     2016,     9450,     1715,    10976,      350,     3675, &
    33075,     3024,    11025,     1225,     8575,    27440,     1120, &
     1225,     8575,   274400,     2800,     1225,    19600,    19600, &
    13720,     5488,       70,     1400,     1715,    17150,       56, &
     1225,    39200,     2800,     1568,     1225,  1097600,     5488, &
      640,       70,     1225,    68600,    17150,      200,     2800, &
      200,       49,     1715,    27440,     1120,     1715,   274400, &
      147,     8400,      343,    27440,     1120,      343,   274400, &
     2800,     2352,    13200,    13720,    60368,      462,     2200, &
     1715,     2058,      264,     1568,     1232,     1056,    43904, &
    60368,     7040,      770,     2744,    17150,     2200,    30800, &
     2200,     1925,      440,      880,     1100,       16,     1100, &
       88,     1925,      440,      385,     2640,       48,     5775, &
       88,      825,       35,        5,       35,        7,       21, &
       35,      105,      175,    11200,      448,      784,       98, &
       80,     2695,      784,       44,      175,    11200,      448, &
      880,      880,       70,      105,    62720,       98,     1792, &
       80,     1925,   215600,      784,     1232,       16,      825, &
    70400,    19712,       70,       15,      210,       27,       15, &
      135,     1344,     2112,      784,     3234,      528,      245, &
    25872,     1452,      448,     2112,       80,    29040,      770, &
   112896,     1078,    19712,      880,      784,     8624,    13552, &
      176,     2304,   216832,      280,       80,      120,       10, &
      440,      240,      280,       22,     2646,     3920,     1617, &
      490,       80,      594,      385,      165,       22,      330, &
      363,      385,      363,       77,      495,     1155,       22, &
      990,    38115,       55,    38115,      280,      240,       40, &
       30,     1320,       80,      280,       66,      720,      210, &
       90,     3465,       80,      990,     1225,    11025,      441, &
     1029,     3087,       75,      675,     1386,     2079,     3773, &
     2058,     1155,      735,     6615,      189,      245,     1155, &
     3465,      693,      693,      245,     5145,      343,      770, &
      539,     3773,     3430,       35,      275,     5775,       77, &
      245,    15680,    15680,    27440,    10290,      336,       35, &
     1715,   137200,      700,     1225,    78400,     2275,  3057600, &
      112,      336,      455,      910,     3675,  2195200,    30870, &
     1280,     1008,     1225,   137200,   411600,     1200,     6825, &
     3600,       15,     8960,    11520,      455,       98,     1029, &
      343,      770,     3773,     3430,      294,      105,     1155, &
       77,     1029,      343,      770,     3773,     3430,       35, &
      231,       77,     9408,      960,    27440,    18522,    33264, &
      495,     1715,    49392,     9900,     3136,      819,   561600, &
      112,     4752,     3003,     4290,   790272,     3430,     1280, &
     1232,    16464,   137200,     4400,     2275,      400,    16128, &
    14080,     5005,      120,      432,     2376,     3960,     1800, &
    19800,     3600,     5400,     4158,      220,     1155,      126, &
      112,       88,      231,     1400,      400,     1386,     1540, &
      280,      240,      264,      440,      200,     2200,     5200, &
    54600,       66,     2860,      715,      720,       70,      792, &
      200,     1925,    15600,      225,      990,     2860,      147, &
     8624,       25,       50,     1760,     1078,     7840,       80, &
      165,      176,      880,      315,      735,     8624,     1760, &
      385,     2695,     7840,       80,     2475,      825,      176, &
      880,      840,     6160,      440,      385,     2275,     2200, &
       25,      800,    36400,    10400,      924,      308,     1820, &
     5005,     4004,      225,    67200,     6160,     7040,      275, &
    15400,     2275,    28600,    36400,     1400,      495,    73920, &
     3520,     1820,     4004,     5005,      147,    17248,        3, &
     3520,      539,    15680,      480,      165,      352,     5280, &
     1323,    17248,     3520,     1617,    15680,      160,      297, &
      352,     1760,      840,    13552,    14520,       35,     1001, &
    24200,       96,    48048,   114400,       84,      484,      364, &
     7865,   132132,    24192,    67760,    77440,      168,    25025, &
   314600,   400400,    15400,    12096,    38720,     1820,    44044, &
    55055,     2112,     4224,      440,   124800,     6600,    20800, &
      975,       33,   137280,     2145,     9152,      441,    34496, &
     1408,      539,  2038400,    20800,       99,    45760,     9152, &
     7040,     8448,      880,   249600,     1200,    41600,      975, &
    91520,     1430,    18304,     7040,     1155,    25344,   748800, &
   225225,   124800,      225,      110,    91520,    18304,     1430, &
    15488,     3840,     1936,   549120,    29040,   640640,     2145, &
     4235,     1664,    22022,  7047040,    15488,      363,    11520, &
  1647360,    70785,  1921920,     3465,      242,     1664,  7047040, &
    22022,       75,      675,     3168,     7722,      385,     2912, &
      154,       75,      675,    19656,      117,      385,      385, &
    16016,     1001,     1456,      455,     1760,      275,     1925, &
     2912,      728,      275,     1925,    16016,     7280,     1760, &
      385,     2912,        3,     2184,      385,    16016,     7280, &
     1760,       77,     2912,      728,       77,    16016,     7280, &
     5280,      286,     1248,      462,      104,       39,      880, &
    27456,      429,     4160,     7280,     1760,       77,     2912, &
      728,       77,    64064,    29120,     1760,     7150,    10400, &
      154,    18200,      325,     6160,   228800,    25025,     5824, &
     7280,     5280,    31200,      429,    18200,      525,      275, &
   228800,    17472,     6825,      880,    14300,     5200,      308, &
     9100,      325,      770,     7150,   425425,      182,    15470, &
     2640,    15600,      429,     9100,      525,      275,     7150, &
      546,     6825,      385,     2275,     3850,       25,      800, &
     9100,    10400,     3080,     2464,    14560,     3640,    14560, &
     1120,      275,    15400,     2275,    28600,     9100,     2400, &
      275,   246400,   105600,    14560,    14560,     2600,      160, &
       35,     1001,     6050,       96,     1092,  1029600,      280, &
    34848,    96096,     1560,    96096,     5280,      168,    25025, &
   314600,     9100,     8800,     2688,   387200,   160160,   160160, &
    28600,     1760,     1300,     1925,     1950,     2925,      495, &
     3120,     3315,     3120,     1785,      231,     9100,     4550, &
      231,     7280,     7280,   328900,   487025,   104650,    82225, &
    97405,    52624,   177905,  1841840,   150535,   986700,   108537, &
   104650,     5313,  3548325,    52624,  1841840, 10935925,   408595, &
      299,    44275,     2093,    14950,    70840,     2990,    10465, &
    20930,     1288,      299,     6325,     2093,    32200,     6325, &
     8970,    62790,    12075,     2760,       25,      800,      364, &
      416,      280,     1120,     2912,    12376,     1120,     2720, &
      364,      224,       25,    22400,     2176,     2912,     1120, &
       56,     2720,       96,    12012,     4576,      280,     1760, &
    32032,    19448,     7392,    89760,     4004,     2464,      896, &
    23936,    32032,    12320,      616,     2720,     5005,     1430, &
      616,      715,    85085,       77,     1496,     5005,     3080, &
      935,     2145,       77,     7315,     7752,      560,       64, &
      119,      960,      816,        7,      448,      320,       16, &
      320,       85,       64,     1360,       85,      960,       64, &
       95,     4845,       80,       85,       16,       85,      240, &
       48,      285,      285,        5,        5,       15,       57, &
       19  /
 
  End Function gen_f5
