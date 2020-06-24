!=======================================================================
  Real(8) Function detc_d7 (id,it)
!=======================================================================
! coefficient for determinamt id and term it for subshell d7 
!-----------------------------------------------------------------------
 
  Implicit none
 
  Integer, intent(in)  :: id,it
 
  Integer, parameter :: kd_d7 = 120
  Integer, parameter :: nt_d7 =   8
 
  Integer :: INT_d7 (kd_d7,nt_d7)
 
  Integer :: Norm_d7  = 210
 
  if(id.le.0.or.id.gt.kd_d7) Stop "detc_d7: index id is out of range"
  if(it.le.0.or.it.gt.nt_d7) Stop "detc_d7: index it is out of range"
 
  detc_d7 = dfloat(INT_d7(id,it))/dfloat(Norm_d7)
 
  detc_d7 = dsqrt(dabs(detc_d7))
 
  if(INT_d7(id,it).lt.0) detc_d7=-detc_d7
 

  Data INT_d7 (:,   1)/ &
        0,        0,        0,        0,        0,        0,       12,      -48,      -12,        0,        0,       12, &
       48,      -12,        0,        0,        0,        0,      -54,      -54,        0,        0,      -48,       12, &
      -12,        0,        0,        0,        0,        0,        0,        0,        0,        0,       27,        0, &
       12,      -12,       48,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,       27,       54,       54,        0,        0,      -27,      -27,        0,        0,       16,       16, &
       64,        0,        0,        0,        0,       50,        0,        0,      -32,        2,        0,        0, &
      -50,        0,        0,        0,        1,       32,       -2,        0,        0,        1,        4,        0, &
        0,      -64,      -16,      -16,        0,        0,        0,        0,       -2,       32,        0,        0, &
      -50,        0,        0,        2,      -32,        0,        0,       -4,       -1,       50,        0,        0, &
        0,       -1,        0,        0,        0,        0,        0,        0,       27,       27,      -27,      -27  /

  Data INT_d7 (:,   2)/ &
        0,        0,        0,        0,        0,      126,       42,       42,       42,        0,        0,       42, &
       42,       42,      126,        0,        0,        0,        0,        0,        0,      126,       42,       42, &
       42,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
       42,       42,       42,      126,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,      -42,      -14,      -14, &
      -14,        0,        0,        0,       84,       28,        0,        0,       28,       28,        0,      -84, &
      -28,        0,        0,      168,       56,      -28,      -28,        0,        0,       56,       56,        0, &
        0,      -14,      -14,      -14,      -42,        0,        0,        0,       28,       28,        0,        0, &
       28,       84,        0,      -28,      -28,        0,        0,       56,       56,      -28,      -84,        0, &
        0,       56,      168,        0,        0,        0,        0,        0,        0,        0,        0,        0  /

  Data INT_d7 (:,   3)/ &
       52,       52,       52,       52,        0,        0,      -52,       52,        0,        0,        0,        0, &
      -52,       52,        0,        0,        0,        0,        0,        0,        0,        0,      -52,       52, &
        0,        0,        0,        0,        0,        0,      -52,      -52,      -52,      -52,       52,        0, &
        0,      -52,       52,        0,        0,       52,       52,       52,       52,        0,        0,        0, &
        0,       52,        0,        0,        0,        0,       52,       52,        0,        0,       52,      -52, &
        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,      -52,        0,        0,        0,        0,       52,        0,        0, &
        0,        0,       52,      -52,        0,        0,        0,        0,        0,        0,        0,        0, &
        0,        0,        0,        0,        0,        0,        0,        0,      -52,        0,        0,        0, &
        0,       52,        0,        0,      -52,      -52,      -52,      -52,       52,       52,       52,       52  /

  Data INT_d7 (:,   4)/ &
       50,       50,       50,       50,        0,        0,       -2,      -21,      -40,        0,        0,       40, &
       21,        2,        0,        0,        0,        0,       60,       60,        0,        0,       21,        2, &
       40,        0,        0,       40,        0,      -40,       -2,       21,       21,       -2,       -2,        0, &
      -40,       -2,      -21,        0,        0,      -21,        2,        2,      -21,      -40,        0,       40, &
        0,       -2,       60,       60,        0,        0,       -2,       -2,        0,        0,      -21,       21, &
        0,        0,        0,        0,        0,       60,        0,        0,        0,       60,       60,        0, &
       60,        0,        0,        0,      -21,        0,       60,        0,        0,       21,        0,       60, &
        0,        0,      -21,       21,        0,        0,        0,        0,      -60,        0,        0,        0, &
      -60,        0,       60,      -60,        0,        0,        0,        0,      -21,      -60,        0,        0, &
        0,       21,        0,       60,       21,       21,       21,       21,       21,       21,       21,       21  /

  Data INT_d7 (:,   5)/ &
      -70,      -70,       70,       70,        0,        0,       28,        7,       63,     -105,        0,      -63, &
       -7,      -28,        0,     -105,        0,        0,      -21,      -21,      105,        0,        7,       28, &
       63,        0,        0,        0,        0,        0,      -17,      -17,       17,       17,      -28,      105, &
      -63,      -28,       -7,        0,        0,       17,       17,      -17,      -17,        0,        0,        0, &
        0,      -28,       21,       21,        0,        0,       28,       28,        0,        0,      -14,      -14, &
      -56,        0,        0,       70,        0,        0,      -17,       17,      -10,      -10,      105,        0, &
        0,        0,      -70,        0,       14,       10,       10,       17,      -17,       14,       56,     -105, &
        0,       56,       14,       14,        0,        0,      -17,       17,       10,       10,      -70,        0, &
        0,        0,      105,      -10,      -10,       17,      -17,      -56,      -14,        0,        0,       70, &
        0,      -14,        0,     -105,        0,        0,        0,        0,       63,       63,      -63,      -63  /

  Data INT_d7 (:,   6)/ &
        0,        0,        0,        0,        0,      -84,      -28,      -28,      -28,        0,        0,      -28, &
      -28,      -28,      -84,        0,        0,        0,        0,        0,        0,      -84,      -28,      -28, &
      -28,        0,     -210,      -70,     -210,      -70,      -70,      -70,      -70,      -70,        0,        0, &
      -28,      -28,      -28,      -84,        0,      -70,      -70,      -70,      -70,      -70,     -210,      -70, &
     -210,        0,        0,        0,        0,        0,        0,        0,        0,      168,       56,       56, &
       56,        0,      210,       70,      126,       42,       70,       70,       42,       42,        0,     -126, &
      -42,     -210,      -70,       42,       14,      -42,      -42,      -70,      -70,       14,       14,        0, &
        0,       56,       56,       56,      168,        0,       70,       70,       42,       42,       70,      210, &
       42,      126,        0,      -42,      -42,      -70,      -70,       14,       14,      -42,     -126,      -70, &
     -210,       14,       42,        0,        0,        0,        0,        0,        0,        0,        0,        0  /

  Data INT_d7 (:,   7)/ &
      -18,      -18,      -18,      -18,        0,        0,       36,       -9,        9,       63,        0,       -9, &
        9,      -36,        0,       63,     -126,     -126,      -45,      -45,       63,        0,        9,      -36, &
       -9,        0,        0,       72,        0,      -72,       -3,       27,       27,       -3,       36,       63, &
        9,       36,       -9,        0,        0,      -27,        3,        3,      -27,      -72,        0,       72, &
        0,       36,      -45,      -45,     -126,     -126,       36,       36,      -84,        0,      -30,       30, &
        0,      -84,        0,      -42,        0,       24,      -10,      -90,      -70,       -9,       -3,        0, &
       24,        0,      -42,        0,      -30,      -70,       -9,      -10,      -90,       30,        0,       -3, &
      -84,        0,      -30,       30,        0,      -84,       90,       10,        9,       70,       42,        0, &
      -24,        0,       -3,        9,       70,       90,       10,        0,      -30,      -24,        0,       42, &
        0,       30,        0,       -3,      -72,      -72,      -72,      -72,        9,        9,        9,        9  /

  Data INT_d7 (:,   8)/ &
        7,        7,       -7,       -7,     -210,        0,       -9,       -1,      -16,       42,     -210,       16, &
        1,        9,        0,       42,      -84,      -84,       30,       30,      -42,        0,       -1,       -9, &
      -16,      210,        0,      -28,        0,      -28,       63,        7,       -7,      -63,      -64,      -42, &
       16,        9,        1,        0,      210,       -7,      -63,       63,        7,       28,        0,       28, &
        0,      -64,      -30,      -30,       84,       84,       64,       64,      126,        0,        5,        5, &
       20,     -126,        0,       28,        0,        6,     -112,      -28,       24,       54,       42,        0, &
       -6,        0,      -28,        0,       20,      -24,      -54,      112,       28,       20,       80,      -42, &
      126,      -20,       -5,       -5,        0,     -126,       28,      112,      -54,      -24,      -28,        0, &
       -6,        0,       42,       54,       24,      -28,     -112,      -80,      -20,        6,        0,       28, &
        0,      -20,        0,      -42,      -63,      -63,       63,       63,       36,       36,      -36,      -36  /
 
  End Function detc_d7
