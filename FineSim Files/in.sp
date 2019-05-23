*** 128 inv chain ***

* finesim option
.inc './option.inc'

.probe v(*)

.param supplyd=1.5v

VDDD2 VDD! 0 supplyd
VSSD2 GND! 0 0

.global VDD! GND!

VIN  IN  0 pwl( 0 0 5n 0 5.3n supplyd )

.meas tran delay trig v(in) val='supplyd/2' rise=1
+                targ v(out) val='supplyd/2' rise=1

.tran 1ps 30n  

.option post

.inc "./model.inc"

X101 IN OUT1 INV32CHN
X102 OUT1 OUT2 INV32CHN
X103 OUT2 OUT3 INV32CHN
X104 OUT3 OUT INV32CHN


*****
* 1 inv
*****

.SUBCKT INV A Z
*MP Z A VDD! VDD!  P  L=+1.40000000E-07 W=+8.00000000E-07
MP Z A VDD! VDD!  P  L=+1.80000000E-07 W=+8.00000000E-07
*N Z A 0    0     N  L=+1.40000000E-07 W=+6.00000000E-07
MN Z A 0    0     N  L=+1.80000000E-07 W=+6.00000000E-07
C1 Z 0 1.5E-15
.ENDS INV

*****
* 8 inv chain
**
.SUBCKT INV8CHN A Z
XI1 A I1 INV
XI2 I1 I2 INV
XI3 I2 I3 INV
XI4 I3 I4 INV
XI5 I4 I5 INV
XI6 I5 I6 INV
XI7 I6 I7 INV
XI8 I7 Z    INV
.ENDS INV8CHN

******
* 32 inv chain
*****

.SUBCKT INV32CHN A Z
XJ1 A  J1 INV8CHN
XJ2 J1 J2 INV8CHN
XJ3 J2 J3 INV8CHN
XJ4 J3  Z INV8CHN
.ENDS INV32CHN

.END
