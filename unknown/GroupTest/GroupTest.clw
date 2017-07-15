   PROGRAM

   INCLUDE('Equates.CLW')
   INCLUDE('TplEqu.CLW')
   INCLUDE('Keycodes.CLW')
   INCLUDE('Errors.CLW')
   INCLUDE('iQXML.INC','Equates')
   MAP
     MODULE('GroupTest001.clw')
       Main
     END
     MODULE('Group_SF.CLW')
       CheckOpen(FILE File,<BYTE OverrideCreate>,<BYTE OverrideOpenMode>)
       ReportPreview(QUEUE PrintPreviewQueue)
       Preview:JumpToPage(LONG Input:CurrentPage, LONG Input:TotalPages),LONG
       Preview:SelectDisplay(*LONG Input:PagesAcross, *LONG Input:PagesDown)
       StandardWarning(LONG WarningID),LONG,PROC
       StandardWarning(LONG WarningID,STRING WarningText1),LONG,PROC
       StandardWarning(LONG WarningID,STRING WarningText1,STRING WarningText2),LONG,PROC
       SetupStringStops(STRING ProcessLowLimit,STRING ProcessHighLimit,LONG InputStringSize,<LONG ListType>)
       NextStringStop,STRING
       SetupRealStops(REAL InputLowLimit,REAL InputHighLimit)
       NextRealStop,REAL
       INIRestoreWindow(STRING ProcedureName,STRING INIFileName)
       INISaveWindow(STRING ProcedureName,STRING INIFileName)
       RISaveError
     END
     MODULE('Group_RU.CLW')
     END
     MODULE('Group_RD.CLW')
     END
        INCLUDE('iQXML.INC','Modules')
   END   


SaveErrorCode        LONG
SaveError            CSTRING(255)
SaveFileErrorCode    LONG
SaveFileError        CSTRING(255)
GlobalRequest        LONG(0),THREAD
GlobalResponse       LONG(0),THREAD
VCRRequest           LONG(0),THREAD
!region File Declaration
!endregion

WDataX               FILE,DRIVER('Clarion'),RECLAIM,NAME('WDataX.dat'),PRE(WDX),BINDABLE,CREATE,THREAD
SLNUMKEY                 KEY(WDX:SLNUM),NOCASE,OPT
Record                   RECORD,PRE()
SLNOGROUP                   GROUP
SLNUM                         STRING(9)
CUSTID                        LONG
NAME                          STRING(50)
FIELD                         STRING(15)
CITY                          STRING(50)
GROWER                        STRING(20)
CROP                          STRING(15)
VARIETY                       STRING(20)
DOKNAME                       STRING(10)
DOK                           STRING(10)
YR                            SHORT
D1                            STRING(5)
D2                            STRING(5)
D3                            STRING(5)
D4                            STRING(5)
D5                            STRING(5)
D6                            STRING(5)
D7                            STRING(5)
D8                            STRING(5)
D9                            STRING(5)
REP1                          STRING(5)
REP2                          STRING(5)
REP3                          STRING(5)
REP4                          STRING(5)
REP5                          STRING(5)
REP6                          STRING(5)
REP7                          STRING(5)
REP8                          STRING(5)
REP9                          STRING(5)
LabResultsGroup               GROUP
TN1                             STRING(5)
TN2                             STRING(5)
TN3                             STRING(5)
TN4                             STRING(5)
TN5                             STRING(5)
TN6                             STRING(5)
TN7                             STRING(5)
TN8                             STRING(5)
TN9                             STRING(5)
NO31                            STRING(5)
NO32                            STRING(5)
NO33                            STRING(5)
NO34                            STRING(5)
NO35                            STRING(5)
NO36                            STRING(5)
NO37                            STRING(5)
NO38                            STRING(5)
NO39                            STRING(5)
PHO1                            STRING(5)
PHO2                            STRING(5)
PHO3                            STRING(5)
PHO4                            STRING(5)
PHO5                            STRING(5)
PHO6                            STRING(5)
PHO7                            STRING(5)
PHO8                            STRING(5)
PHO9                            STRING(5)
K1                              STRING(5)
K2                              STRING(5)
K3                              STRING(5)
K4                              STRING(5)
K5                              STRING(5)
K6                              STRING(5)
K7                              STRING(5)
K8                              STRING(5)
K9                              STRING(5)
CA1                             STRING(5)
CA2                             STRING(5)
CA3                             STRING(5)
CA4                             STRING(5)
CA5                             STRING(5)
CA6                             STRING(5)
CA7                             STRING(5)
CA8                             STRING(5)
CA9                             STRING(5)
MG1                             STRING(5)
MG2                             STRING(5)
MG3                             STRING(5)
MG4                             STRING(5)
MG5                             STRING(5)
MG6                             STRING(5)
MG7                             STRING(5)
MG8                             STRING(5)
MG9                             STRING(5)
S1                              STRING(5)
S2                              STRING(5)
S3                              STRING(5)
S4                              STRING(5)
S5                              STRING(5)
S6                              STRING(5)
S7                              STRING(5)
S8                              STRING(5)
S9                              STRING(5)
Z1                              STRING(5)
Z2                              STRING(5)
Z3                              STRING(5)
Z4                              STRING(5)
Z5                              STRING(5)
Z8                              STRING(5)
Z6                              STRING(5)
Z7                              STRING(5)
Z9                              STRING(5)
FE1                             STRING(5)
FE2                             STRING(5)
FE3                             STRING(5)
FE4                             STRING(5)
FE5                             STRING(5)
FE6                             STRING(5)
FE7                             STRING(5)
FE8                             STRING(5)
FE9                             STRING(5)
MN1                             STRING(5)
MN2                             STRING(5)
MN3                             STRING(5)
MN4                             STRING(5)
MN5                             STRING(5)
MN6                             STRING(5)
MN7                             STRING(5)
MN8                             STRING(5)
MN9                             STRING(5)
CU1                             STRING(5)
CU2                             STRING(5)
CU3                             STRING(5)
CU4                             STRING(5)
CU5                             STRING(5)
CU6                             STRING(5)
CU7                             STRING(5)
CU8                             STRING(5)
CU9                             STRING(5)
B1                              STRING(5)
B2                              STRING(5)
B3                              STRING(5)
B4                              STRING(5)
B5                              STRING(5)
B6                              STRING(5)
B7                              STRING(5)
B8                              STRING(5)
B9                              STRING(5)
SON1                            STRING(5)
SON2                            STRING(5)
SON3                            STRING(5)
SON4                            STRING(5)
SON5                            STRING(5)
SON6                            STRING(5)
SON7                            STRING(7)
SON8                            STRING(5)
SON9                            STRING(5)
SLT1                            STRING(5)
SLT2                            STRING(5)
SLT3                            STRING(5)
SLT4                            STRING(5)
SLT5                            STRING(5)
SLT6                            STRING(5)
SLT7                            STRING(5)
SLT8                            STRING(5)
SLT9                            STRING(5)
SND1                            STRING(5)
SND2                            STRING(5)
SND3                            STRING(5)
SND4                            STRING(5)
SND5                            STRING(5)
SND7                            STRING(5)
SND6                            STRING(5)
SND8                            STRING(5)
SND9                            STRING(5)
RecsWaterGroup                  GROUP
NO3W1                             STRING(5)
NO3W2                             STRING(5)
NO3W3                             STRING(5)
NO3W4                             STRING(5)
NO3W5                             STRING(5)
NO3W6                             STRING(5)
NO3W7                             STRING(5)
NO3W8                             STRING(5)
NO3W9                             STRING(5)
PW1                               STRING(5)
PW2                               STRING(5)
PW3                               STRING(5)
PW4                               STRING(5)
PW5                               STRING(5)
PW6                               STRING(5)
PW7                               STRING(5)
PW8                               STRING(5)
PW9                               STRING(5)
KW1                               STRING(5)
KW2                               STRING(5)
KW3                               STRING(5)
KW4                               STRING(5)
KW5                               STRING(5)
KW6                               STRING(5)
KW7                               STRING(5)
KW8                               STRING(5)
KW9                               STRING(9)
SW1                               STRING(5)
SW2                               STRING(5)
SW3                               STRING(5)
SW4                               STRING(5)
SW5                               STRING(5)
SW6                               STRING(5)
SW7                               STRING(5)
SW8                               STRING(5)
SW9                               STRING(5)
RecsFoliarGroup                   GROUP
NO3F1                               STRING(5)
NO3F2                               STRING(5)
NO3F3                               STRING(5)
NO3F4                               STRING(5)
NO3F5                               STRING(5)
NO3F6                               STRING(5)
NO3F7                               STRING(5)
NO3F8                               STRING(5)
NO3F9                               STRING(5)
PF1                                 STRING(6)
PF2                                 STRING(5)
PF3                                 STRING(5)
PF4                                 STRING(5)
PF5                                 STRING(5)
PF6                                 STRING(5)
PF7                                 STRING(5)
PF8                                 STRING(5)
PF9                                 STRING(5)
KF1                                 STRING(5)
KF2                                 STRING(5)
KF3                                 STRING(5)
KF4                                 STRING(5)
KF5                                 STRING(5)
KF6                                 STRING(5)
KF7                                 STRING(5)
KF8                                 STRING(5)
KF9                                 STRING(5)
CF1                                 STRING(5)
CF2                                 STRING(5)
CF3                                 STRING(5)
CF4                                 STRING(5)
CF5                                 STRING(5)
CF6                                 STRING(5)
CF7                                 STRING(5)
CF8                                 STRING(5)
CF9                                 STRING(5)
MGF1                                STRING(5)
MGF2                                STRING(5)
MGF3                                STRING(5)
MGF4                                STRING(5)
MGF5                                STRING(5)
MGF6                                STRING(5)
MGF7                                STRING(5)
MGF8                                STRING(5)
MGF9                                STRING(5)
SF1                                 STRING(5)
SF2                                 STRING(5)
SF3                                 STRING(5)
SF4                                 STRING(5)
SF5                                 STRING(5)
SF6                                 STRING(5)
SF7                                 STRING(5)
SF8                                 STRING(5)
SF9                                 STRING(5)
ZF1                                 STRING(5)
ZF2                                 STRING(5)
ZF3                                 STRING(5)
ZF4                                 STRING(5)
ZF5                                 STRING(5)
ZF6                                 STRING(5)
ZF7                                 STRING(5)
ZF8                                 STRING(5)
ZF9                                 STRING(5)
FEF1                                STRING(5)
FEF2                                STRING(5)
FEF3                                STRING(5)
FEF4                                STRING(5)
FEF5                                STRING(5)
FEF6                                STRING(5)
FEF7                                STRING(5)
FEF8                                STRING(1)
FEF9                                STRING(5)
MNF1                                STRING(5)
MNF2                                STRING(5)
MNF3                                STRING(5)
MNF4                                STRING(5)
MNF5                                STRING(5)
MNF6                                STRING(5)
MNF7                                STRING(5)
MNF8                                STRING(5)
MNF9                                STRING(5)
CUF1                                STRING(5)
CUF2                                STRING(5)
CUF3                                STRING(5)
CUF4                                STRING(5)
CUF5                                STRING(5)
CUF6                                STRING(5)
CUF7                                STRING(5)
CUF8                                STRING(5)
CUF9                                STRING(5)
BF1                                 STRING(5)
BF2                                 STRING(5)
BF3                                 STRING(5)
BF4                                 STRING(5)
BF5                                 STRING(5)
BF6                                 STRING(5)
BF7                                 STRING(5)
BF8                                 STRING(5)
BF9                                 STRING(5)
                                  END
                                END
                              END
                            END
                         END
                     END                       


WDATA                FILE,DRIVER('Clarion'),RECLAIM,NAME('WData.dat'),PRE(WDT),CREATE,BINDABLE,THREAD
SLNUMKEY                 KEY(WDT:SLNUM),NOCASE,OPT,PRIMARY
Record                   RECORD,PRE()
SLNUM                       STRING(9)
CUSTID                      LONG
FIELD                       STRING(15)
NAME                        STRING(50)
CITY                        STRING(50)
GROWER                      STRING(20)
CROP                        STRING(15)
VARIETY                     STRING(20)
DOKNAME                     STRING(10)
DOK                         STRING(10)
YR                          SHORT
D1                          STRING(5)
D2                          STRING(5)
D3                          STRING(5)
D4                          STRING(5)
D5                          STRING(5)
D6                          STRING(5)
D7                          STRING(5)
D8                          STRING(5)
D9                          STRING(5)
REP1                        STRING(5)
REP2                        STRING(5)
REP3                        STRING(5)
REP4                        STRING(5)
REP5                        STRING(5)
REP6                        STRING(5)
REP7                        STRING(5)
REP8                        STRING(5)
REP9                        STRING(5)
TN1                         STRING(5)
TN2                         STRING(5)
TN3                         STRING(5)
TN4                         STRING(5)
TN5                         STRING(5)
TN6                         STRING(5)
TN7                         STRING(5)
TN8                         STRING(5)
TN9                         STRING(5)
NO31                        STRING(5)
NO32                        STRING(5)
NO33                        STRING(5)
NO34                        STRING(5)
NO35                        STRING(5)
NO36                        STRING(5)
NO37                        STRING(5)
NO38                        STRING(5)
NO39                        STRING(5)
PHO1                        STRING(5)
PHO2                        STRING(5)
PHO3                        STRING(5)
PHO4                        STRING(5)
PHO5                        STRING(5)
PHO6                        STRING(5)
PHO7                        STRING(5)
PHO8                        STRING(5)
PHO9                        STRING(5)
K1                          STRING(5)
K2                          STRING(5)
K3                          STRING(5)
K4                          STRING(5)
K5                          STRING(5)
K6                          STRING(5)
K7                          STRING(5)
K8                          STRING(5)
K9                          STRING(5)
CA1                         STRING(5)
CA2                         STRING(5)
CA3                         STRING(5)
CA4                         STRING(5)
CA5                         STRING(5)
CA6                         STRING(5)
CA7                         STRING(5)
CA8                         STRING(5)
CA9                         STRING(5)
MG1                         STRING(5)
MG2                         STRING(5)
MG3                         STRING(5)
MG4                         STRING(5)
MG5                         STRING(5)
MG6                         STRING(5)
MG7                         STRING(5)
MG8                         STRING(5)
MG9                         STRING(5)
S1                          STRING(5)
S2                          STRING(5)
S3                          STRING(5)
S4                          STRING(5)
S5                          STRING(5)
S6                          STRING(5)
S7                          STRING(5)
S8                          STRING(5)
S9                          STRING(5)
Z1                          STRING(5)
Z2                          STRING(5)
Z3                          STRING(5)
Z4                          STRING(5)
Z5                          STRING(5)
Z6                          STRING(5)
Z7                          STRING(5)
Z8                          STRING(5)
Z9                          STRING(5)
FE1                         STRING(5)
FE2                         STRING(5)
FE3                         STRING(5)
FE4                         STRING(5)
FE5                         STRING(5)
FE6                         STRING(5)
FE7                         STRING(5)
FE8                         STRING(5)
FE9                         STRING(5)
MN1                         STRING(5)
MN2                         STRING(5)
MN3                         STRING(5)
MN4                         STRING(5)
MN5                         STRING(5)
MN6                         STRING(5)
MN7                         STRING(5)
MN8                         STRING(5)
MN9                         STRING(5)
CU1                         STRING(5)
CU2                         STRING(5)
CU3                         STRING(5)
CU4                         STRING(5)
CU5                         STRING(5)
CU6                         STRING(5)
CU7                         STRING(5)
CU8                         STRING(5)
CU9                         STRING(5)
B1                          STRING(5)
B2                          STRING(5)
B3                          STRING(5)
B4                          STRING(5)
B5                          STRING(5)
B6                          STRING(5)
B7                          STRING(5)
B8                          STRING(5)
B9                          STRING(5)
SON1                        STRING(5)
SON2                        STRING(5)
SON3                        STRING(5)
SON4                        STRING(5)
SON5                        STRING(5)
SON6                        STRING(5)
SON7                        STRING(7)
SON8                        STRING(5)
SON9                        STRING(5)
SLT1                        STRING(5)
SLT2                        STRING(5)
SLT3                        STRING(5)
SLT4                        STRING(5)
SLT5                        STRING(5)
SLT6                        STRING(5)
SLT7                        STRING(5)
SLT8                        STRING(5)
SLT9                        STRING(5)
SND1                        STRING(5)
SND2                        STRING(5)
SND3                        STRING(5)
SND4                        STRING(5)
SND5                        STRING(5)
SND6                        STRING(5)
SND7                        STRING(5)
SND8                        STRING(5)
SND9                        STRING(5)
NO3W1                       STRING(5)
NO3W2                       STRING(5)
NO3W3                       STRING(5)
NO3W4                       STRING(5)
NO3W5                       STRING(5)
NO3W6                       STRING(5)
NO3W7                       STRING(5)
NO3W8                       STRING(5)
NO3W9                       STRING(5)
NO3F1                       STRING(5)
NO3F2                       STRING(5)
NO3F3                       STRING(5)
NO3F4                       STRING(5)
NO3F5                       STRING(5)
NO3F6                       STRING(5)
NO3F7                       STRING(5)
NO3F8                       STRING(5)
NO3F9                       STRING(5)
PW1                         STRING(5)
PW2                         STRING(5)
PW3                         STRING(5)
PW4                         STRING(5)
PW5                         STRING(5)
PW6                         STRING(5)
PW7                         STRING(5)
PW8                         STRING(5)
PW9                         STRING(5)
PF1                         STRING(6)
PF2                         STRING(5)
PF3                         STRING(5)
PF4                         STRING(5)
PF5                         STRING(5)
PF6                         STRING(5)
PF7                         STRING(5)
PF8                         STRING(5)
PF9                         STRING(5)
KW1                         STRING(5)
KW2                         STRING(5)
KW3                         STRING(5)
KW4                         STRING(5)
KW5                         STRING(5)
KW6                         STRING(5)
KW7                         STRING(5)
KW8                         STRING(5)
KW9                         STRING(9)
KF1                         STRING(5)
KF2                         STRING(5)
KF3                         STRING(5)
KF4                         STRING(5)
KF5                         STRING(5)
KF6                         STRING(5)
KF7                         STRING(5)
KF8                         STRING(5)
KF9                         STRING(5)
CF1                         STRING(5)
CF2                         STRING(5)
CF3                         STRING(5)
CF4                         STRING(5)
CF5                         STRING(5)
CF6                         STRING(5)
CF7                         STRING(5)
CF8                         STRING(5)
CF9                         STRING(5)
MGF1                        STRING(5)
MGF2                        STRING(5)
MGF3                        STRING(5)
MGF4                        STRING(5)
MGF5                        STRING(5)
MGF6                        STRING(5)
MGF7                        STRING(5)
MGF8                        STRING(5)
MGF9                        STRING(5)
SW1                         STRING(5)
SW2                         STRING(5)
SW3                         STRING(5)
SW4                         STRING(5)
SW5                         STRING(5)
SW6                         STRING(5)
SW7                         STRING(5)
SW8                         STRING(5)
SW9                         STRING(5)
SF1                         STRING(5)
SF2                         STRING(5)
SF3                         STRING(5)
SF4                         STRING(5)
SF5                         STRING(5)
SF6                         STRING(5)
SF7                         STRING(5)
SF8                         STRING(5)
SF9                         STRING(5)
ZF1                         STRING(5)
ZF2                         STRING(5)
ZF3                         STRING(5)
ZF4                         STRING(5)
ZF5                         STRING(5)
ZF6                         STRING(5)
ZF7                         STRING(5)
ZF8                         STRING(5)
ZF9                         STRING(5)
FEF1                        STRING(5)
FEF2                        STRING(5)
FEF3                        STRING(5)
FEF4                        STRING(5)
FEF5                        STRING(5)
FEF6                        STRING(5)
FEF7                        STRING(5)
FEF8                        STRING(1)
FEF9                        STRING(5)
MNF1                        STRING(5)
MNF2                        STRING(5)
MNF3                        STRING(5)
MNF4                        STRING(5)
MNF5                        STRING(5)
MNF6                        STRING(5)
MNF7                        STRING(5)
MNF8                        STRING(5)
MNF9                        STRING(5)
CUF1                        STRING(5)
CUF2                        STRING(5)
CUF3                        STRING(5)
CUF4                        STRING(5)
CUF5                        STRING(5)
CUF6                        STRING(5)
CUF7                        STRING(5)
CUF8                        STRING(5)
CUF9                        STRING(5)
BF1                         STRING(5)
BF2                         STRING(5)
BF3                         STRING(5)
BF4                         STRING(5)
BF5                         STRING(5)
BF6                         STRING(5)
BF7                         STRING(5)
BF8                         STRING(5)
BF9                         STRING(5)
                         END
                     END                       
Sort:Name            STRING(ScrollSort:Name)                
Sort:Name:Array      STRING(3),DIM(100),OVER(Sort:Name)
Sort:Alpha           STRING(ScrollSort:Alpha)
Sort:Alpha:Array     STRING(2),DIM(100),OVER(Sort:Alpha)


  CODE
  Main
!---------------------------------------------------------------------------
