RequireAdmin()
#NoTrayIcon
#SingleInstance Off
#Persistent
#NoEnv
#Include ..\..\Library\classMemory.ahk
#Include ..\..\Library\FunClickShare.ahk
;#Include ..\..\Library\MoKey_AIO.ahk
#Include ..\..\Library\FunSup.ahk
;#Include ..\..\Library\Pointer155.ahk
#Include ..\..\Library\Fun155.ahk
#Include ..\..\Library\Gdip.ahk

SetBatchLines -1
SetKeyDelay,10,10
CoordMode Mouse,Window
SetTitleMatchMode, 2
DetectHiddenWindows, on
FileEncoding,UTF-16
AutoTrim,Off

if (_ClassMemory.__Class! = "_ClassMemory")
{
	msgbox ClassMemory không được cài đặt chính xác. Hoặc biến (lớp toàn cục) "_ClassMemory" đã bị ghi đè
	ExitApp
}
Gui  1:+hwndhGui
Gui 1:Font,, 
Gui 1:Add, DropDownList, vCurrent_WinTitle gCurrent_WinTitle x10 y3 w110 h20 +R5  , 
Gui 1:Font
Gui 1:Font,, 
Gui 1:Add, Button, vvRunAuto ggRunAuto x125 y3 w40 h24 +Disabled, Run
Gui 1:Font
Gui 1:Font,, 
Gui 1:Add, Button, vvPauseAuto ggPauseAuto x125 y3 w40 h24  +Hidden, Pause
Gui 1:Font
Gui 1:Font,, 
Gui 1:Add, Button, vSaveSetting gSaveSetup x215 y3 w38 h24 +Disabled, Save
Gui 1:Font
Gui 1:Font,, 
Gui 1:Add, Button, vOpenSetting gOpenFile x170  y3 w40 h24 +Disabled, Open
Gui 1:Font


Gui 1:Font,, 
Gui 1:Add, Tab3, x0 y32 w342 h490,Set|Target-Skill|Exten|Other|◦◦◦
Gui 1:Font


Gui 1:Tab, 1
Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y60 w251 h80,Control
Gui 1:Font

Gui 1:Font, s7 cBlue, 
Gui 1:Add, Button, vvShowHide ggShowHide x10 y110 w70 h21 Disabled, Show/Hide
Gui 1:Font

Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vSetSync gSetSync x10  y80 w45 h20 Disabled,Sync
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vAutoFollow gAutoFollow x60  y80 w75 h20 Disabled,AutoFollow  ;Dis:
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit,vDisTo_Player gSubmit x140  y79  w30 h19 +Disabled Number ,15
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vAutoReBuff gSubmit x175  y80 w75 h20 Disabled,AutoReBuff
Gui 1:Font


Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y150 w251 h80,Set Revival
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vvBackVilla ggBackVilla x10  y170 w60 h20  +Disabled,Về Làng
Gui 1:Font
Gui 1:Font,s7 cBlue, 
Gui 1:Add, CheckBox, vvAmulet ggAmulet x75 y170 w60 h20  +Disabled ,Bùa HS
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vvSkillRevival ggSkillRevival x140  y170 w70 h20  +Disabled ,Kỹ Năng
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, Text, x10  y203 w50 h19 +0x200,  CountDie     
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vvCountRevival gSubmit x65  y200  w40 h19  Number,1000
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, Text, x120  y203 vvTimesDied  w120 h23 ,Times Died : 0
Gui 1:Font


Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y230 w251 h180,Set Fly and Map
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vGetOrigi gGetOrigi x9 y250 w95 h20  +Disabled,Get Point Origi
Gui 1:Font
Gui 1:Font, cBlue, 
Gui 1:Add, Edit, vMaxDisR gSubmit x120  y250 w35 h21 +Number ,50
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vGetMap gGetMap x9 y270 w65 h21 +Disabled, Get Map
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vGetFlag gGetFlag x9 y295 w65 h21 +Disabled, Get Flag
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vGetTabFly gGetTabFly x9 y320 w80 h21 +Disabled, Fly Height :
Gui 1:Font
Gui 1:Font, cBlue, 
Gui 1:Add, Edit, vFlyHeight gSubmit x91 y320 w35 h21 +Number ,27
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox, vGetSaveFly gGetSaveFly x9 y340 w80 h21 +Disabled, Save Fly 
Gui 1:Font
Gui 1:Add, StatusBar, cBlue, Status Bar



Gui 1:Tab,2
Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y60 w251 h70,Set Target
Gui 1:Font
Gui 1:Font,s7 cBlue, 
Gui 1:Add, Text,  x10  y80 w55 h18 ,Distance  : 
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vDistanceTrain gSubmit x70 y79 w30 h18 number  ,80
Gui 1:Font

Gui 1:Font,s7 cBlue, 
Gui 1:Add, Text,  x115 y80 w40 h18 ,Height : 
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vMinHeight gSubmit x170 y79 w30 h18 number  ,0
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vMaxHeight gSubmit x210 y79 w30 h18 number  ,80
Gui 1:Font


Gui 1:Font,s7 cBlue, 
Gui 1:Add, Text,  x10  y105 w55 h18 ,Mobs LvL : 
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vLvlMin_Mod gSubmit x70 y103 w30 h18 number  ,1
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vLvlMax_Mod gSubmit x115 y103 w35 h18 number  ,150
Gui 1:Font


Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x3 y135 w251 h83, 
Gui 1:Add, CheckBox,vSkill_TL  gSkill_TL   x10 y135 w50 h18 Checked ,Skill Tinh Linh
Gui 1:Font
Gui 1:Font, s6 cBlue, 
Gui 1:Add, CheckBox,vSkill_TL1  gSkill_TL1   x10 y155 w50 h18 ,Skill_1
Gui 1:Add, CheckBox,vSkill_TL2  gSkill_TL2   x10 y175 w50 h18 ,Skill_2
Gui 1:Add, CheckBox,vSkill_TL3  gSkill_TL3   x10 y195 w50 h18 ,Skill_3
Gui 1:Add, CheckBox,vSkill_TL4  gSkill_TL4   x88 y155 w50 h18 ,Skill_4
Gui 1:Add, CheckBox,vSkill_TL5  gSkill_TL5   x88 y175 w50 h18 ,Skill_5
Gui 1:Add, CheckBox,vSkill_TL6  gSkill_TL6   x88 y195 w50 h18 ,Skill_6
Gui 1:Add, CheckBox,vSkill_TL7  gSkill_TL7   x166 y155 w50 h18 ,Skill_7
Gui 1:Add, CheckBox,vSkill_TL8  gSkill_TL8   x166 y175 w50 h18 ,Skill_8


Gui 1:Font, s7 cBlue, 
Gui 1:Add, Edit, vDLSkill_TL1 gSubmit x61 y155 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL2 gSubmit x61 y176 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL3 gSubmit x61 y195 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL4 gSubmit x139 y155 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL5 gSubmit x139 y175 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL6 gSubmit x139 y195 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL7 gSubmit x217 y155 w25 h18 number  ,15
Gui 1:Add, Edit, vDLSkill_TL8 gSubmit x217 y175 w25 h18 number  ,15
Gui 1:Font





Gui 1:Font,cRed,  
Gui 1:Add, GroupBox, x2 y220 w251 h195,Skill
Gui 1:Font

;Gui 1:Font, s7 cBlue, 
;Gui 1:Add, CheckBox, vCommon_Attack gCommon_Attack x10 y240 w120 h20 +Disabled,Normal Attack
;Gui 1:Font

;Gui 1:Font, s7 cBlue, 
;Gui 1:Add, CheckBox, vUse_All_Skill gUse_All_Skill x150 y240 w90 h20 +Disabled,Use Full Skill
;Gui 1:Font

Gui 1:Font,s7,
Gui 1:Add, DropDownList, vCBSkill_At1 gCBSkill_At1 x10 y260 w130 h20  +R20,Combo_Skill||1|2|3|4|5|6|7|8|9
Gui 1:Font
Gui 1:Font,s7, 
Gui 1:Add, DropDownList, vCBSkill_At2 gCBSkill_At2 x10 y285 w130 h20  +R20,Combo_Skill||1|2|3|4|5|6|7|8|9
Gui 1:Font
ArNumCS := ["Combo_Skill",1,2,3,4,5,6,7,8,9]

Gui 1:Add, Edit,cBlue vCBSkill_CD1  gSubmit  x150 y260 w40    Number,5000
Gui 1:Add, Edit,cBlue vCBSkill_DL1  gSubmit  x200 y260 w40    Number,5000

Gui 1:Add, Edit,cBlue vCBSkill_CD2  gSubmit  x150 y285 w40    Number,5000
Gui 1:Add, Edit,cBlue vCBSkill_DL2  gSubmit  x200 y285 w40    Number,5000


Gui 1:Font,s7,
Gui 1:Add, DropDownList, vCBSkill_RB1 gCBSkill_RB1 x10 y310 w130 h20  +R10,Combo_Rebuff||1|2|3|4|5|6|7|8|9
Gui 1:Add, DropDownList, vCBSkill_RB2 gCBSkill_RB2 x10 y335 w130 h20  +R10,Combo_Rebuff||1|2|3|4|5|6|7|8|9
ArNumCR := ["Combo_Rebuff",1,2,3,4,5,6,7,8,9]

Gui 1:Add, Edit,cBlue vCBSkill_RCD1  gSubmit  x150 y310 w40  h20  Number,6000
Gui 1:Add, Edit,cBlue vCBSkill_RDL1  gSubmit  x200 y310 w40  h20  Number,900000

Gui 1:Add, Edit,cBlue vCBSkill_RCD2  gSubmit  x150 y335 w40  h20  Number,500
Gui 1:Add, Edit,cBlue vCBSkill_RDL2  gSubmit  x200 y335 w40  h20  Number,30000



Gui 1:Add, DropDownList,   x10 y360 w130 h20 Disabled +R10,
Gui 1:Add, Edit,cBlue   gSubmit  x150 y360 w40  h20 Disabled Number,
Gui 1:Add, Edit,cBlue   gSubmit  x200 y360 w40  h20 Disabled Number,

Gui 1:Font,s7, 
Gui 1:Add, DropDownList,vNum_CN gNum_CN  x10 y385 w60 h20 Disabled +R5,|2 CN|3 CN ; 
Gui 1:Font
Gui 1:Font,s7, 
Gui 1:Add, DropDownList,vSkill_X gSubmit  x80 y385 w160 h20  +R20,Skill X||1|2|3|4|5|6|7|8|9 ; 
Gui 1:Font

ArNum := [1,2,3,4,5,6,7,8,9]




Gui 1:Tab, 3

Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y60 w251 h70,◦◦◦
Gui 1:Font
Gui 1:Font,s7 cBlue, 
Gui 1:Add, CheckBox,vvDefence gSubmit x10 y75 w70 h20 +Disabled,Defence ;
Gui 1:Font
Gui 1:Font,s7 cBlue, 
Gui 1:Add, CheckBox,vvSkyEye  ggSkyEye  x110 y75 w70 h20 +Disabled,SkyEye
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, Text, x10 y105 w90 h23 ,Delay Find Char :
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vvDelayFindChar gSubmit x110 y100 w30 h21 number ,3
Gui 1:Font

;IfExist,AutoPT.exe
;{
	;Gui 1:Font,cRed, 
	;Gui 1:Add, GroupBox, x2 y150 w251 h50,Set Party
	;Gui 1:Font
	;Gui 1:Font,s7 cBlue, 
	;Gui 1:Add, CheckBox,vPassPT gPassPT x10 y170 w80 h20 ,Auto Party ;
	;Gui 1:Font
;}  
;Gui 1:Font,cBlue, 
;Gui 1:Add, Edit, vDelta gSubmit x10 y150 w30 h21 number Disabled,38
;Gui 1:Font

Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y135 w251 h60,
Gui 1:Font
;Gui 1:Font,cBlue,
;Gui 1:Add, CheckBox,vPickUp gPickUp x10 y135 w65 h20 Disabled ,PickUp
;Gui 1:Add, CheckBox,vPickUpAll gPickUpAll x10 y155 w120 h20 Disabled ,PickUp_All ;||F1|F2|F3|F4|F5|F6|F7|F8|  +R10
;Gui 1:Add, Edit, vDelayPic gSubmit x160 y152 w40 h21 number ,500
;Gui 1:Font




Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y200 w251 h85,
Gui 1:Font

Gui 1:Add, CheckBox,cRed vChange_Weapon gChange_Weapon   x10 y200 w120 h18 +Disabled,Change Repair
Gui 1:Font,cBlue,
Gui 1:Add, Text,  x140 y222 w65 h20 ,Max Relia :
Gui 1:Add, Text,cBlue vMaxRelia  gSubmit  x210 y220 w30 h20  ,---

Gui 1:Add, DropDownList,vKey_ChangeWeapon1  gSubmit  x10  y220 w120 h20 Disabled +R10,Weapon||F1|F2|F3|F4|F5|F6|F7|F8|
Gui 1:Add, DropDownList,vKey_ChangeWeapon2  gSubmit  x10  y240 w120 h20 Disabled +R10,Weapon||F1|F2|F3|F4|F5|F6|F7|F8|
Gui 1:Add, DropDownList,vKey_ChangeWeapon3  gSubmit  x10  y260 w120 h20 Disabled +R10,Weapon||F1|F2|F3|F4|F5|F6|F7|F8|
Gui 1:Add, CheckBox,vRepair_Vip  gRepair_Vip  x140  y240 w100 h20 Disabled ,Repair VIP
Gui 1:Font
ArWe := ["Weapon","F1","F2","F3","F4","F5","F6","F7","F8"]

Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x2 y290 w251 h140,Exten Keys
Gui 1:Font

Gui 1:Font, s7 cBlue, 

Gui 1:Add, DropDownList, vKey_Exten1 gKey_Exten1 x10 y310 w120 h20  +R10,Key_Exten||1|2|3|4|5|6|7|8|9
Gui 1:Add, Edit, vKey_ExtenCD1 gSubmit number x140 y312 w55 h20 ,0
Gui 1:Add, Edit, vKey_ExtenDL1 gSubmit x200 y310 w40 h20 number ,3610000

Gui 1:Add, DropDownList, vKey_Exten2 gKey_Exten2 x10 y330 w120 h20  +R10,Key_Exten||1|2|3|4|5|6|7|8|9
Gui 1:Add, Edit, vKey_ExtenCD2 gSubmit number  x140 y332 w55 h20 ,0
Gui 1:Add, Edit, vKey_ExtenDL2 gSubmit x200 y330 w40 h20 number ,1000

Gui 1:Add, DropDownList, vKey_Exten3 gKey_Exten3 x10 y350 w120 h20  +R10,Key_Exten||1|2|3|4|5|6|7|8|9
Gui 1:Add, Edit, vKey_ExtenCD3 gSubmit number  x140 y352 w55 h20 ,0
Gui 1:Add, Edit, vKey_ExtenDL3 gSubmit x200 y350 w40 h20 number ,1000

Gui 1:Add, DropDownList, vKey_Exten4 gKey_Exten4 x10 y370 w120 h20  +R10,Key_Exten||1|2|3|4|5|6|7|8|9
Gui 1:Add, Edit, vKey_ExtenCD4 gSubmit number  x140 y372 w55 h20 ,0
Gui 1:Add, Edit, vKey_ExtenDL4 gSubmit x200 y370 w40 h20 number ,1000

Gui 1:Add, DropDownList, vKey_Exten5 gKey_Exten5 x10 y390 w120 h20  +R10,Key_Exten||1|2|3|4|5|6|7|8|9
Gui 1:Add, Edit, vKey_ExtenCD5 gSubmit number  x140 y392 w55 h20 ,0
Gui 1:Add, Edit, vKey_ExtenDL5 gSubmit x200 y390 w40 h20 number ,1000
ArNumCE := ["Key_Exten",1,2,3,4,5,6,7,8,9]
Gui 1:Font


Gui 1:Tab,4

;Tit
Gui 1:Font,cRed, 
Gui 1:Add, GroupBox,vTit_Set1 x2 y55 w251 h170 ,
Gui 1:Font
Gui 1:Font,s7 cRed, 
Gui 1:Add, CheckBox,vCall_Pet gCall_Pet x9 y55 w65 h20 Disabled ,Use Pet ;
Gui 1:Font
Gui 1:Font,s8 cBlue, 
Gui 1:Add, Text,vTit_Set2 x9 y75 w65 h20 ,Pet Name:
Gui 1:Add, Text,vPetName gSubmit x70 y75 w100 h20 ,******
Gui 1:Add, Text,vTit_Set3 x9 y95 w65 h23 ,Pet Level:
Gui 1:Add, Text,vPetLvl gSubmit x70 y95 w20 h23 ,******
Gui 1:Add, Text,vTit_Set4 x9 y115 w60 h23 ,Pet Hp   :
Gui 1:Add, Text,vPetHp gSubmit x70 y115 w60 h23 ,******
Gui 1:Font

Gui 1:Font,s8 cBlue, 
Gui 1:Add, Text,  x150 y87 w30 h20 ,Heal:
Gui 1:Add, DropDownList,cBlue vHeal_Pet gHeal_Pet x180 y85 w35 h20  +R10,F1||F2|F3|F4|F5|F6|F7|F8|
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vnPercentHpPet gSubmit x220 y85 w25 h21 number  ,75
Gui 1:Font
Gui 1:Font,s8 cBlue, 
Gui 1:Add, Text,  x150 y107 w30 h20 ,ReV:
Gui 1:Add, DropDownList,cBlue vRevival_Pet gRevival_Pet x180 y105 w35 h20  +R10,F1|F2||F3|F4|F5|F6|F7|F8|
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vvCRevival_Pet gSubmit x220 y105 w25 h21 number  ,3
Gui 1:Font
Gui 1:Font,s8 cBlue, 
Gui 1:Add, Text,  x150 y127 w30 h20 ,Pet:
Gui 1:Add, DropDownList,cBlue vKey_Pet gSubmit x180 y125 w35 h20  +R10,F1|F2|F3||F4|F5|F6|F7|F8|
Gui 1:Add, DropDownList,cBlue vLoyal_Pet  x220 y125 w25 h20 Disabled +R10,F1|F2|F3|F4||F5|F6|F7|F8|

Gui 1:Add, CheckBox,vAttack_First gSubmit  x10 y135 w80 h20  ,Attack First  ;


Gui 1:Font, s6 cBlue, 
Gui 1:Add, CheckBox,vSkill_Pet1 gSkill_Pet1   x10 y155 w50 h18 ,Skill 1
Gui 1:Add, CheckBox,vSkill_Pet2 gSkill_Pet2   x10 y175 w50 h18 ,Skill 2
Gui 1:Add, CheckBox,vSkill_Pet3 gSkill_Pet3   x10 y195 w50 h18 ,Skill 3
Gui 1:Add, CheckBox,vSkill_Pet4 gSkill_Pet4   x88 y155 w50 h18 ,Skill 4
Gui 1:Add, CheckBox,vSkill_Pet5 gSkill_Pet5   x88 y175 w50 h18 ,Skill 5
Gui 1:Add, CheckBox,vSkill_Pet6 gSkill_Pet6   x88 y195 w50 h18 ,Skill 6
Gui 1:Add, CheckBox,vSkill_Pet7 gSkill_Pet7  x166 y155 w50 h18 ,Skill 7


Gui 1:Font, s7 cBlue, 
Gui 1:Add, Edit, vDLSkill_Pet1 gSubmit x61 y155 w25 h18 number  ,2
Gui 1:Add, Edit, vDLSkill_Pet2 gSubmit x61 y176 w25 h18 number  ,2
Gui 1:Add, Edit, vDLSkill_Pet3 gSubmit x61 y195 w25 h18 number  ,33
Gui 1:Add, Edit, vDLSkill_Pet4 gSubmit x139 y155 w25 h18 number  ,999
Gui 1:Add, Edit, vDLSkill_Pet5 gSubmit x139 y175 w25 h18 number  ,31
Gui 1:Add, Edit, vDLSkill_Pet6 gSubmit x139 y195 w25 h18 number  ,31
Gui 1:Add, Edit, vDLSkill_Pet7 gSubmit x217 y155 w25 h18 number  ,999
Gui 1:Font






ArFa := ["F1","F2","F3","F4","F5","F6","F7","F8"]
;TT
Gui 1:Font,cRed, 
Gui 1:Add, GroupBox,vTT_Set x2 y230 w251 h180 ,
Gui 1:Font
Gui 1:Font,s7 cBlue, 
Gui 1:Add, CheckBox,vGetSkillTrans gGetSkillTrans x9 y230 w50 h20  Disabled,Trans ;
Gui 1:Add, DropDownList, vSkillTrans gSkillTrans x10 y250 w130 h20 Disabled +R10,F1||F2|F3|F4|F5|F6|F7|F8|
Gui 1:Font

;VL
;Gui 1:Font,cRed, 
;Gui 1:Add, GroupBox,vVL_Set1 x2 y55 w251 h85 +Hidden,
;Gui 1:Font
;Gui 1:Font,s7 cRed, 
;Gui 1:Add, CheckBox,vUse_VL_Tool gUSe_VL_Tool x9 y55 w90 h20 Disabled +Hidden,Use VL Tool ;
;Gui 1:Font

;Gui 1:Font,s8 cBlue, 
;Gui 1:Add, CheckBox,vHeal_Pt x9 y75 w65 h20 +Hidden Disabled,Heal Pt
;Gui 1:Add, CheckBox,vRevival_Pt x9 y95 w65 h23 +Hidden Disabled,ReV Pt
;Gui 1:Add, CheckBox,vDeToXi_Pt x9 y115 w80 h23 +Hidden Disabled,DeToXi Pt
;Gui 1:Font

;Gui 1:Font,s8 cBlue, 
;Gui 1:Add, CheckBox,vVL_Set3  x140 y95 w70 h20 Disabled +Hidden,...
;Gui 1:Font
;Gui 1:Font,s8 cBlue, 
;Gui 1:Add, CheckBox,vVL_Set4  x140 y115 w70 h20 Disabled +Hidden,...
;Gui 1:Font




;Gui 1:Font,cRed, 
;Gui 1:Add, GroupBox, x2 y250 w251 h140,
;Gui 1:Font

;Gui 1:Font,s8 cBlue, 

;Gui 1:Add, Text, x9 y280 w65 h20 ,Follow :
;Gui 1:Add, Edit, vHKfollow gHKfollow x90 y280 w30 h21 ,f

;Gui 1:Add, Text, x9 y310 w65 h20 ,ReBuff :
;Gui 1:Add, Edit, vHKRebuff gHKRebuff x90 y310 w30 h21 ,b




Gui 1:Tab,5

Gui 1:Font,cRed, 
Gui 1:Add, GroupBox, x3 y230 w251 h160, Setup Click
Gui 1:Font
Gui 1:Font, s7 cBlue, 
Gui 1:Add, CheckBox,vClick_TT gClick_TT   x10 y250 w90 h18 +Disabled,Click Tuần Tự
Gui 1:Font
Gui 1:Font, s6 cBlue, 
Gui 1:Add, Text, x6 y266 w245 h18 +0x200, MOUSE         COLD      Delay     REPEAT
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, ComboBox,cBlue vvMouseStyle gSubmit x9 y284 w56 h18, Left||Right
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vvColDownClick gSubmit x68 y285 w30 h24 Number,3
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vvDelayClick gSubmit x110 y285 w30 h24 Number,1
Gui 1:Font
Gui 1:Font,cBlue, 
Gui 1:Add, Edit, vvRepeatClick gSubmit x160 y285 w30 h24 Number,0
Gui 1:Font
Gui 1:Font,, 
Gui 1:Add, Button, vGetPoint gGetPoint x200 y285 w40 h24 +Disabled,GetP
Gui 1:Font


Menu, 1:MyContextMenu, Add, Del , DellList
Menu, 1:MyContextMenu, Icon, Del,shell32.dll,132
Menu, 1:MyContextMenu, Add, Del All, DellList
Menu, 1:MyContextMenu, Icon, Del All,shell32.dll,272
;Menu, 1:MyContextMenu, Add,
Gui 1:Font,s6 cBlue, 
Gui 1:Add, ListView,cBlue vvListClick  Hdr AltSubmit x8 y310 w240 h70 +LV0x4000 , Mouse|X|Y|ColDw|Delay|Rpeat|Note
Gui 1:Font






;Gui 1:Add, Edit, vShowAdd  x10 y150 w120 h21 ,



Gui 1:Font,cBlue, 
Gui 1:Add, Link,x40 y400, Link video hướng dẫn : <ahref="https://youtu.be/v6mpwBohe1g">Link</a>
Gui 1:Font


;List Weapon
global ListWpBlade := ["Song Kiếm","Đơn Kiếm","Đơn Đao","Song Đao"]
global ListWpSpear := ["Trường Đao","Thương Kích","Thang"]
global ListWpAxe := ["Trường Phủ","Song Phủ","Trường Chùy","Song Chùy"]
global ListWpGlove := ["Thiết Quyền","Lợi Nhận"]
global ListWpBow := ["Cung","Nỗ","Đạn Cung"]
global ListWpMg := ["Đoản Trượng","Phiên Trượng","Pháp Kiếm","Bảo Luân"]





Global ClassKK := ["Song Kiếm","Đơn Kiếm","Đơn Đao","Song Đao"
				,"Trường Đao","Thương Kích","Thang"
				,"Trường Phủ","Song Phủ","Trường Chùy","Song Chùy"
				,"Thiết Quyền","Lợi Nhận"]
Global ClassPS := ["Đoản Trượng","Phiên Trượng","Pháp Kiếm","Bảo Luân"]
Global ClassTT := ["Song Kiếm","Đơn Kiếm","Đơn Đao","Song Đao","Trường Đao"
				,"Thương Kích","Thang","Trường Phủ","Song Phủ"
				,"Trường Chùy","Song Chùy","Thiết Quyền","Lợi Nhận"]
Global ClassTiT := ["Đoản Trượng","Phiên Trượng","Pháp Kiếm","Bảo Luân"]
Global ClassVL := ["Đoản Trượng","Phiên Trượng","Pháp Kiếm","Bảo Luân"]
Global ClassVM := ["Cung","Nỗ","Đạn Cung"]
Global ClassTK := ["Chủy Thủ"]
Global ClassVS := ["Pháp Bảo"]
Global ClassKL := ["Song Kiếm","Đơn Kiếm","Đơn Đao","Song Đao"]
Global ClassML := ["Đoản Trượng","Phiên Trượng","Pháp Kiếm","Bảo Luân"]
Global ClassDA := ["Long Đao"]
Global ClassNT := ["Nguyệt Liêm"]


Global AllClass := {"Kiếm•Khách":ClassKK
				,"Pháp•Sư":ClassPS
				,"Thần•Thú":ClassTT
				,"Tiên•Thú":ClassTiT
				,"Vũ•Linh":ClassVL
				,"Vũ•Mang":ClassVM
				,"Thích•Khách":ClassTK
				,"Vu•Sư":ClassVS
				,"Kiếm•Linh":ClassKL
				,"Mỵ•Linh":ClassML
				,"Dạ•Ảnh":ClassDA
				,"Nguyệt•Tiên":ClassNT}





Global Current_WinTitle
Global CharOjb
Global PauseA := True
Global Refresh := 100
Global DeCTarget := 500
Global TimeMoveTo := 4000
Global countHS := 0 
Global X_Border
Global Y_Border
Global SeverName := "Version155"
Global i_Update
Global PointerM
Global pTemp
Global DistanceTrain
Global XtrainOrigi
Global YtrainOrigi
global OldModId


Global GetOrigi



Global LvlMin_Mod
Global LvlMax_Mod
Global MinHeight
Global MaxHeight
Global NeedModName := ""  



;Target
Global addInjCodTarget 
Global addWritValTarget

;Follow
Global Player_TargetID := ""
Global Player_TargetIDs := ""
Global Player_TargetName := ""
Global Delta
Global xFollow
Global yFollow
Global addInjCodFollow


;Send Key 
Global addInjCodUseKey


;Fly
Global addInjCodFly

;Skill TL
Global addInjCodSkillTL


;Use Items
Global addInjCodUseItems
Global addWritValPOS
global arPosWeapon

;Common_Attack
global addInjCod_Common_Attack


;Call Pet
Global addInjCodCallPet
Global CRevival_Pets
Global addInjCodReCallPet
Global Heal_Pet
Global Revival_Pet
Global Key_Pet

;PickUp
Global addInjCodPickUp := ""

;Trans
Global Transing  := ""
Global SkillTrans 




Global CurrentGameClass := "ElementClient Window"
Global Patch_Working1
Global Patch_Working2

;Gui +OwnDialogs
;MsgBox,,, Đề nghị đọc kỹ file ReadMe trước khi sử dụng !

Global BaseAdd := 0x00E44C4C
Global St_ConectToSv := 0x00E5BB88
Global pChannels := [BaseAdd,20,"utf-16",0x1C,0x24,0x08,0x17C,0x00]
Global pCharClass := [BaseAdd,"UInt",0x1C,0x04,0x34,0x700]
Global pMyID := [BaseAdd,"UInt",0x1C,0x04,0x34,0x4B8]
Global pNameChar := [BaseAdd,20,"utf-16",0x1C,0X04,0x34,0x6FC,0x00]
Global pCurrentHp := [BaseAdd,"UInt",0x1C,0x04,0x34,0x4CC]
Global pMaxHp := [BaseAdd,"UInt",0x1C,0x04,0x34,0x520]
Global Transfig := [BaseAdd,"UInt",0x1C,0x04,0x34,0x3F0,0x04,0x3E0]
Global MapoitX := [BaseAdd,"Float",0x1C,0x04,0x34,0x3C]
Global MapoitY := [BaseAdd,"Float",0x1C,0x04,0x34,0x44]
Global Mapoit := [BaseAdd,"Float",0x1C,0x04,0x34,0x40]
Global pStatusFly := [BaseAdd,"UChar",0x1C,0x04,0x34,0x788]
Global PointerWTarget := [0x1C,0x04,0x34,0x5A4]
Global MaPointerIdMod := [BaseAdd,"UInt",0x1C,0x04,0x34,0x5A4] 
Global pPlayerOffSet := [BaseAdd,"UInt",0x19C,0xC] ;,0x34,0x700] 
Global pItem_Bag := [BaseAdd,"UInt",0x20,0X168,0x08,0x0C]
Global Offset_ItemsBag_Name :=0x4C
Global Offset_ItemsBag_ID :=0x0C
Global Offset_ItemsBag_Type :=0x08
Global pWing := [BaseAdd,"UInt",0x20,0X168,0x04,0x0C,0x30,0x0C]


Global pCrrWeaponRelia := [BaseAdd,"UInt",0x20,0x168,0x4,0xC,0x0,0x74] 
Global pMaxRelia := [BaseAdd,"UInt",0x20,0x168,0x4,0xC,0x78] 
Global pSuiCapHp := [BaseAdd,"UInt",0x20,0x168,0x4,0xC,0x50,0xC0] 
Global pSuiCapMp := [BaseAdd,"UInt",0x20,0x168,0x4,0xC,0x54,0xC0] 


Global pPet_iNum := [BaseAdd,"UInt",0x1C,0x04,0x34,0x1518,0x08]
Global Pet_Array := [BaseAdd,"UInt",0x1C,0x04,0x34,0x1518]
Global OffSet_PetName := 0x34
Global OffSet_PetHp := 0x38
Global OffSet_PetLvl := 0x24
Global CrrPet_iNum := -1
Global Pet_maxHP := 0
Global Pet_RealInum

Global pTotalMonMiMap := [BaseAdd,"UInt",0x1C,0x20,0x18]
Global OffSet_ModId := 0x114
Global pPointerM := [BaseAdd,"UInt",0x1C,0x20,0x20]
Global OffSet_ModName := 0x25C
Global OffSet_ModDis := 0x280
Global OffSet_ModLvL := 0x120
Global OffSet_ModType := 0xB4
Global OffSet_ModCoordX := 0x3C
Global OffSet_ModCoordY := 0x44
Global OffSet_ModCoordZ := 0x40





Global Results := ""
Result := ComObjCreate("WinHttp.WinHttpRequest.5.1")
if  !IsObject(Result)
{
	;MsgBox,,,Error CreatComObj !
	Goto,ExitScript
}
Try
{
	Result.Open("GET", "https://notevn.com/raw/66k5s28z")
	Result.Send()
	Results := Result.ResponseText
}
Catch err
{
	if err
	{
		;MsgBox,,,Error Result 1 !
		Goto,ExitScript
	}	
}	
Result := ""

Gui 1:Show, w257 h440, Tool By Mộc
Sleep 500
WinGetTitle,ToolTitle,A
WinGet,Tool_Pid,PID,ToolTitle
CountDies := 0
BossName := ""
CurrentPosWeapon := 0
ListPlayers := LoadInfo()
Toggle := 0

Return




gSkyEye:
gosub,Submit
If vSkyEye
{
	If !pToken := Gdip_Startup()
	{
		MsgBox, 48, gdiplus error!, Gdiplus failed to start. Please ensure you have gdiplus on your system
		Goto,ExitScript
	}
	OnExit, Exit
	
	Font = Arial
	If !Gdip_FontFamilyCreate(Font)
	{
		MsgBox, 48, Font error!, The font you have specified does not exist on the system
		Goto,ExitScript
	}
	
	Width := 140, Height := 400
	Gui, 2: -Caption +E0x80000 +LastFound +AlwaysOnTop +ToolWindow +OwnDialogs
	Gui, 2: Add, Edit, w%Width% h20 y300, vMeEdit
	Gui, 2: Show, NA ,Formmmm
	hwnd1 := WinExist()
	tDelayFindChar := vDelayFindChar*1000
	SetTimer,SkyEye,% tDelayFindChar
}
else
{
	SetTimer,SkyEye,Off
	Gui, 2:Destroy
}
Return








Current_WinTitle:
gosub,Submit
IfWinNotExist,MoKPL.exe
	FileCopy,%A_WorkingDir%\MoKPL.exe,%A_Temp%,1
if (Current_WinTitle="Select")
{
	ListPlayers := LoadInfo()
	Return
}
if IsObject(CharOjb)
	CharOjb := ""

for Titles,isHWND in ListPlayers
	if (Titles=Current_WinTitle)
	{
		Crrent_Pid := isHWND[2]
		Crrent_Id := isHWND[1]
		WinActivate,ahk_pid %Crrent_Pid% 
		Break
}		
CharOjb := new _ClassMemory("ahk_pid" Crrent_Pid)
CrrCharName := Char_Name(CharOjb)
CrrCharID := Char_IDChar(CharOjb)
CharOjb.Classs := CrrCharClass := Char_Class(CharOjb)
CharOjb.ID := CrrCharID
CharOjb.CoolDown := {Start:0,Times:0}
CharOjb.Skilling := 1

ChangeTitle := "Control " . CrrCharName  
SendMessage, 0xC , 0 , &Titles,,ahk_id %Crrent_Id% 
SendMessage, 0xC , 0 , &ChangeTitle,,% ToolTitle

if (CrrCharClass="Tiên•Thú")
{
	Guicontrol,Enable,Call_Pet
	CRevival_Pets := 1000*CRevival_Pet
	Pet_Skilling := 1
}
else
{
	Guicontrol,Disable,Call_Pet
	Guicontrol,,Call_Pet,0
}

if (CrrCharClass="Thần•Thú")
	Guicontrol,Enable,GetSkillTrans
else
	Guicontrol,Disable,GetSkillTrans

;else if (CrrCharClass="Vũ•Linh")
;{
	;Guicontrol,Show,VL_Set1
	;Guicontrol,Show,DeToXi_Pt
	;Guicontrol,Show,VL_Set3
	;Guicontrol,Show,VL_Set4
	;Guicontrol,Show,Use_VL_Tool
	;Guicontrol,Show,Heal_Pt
	;Guicontrol,Show,Revival_Pt
	
	;/*
		;Call_Skill_Id := TuDaVu[2]
		;Call_Skill_Cast := TuDaVu[3]
		;CallFunSendKey(CharOjb,Call_Skill_Id)
	;*/
	
;}
;else if (CrrCharClass="Kiếm•Khách")
;{
	;InputBox, InPut_UseWeapon, InPutCommand,Sử dụng vũ khí :`nQ : Quyền.`nK : Kiếm. `nR : Rìu. `nT : Thương!,,200,,,,,20,
	
;}


Guicontrol,Enable,vRunAuto
Guicontrol,Enable,SaveSetting
Guicontrol,Enable,OpenSetting

Guicontrol,Enable,Shutdown_pc
Guicontrol,Enable,vShowHide
Guicontrol,Enable,SetSync
Guicontrol,Enable,AutoFollow
Guicontrol,Enable,DisTo_Player
Guicontrol,Enable,AutoReBuff 

Guicontrol,Enable,vAmulet
Guicontrol,Enable,vBackVilla
Guicontrol,Enable,vSkillRevival
Guicontrol,Enable,vCountRevival

Guicontrol,Enable,GetMap
Guicontrol,Enable,GetFlag
Guicontrol,Enable,FlyHeight
Guicontrol,Enable,GetTabFly
Guicontrol,Enable,nFlyHeight
Guicontrol,Enable,GetSaveFly
Guicontrol,Enable,GetOrigi
;GuiControl,Enable,GetRanDesti
GuiControl,Enable,MaxDisR




;Tab2
Guicontrol,Enable,DistanceTrain
Guicontrol,Enable,LvlMin_Mod
Guicontrol,Enable,LvlMax_Mod
Guicontrol,Enable,MinHeight
Guicontrol,Enable,MaxHeight


Guicontrol,Enable,Skill_TL
;Guicontrol,Enable,Use_All_Skill

Guicontrol,Enable,CBSkill_At1
Guicontrol,Enable,CBSkill_CD1
Guicontrol,Enable,CBSkill_DL1

Guicontrol,Enable,CBSkill_At2
Guicontrol,Enable,CBSkill_CD2
Guicontrol,Enable,CBSkill_DL2

Guicontrol,Enable,CBSkill_RB1
Guicontrol,Enable,CBSkill_RCD1
Guicontrol,Enable,CBSkill_RDL1

Guicontrol,Enable,CBSkill_RB2
Guicontrol,Enable,CBSkill_RCD2
Guicontrol,Enable,CBSkill_RDL2



;Guicontrol,Enable,Num_CN
Guicontrol,Enable,Skill_X


;Tab3
;Guicontrol,Enable,vDefence
Guicontrol,Enable,vSkyEye
Guicontrol,Enable,vDelayFindChar

Guicontrol,Enable,PickUp
;Guicontrol,Enable,PassPT

Guicontrol,Enable,Change_Weapon
Guicontrol,Enable,Repair_Vip
Guicontrol,Enable,Key_Exten1
Guicontrol,Enable,Key_Exten2
Guicontrol,Enable,Key_Exten3
Guicontrol,Enable,Key_Exten4
Guicontrol,Enable,Key_Exten5


;Tab4
Guicontrol,Enable,Click_TT
Guicontrol,Enable,GetPoint





;Tab 5



;Hotkey % HKfollow, FollowAction
;Hotkey % HKRebuff, RebuffMe


o_SkillAttack := {}
o_SkillReBuff := {}
o_Skill2CN := {}
o_Skill3CN := {}
ckStartP := 1
FairyOrGhost := Char_FairyOrGhost(CharOjb)
PointerM := CharOjb.read(pPointerM*)
pTemp := DecToHex(CharOjb.read(pPlayerOffSet*))
RealMaxRelia := Char_ItemsMaxRelia(CharOjb)
MaxRelia := FloatToInt(RealMaxRelia/100)

CreatFunTarget(CharOjb)
Delay(200)
CreatFunUseKey(CharOjb)
Delay(200)
;CreatFunPickUp(CharOjb)
;Delay(200)
CreatFunFly(CharOjb)
Delay(200)
CreatFunCallPet(CharOjb)
Delay(200)
CreatFunReCallPet(CharOjb)

LV_Delete()
FileName := CrrCharName . ".mpla"
addInjCodFollow := ""
GuiControl,,SetSync,0
GuiControl,,AutoFollow,0
GuiControl,,MaxRelia,%MaxRelia%

WinWaitActive,ahk_pid %Crrent_Pid%
WinGetTitle,TitleWinGame,ahk_id %Crrent_Id% 
;Check Crash

	;ToolTip,Check  Crash trong 3s !
	;SetTarget(CharOjb,CrrCharID)
	;Delay(3000)
	;IfWinNotExist,ahk_id %Crrent_Id% 
	;{
		;ToolTip,Error Crash !`nExit Tool !
		;Delay(2000)
		;Goto,ExitScript
	;}
	;SetTarget(CharOjb,0)
	;ToolTip


Return





gShowHide:
gosub,Submit
if (CountHS=0)
{		
	WinHide,% Current_WinTitle
	countHS:=1
}
else 
{ 	
	winshow, % Current_WinTitle
	countHS:=0
}
Return

Shutdown_pc:
gosub,Submit
MsgBox,0x30,,Cảnh báo :`n Tool sẽ tắt máy sau 3s khi bị mất kết nối tới máy chủ.`n Thận trọng khi sử dụng !
Return



Submit:
gui,Submit,NoHide
Return


SetSync:
gosub,Submit
if SetSync
{
	CurrenTarget_ID := CharOjb.read(MaPointerIdMod*)
	if !CurrenTarget_ID
	{
		if IsObject(o_Caption)
			Return
		else
		{
			MsgBox,0x30,,Hãy Target nhân vật cần tấn công theo !
			GuiControl,,SetSync,0
			Return
		}
		
	}
	i_Loop := 0
	WinGet, Id_List, List, ahk_class %CurrentGameClass%
	Loop %Id_List%
	{
		
		Id_Win := Id_List%A_Index%
		WinGet, StartPid, PID, ahk_id %Id_Win%
		o_Caption := new _ClassMemory("ahk_pid" StartPid)
		Player_TargetID := Char_IDChar(o_Caption)
		if (Player_TargetID=CurrenTarget_ID)
			Break
		
		i_Loop++
		Player_TargetID :=  StartPid := o_Caption := ""
	}
	if (i_Loop=Id_List)  ; ranh xem ca khac may !!!!!!!!!!!!!!!!!!
	{
		MsgBox,0x30,,Tool chỉ hỗ trợ auto cùng 1 máy !
		GuiControl,,SetSync,0
		Return
	}
	SB_SetText("Trạng thái: SetSync OK !", 1)
}
Return


AutoFollow:
Gosub,Submit
if AutoFollow
{
	if !addInjCodFollow ;*[MoC155] 
		Gosub,CreatInfoFollow
	else
	{
		CurrenTarget_ID := CharOjb.read(MaPointerIdMod*)
		if CurrenTarget_ID
			CharOjb.write(DecToHex(addInjCodFollow + 0x30),DecToHex(CurrenTarget_ID))
	}
	
	SetTimer,Auto_Follow,on
	SB_SetText("Trạng thái: Auto follow On !", 1)
}
Else
{
	SB_SetText("Trạng thái: Auto follow Off !", 1)
	SetTimer,Auto_Follow,Off
}	
Return


CreatInfoFollow:
ToolTip,Chọn người chơi muốn đi theo rồi chọn thẻ đi theo !
SB_SetText("Trạng thái: Get  Follow (0/1) !", 1)
CreatFunGetDataFollow(CharOjb,0x0049F603,0x0049F5FA)
WinActivate,ahk_pid %Crrent_Pid%
WinWaitActive,ahk_pid %Crrent_Pid%
Loop 
{
	CurrenTarget_ID := CharOjb.read(MaPointerIdMod*)
	if CurrenTarget_ID
		Break
}
i_Loop := 0
WinGet, Id_List, List, ahk_class %CurrentGameClass%
Loop %Id_List%
{
	
	Id_Win := Id_List%A_Index%
	WinGet, StartPid, PID, ahk_id %Id_Win%
	o_Follow := new _ClassMemory("ahk_pid" StartPid)
	Player_TargetID := Char_IDChar(o_Follow)
	if (Player_TargetID=CurrenTarget_ID)
		Break
	
	i_Loop++
	Player_TargetID :=  StartPid := o_Follow := ""
}
loop 
{
	Delay(500)
	if (CharOjb.read(addInjCodFollow + 0x30,"UInt"))
	{
		ReCuperateCode(CharOjb,0x0049F5FA,"8B400C50E8DD8C0100")
		CreatFunFollow(CharOjb)
		Break
	}
}
Player_TargetIDs := CurrenTarget_ID
Num_Player := Find_NumPlayer(CharOjb)
Player_TargetName := Player_Name(CharOjb,Num_Player)
ToolTip
SB_SetText("Trạng thái: Get  Follow ok (1/1) !", 1)
SetTimer,Auto_Follow,2000
Return




Auto_Follow:
;Num_Player := Find_NumPlayer(CharOjb,2)
;if !Manual_Mode&&(Num_Player<0)
;{
	;SB_SetText("Trạng thái: No Find Char !" , 1)
	;Return ;
;}
	

if Ck_Ride(o_Follow)&&!Ck_Ride(CharOjb)
{
	if GetSkillTrans&&(Transing<>Char_TransForm(CharOjb))
	{
		CallFunSendKey(CharOjb,SkillTrans)  ;*[MoCPro]
		Loop 1000
		{
			if (Transing=Char_TransForm(CharOjb))
				Break
			Delay(200)
		}
	}
	CallPet(CharOjb)
	Loop 1000
	{
		If Ck_Ride(CharOjb)
			Break
		Delay(200)
	}
}
else if !Ck_Ride(o_Follow)&&Ck_Ride(CharOjb)
{
	ReCallPet(CharOjb)
	Loop 1000
	{
		If !Ck_Ride(CharOjb)
			Break
		Delay(200)
	}
}
if StatusFly(o_Follow)!=StatusFly(CharOjb)
	FlyWithMe(CharOjb)

if Manual_Mode||(DisToPlayer(CharOjb,Num_Player)>=DisTo_Player)
{
	SB_SetText("Trạng thái: Following Key  !" , 1)
	Manual_Mode := 0
	FollowPlayer(CharOjb)
}

Return







gBackVilla:
Gosub,Submit
if vBackVilla
{
	if (CurrentHp(CharOjb))
		Return
	SB_SetText("Trạng thái: Get về làng (0/1) !", 1)
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetPoint:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xRevival := Xpos
			yRevival := Ypos
			Guicontrol,,vAmulet,0	
			Guicontrol,,vSkillRevival,0						
			SB_SetText("Trạng thái: Get về làng ok (1/1) !", 1)
			break
		}
		if (A_TickCount-Time_Start_GetPoint >= 30000)
		{
			Guicontrol,,vBackVilla,0
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return


gAmulet:
Gosub,Submit
if vAmulet
{
	if (CurrentHp(CharOjb))
		Return
	SB_SetText("Trạng thái: Get dùng bùa (0/1) !" , 1)
	Time_Start_GetRevival:=A_TickCount
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Loop 
	{
		if GetKeyState("RButton")              
		{		
			CoordMode Mouse,Window			
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos	
			xAmu := Xpos
			yAmu := Ypos
			Guicontrol,,vBackVilla,0			
			SB_SetText("Trạng thái: Get dùng bùa ok  (1/1)   !" , 1)
			Break
		}
		If (A_TickCount - Time_Start_GetRevival >= 30000)
		{
			MsgBox,,,Hết thời gian !
			Guicontrol,,vAmulet,0
			Break
		}
	}
}
Return


gSkillRevival:
Gosub,Submit
if vSkillRevival
{
	if (CurrentHp(CharOjb))
		Return
	SB_SetText("Trạng thái: Get  skill HS  (0/1)" , 1)
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetRevival:=A_TickCount	
	Loop
	{		
		if GetKeyState("RButton")  
		{		
			
			
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			CoordMode Mouse,Window		
			MouseGetPos,Xpos,Ypos			
			xSkillRevival := Xpos
			ySkillRevival := Ypos
			Guicontrol,,vBackVilla,0
			SB_SetText("Trạng thái: Get  skill HS ok (1/1)" , 1)
			Break
		}
		if (A_TickCount-Time_Start_GetRevival>=30000)
		{
			Guicontrol,,vSkillRevival,0			
			MsgBox,,,Hết thời gian !
			break
		}
	}	
}
Return


~g::
IfWinActive,% Current_WinTitle
{
	if ((A_ThisHotkey = A_PriorHotkey)&&(A_TimeSincePriorHotkey < 300))
	{
		InputBox, InPutCommand, InPutCommand,Hãy nhập lệnh !`n+ Nhập "GIB" để get ID vật phẩm tại ô đầu tiên trong túi đồ !,,200,,,,,20,GIB   ;GIB : Get Info Items in Bag
		WinActivate,ahk_pid %Crrent_Pid%
		WinWaitActive,ahk_pid %Crrent_Pid%
		
		if (InPutCommand="GIB")
		{
			Temp_ID := Bag_ItemID(CharOjb)	
			Temp_Name := Bag_ItemName(CharOjb)
			IniWrite,%Temp_ID%:`"%Temp_Name%`",%A_WorkingDir%\ItemsInfo.ini, ItemInfo
			SB_SetText("Trạng thái: Get Info Items Ok !" , 1)
			
		}
		
		
	}
}
Return



~Home::
if ((A_ThisHotkey = A_PriorHotkey)&&(A_TimeSincePriorHotkey < 300))
{
	SHowHide()
}
Return



;~q::
;if ((A_ThisHotkey = A_PriorHotkey)&&(A_TimeSincePriorHotkey < 300))
;{
	;Toggle := !Toggle
	;if Toggle
		;goto,gRunAuto
	;else
		;goto,gPauseAuto		
;}
;Return




~b::
Gosub,Submit
if ((A_ThisHotkey = A_PriorHotkey)&&(A_TimeSincePriorHotkey < 300)) ;*[MoKs]
{
	if (CBSkill_RB1 <> "Combo_Rebuff_1")
	{
		
		
		SB_SetText("Trạng thái: Call Rebuff !", 1)
		if (CrrCharClass="Thần•Thú")&&GetSkillTrans
		{
			if (Transing<>Char_TransForm(CharOjb))
			{
				CallFunSendKey(CharOjb,SkillTrans) 
				Loop 1000
				{
					Delay(200)
					if (Transing=Char_TransForm(CharOjb))
						Break
				}
			}
		}
		CallFunSendKey(CharOjb,CBSkill_RB1)
		Delay(CBSkill_RCD1)
		if (CrrCharClass="Thần•Thú")&&GetSkillTrans
		{
			if (Transing=Char_TransForm(CharOjb))
			{
				Loop 1000
				{
					CallFunSendKey(CharOjb,SkillTrans)
					Delay(500)
					if (Transing<>Char_TransForm(CharOjb))
						Break
				}
			}
		}
		
	}
	else
		MsgBox,,, Bạn chưa chon Combo Rebuff !,3000
}

Return


~f::
Gosub,Submit
if ((A_ThisHotkey = A_PriorHotkey)&&(A_TimeSincePriorHotkey < 300)) ;*[MoKs]
{
	if addInjCodFollow
	{
		Manual_Mode := 1
		Gosub,Auto_Follow
	}
	
}
Return


~c::
Gosub,Submit
if ((A_ThisHotkey = A_PriorHotkey)&&(A_TimeSincePriorHotkey < 300)) ;*[MoKs]
{
	if (Skill_X<>"Skill X")
		CallFunSendKey(CharOjb,Skill_X)
	
}
Return


GetOrigi:
gosub,Submit
if GetOrigi
{
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	XtrainOrigi := GetPX(CharOjb)
	YtrainOrigi := GetPY(CharOjb)
	Guicontrol,Enable,GetMap
	Guicontrol,Enable,GetFlag
	Guicontrol,Enable,FlyHeight
	Guicontrol,Enable,GetTabFly
	Guicontrol,Enable,nFlyHeight
	Guicontrol,Enable,GetSaveFly
	Guicontrol,Enable,MaxDisR
}
Return









GetMap:
Gosub,Submit
if GetMap
{
	SB_SetText("Status: Get Map (0/1) ! ",1)		
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetPoint:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xGetMap := Xpos
			yGetMap := Ypos
			ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%	
			SB_SetText("Trạng thái: Get Map ok (1/1) !", 1)
			break
		}
		if (A_TickCount-Time_Start_GetPoint >= 30000)
		{
			Guicontrol,,GetMap,0
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return




GetFlag:
Gosub,Submit
if GetFlag
{
	SB_SetText("Status: Get Flag (0/1) ! ",1)		
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetPoint:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xGetFlag := Xpos
			yGetFlag := Ypos
			SB_SetText("Trạng thái: Get Flag ok (1/1) !", 1)
			ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%
			break
		}
		if (A_TickCount-Time_Start_GetPoint >= 30000)
		{
			Guicontrol,,GetFlag,0
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return


GetTabFly:
Gosub,Submit
if GetTabFly
{
	SB_SetText("Status: Get Tab Fly (0/1) ! ",1)		
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetPoint:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xGetTabFly := Xpos
			yGetTabFly := Ypos
			SB_SetText("Trạng thái: Get Tab Fly ok (1/1) !", 1)
			break
		}
		if (A_TickCount-Time_Start_GetPoint >= 30000)
		{
			GuiControl,Disable,GetTabFly
			GuiControl,,GetTabFly,0
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return





GetRanDesti:
Gosub,Submit
if GetRanDesti
{
	SB_SetText("Status: Get GetRanDesti (0/1) ! ",1)		
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetPoint:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xGetRanDesti := Xpos
			yGetRanDesti := Ypos
			SB_SetText("Trạng thái: Get GetRanDesti ok (1/1) !", 1)
			break
		}
		if (A_TickCount-Time_Start_GetPoint >= 30000)
		{
			Guicontrol,,GetRanDesti,0
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return


GetSaveFly:
Gosub,Submit
if GetSaveFly
{
	SB_SetText("Status: Get GetSaveFly (0/1) ! ",1)		
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_GetPoint:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xGetSaveFly := Xpos
			yGetSaveFly := Ypos
			SB_SetText("Trạng thái: Get GetSaveFly ok (1/1) !", 1)
			break
		}
		if (A_TickCount-Time_Start_GetPoint >= 30000)
		{
			Guicontrol,,GetSaveFly,0
			;GuiControl,Disable,GetBackVillage			
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return


Skill_TL:
Gosub,Submit
Return

Skill_TL1:
Gosub,Submit
Skill_TLInfo1 := "F1"
Return


Skill_TL2:
Gosub,Submit
Skill_TLInfo2 := "F2"
Return

Skill_TL3:
Gosub,Submit
Skill_TLInfo3 := "F3"
Return


Skill_TL4:
Gosub,Submit
Skill_TLInfo4 := "F4"
Return


Skill_TL5:
Gosub,Submit
Skill_TLInfo5 := "F5"
Return


Skill_TL6:
Gosub,Submit
Skill_TLInfo6 := "F6"
Return


Skill_TL7:
Gosub,Submit
Skill_TLInfo7 := "F7"
Return


Skill_TL8:
Gosub,Submit
Skill_TLInfo8 := "F8"
Return


Common_Attack:
Gosub,Submit
CreatFun_Common_Attack(CharOjb)
Return




CBSkill_At1:
Gosub,Submit
Return

CBSkill_At2:
Gosub,Submit
Return


CBSkill_RB1:
Gosub,Submit
Return


CBSkill_RB2:
Gosub,Submit
Return


Num_CN:
Gosub,Submit
;GuiControl,,Skill_CN,|
;CharOjb.Num_PointCN := 0
;CharOjb.Num_CN := Num_CN
if (Num_CN="2 CN")
	Num_PointCN := 200
else if (Num_CN="3 CN")
	Num_PointCN := 300
;Num_PointCN := Num_CN ;CharOjb.Num_PointCN
Return



Skill_CN:
Gosub,Submit
Skill_InfoCNCD := 2000   
;Skill_InfoCNDL := 2000
Skill_InfoCN := Skill_CN 
Return



Click_TT:
GoSub,Submit
LV_Delete()
Return



GetPoint:
Gosub,Submit
vRepeatClickx := (vRepeatClick<1) ? -1 : vRepeatClick
SB_SetText("Status: Get Point (0/1) ! ",1)
if !Click_TT
	InputBox, InputNote, Note,Sau khi nhập ghi chú(hoặc bỏ qua) thì chuột phải vào điểm cần Click !,,,,,,,20,

WinActivate,ahk_pid %Crrent_Pid%
WinWaitActive,ahk_pid %Crrent_Pid%
Time_Start_GetPoint:=A_TickCount
CoordMode Mouse,Window
Loop
{
	If GetKeyState("RButton")
	{	
		WinActivate,ahk_pid %Crrent_Pid%
		WinWaitActive,ahk_pid %Crrent_Pid%
		MouseGetPos,Xpos,Ypos
		LV_Add("",vMouseStyle,Xpos,Ypos,vColDownClick,vDelayClick,vRepeatClickx,InputNote)
		SB_SetText("Status: Get Point Ok ! ",1)
		Break
	}
	if (A_TickCount-Time_Start_GetPoint >= 30000)
		break
}

Return








Repair_Vip:
Gosub,Submit
if Repair_Vip
{
	SB_SetText("Status: Get Repair_Vip (0/1) ! ",1)	
	ToolTip, Hãy mở túi đồ và chuột phải vào "Sửa nhanh" !
	WinActivate,ahk_pid %Crrent_Pid%
	WinWaitActive,ahk_pid %Crrent_Pid%
	Time_Start_Repair_Vip:=A_TickCount
	CoordMode Mouse,Window
	Loop
	{
		If GetKeyState("RButton")
		{	
			WinActivate,ahk_pid %Crrent_Pid%
			WinWaitActive,ahk_pid %Crrent_Pid%
			MouseGetPos,Xpos,Ypos
			xRepair_Vip := Xpos
			yRepair_Vip := Ypos
			SB_SetText("Trạng thái: Get Repair_Vip ok (1/1) !", 1)
			break
		}
		if (A_TickCount-Time_Start_Repair_Vip >= 30000)
		{
			Guicontrol,,Repair_Vip,0
			;GuiControl,Disable,GetBackVillage			
			MsgBox,,,Hết thời gian !
			break
		}
	}
}
Return



Change_Weapon:
gosub,Submit
if Change_Weapon
{
	Guicontrol,Enable,Key_ChangeWeapon1
	Guicontrol,Enable,Key_ChangeWeapon2
	Guicontrol,Enable,Key_ChangeWeapon3
}
else
{
	Guicontrol,Disable,Key_ChangeWeapon1
	Guicontrol,,Key_ChangeWeapon1,|
	Guicontrol,Disable,Key_ChangeWeapon2
	Guicontrol,,Key_ChangeWeapon2,|
	Guicontrol,Disable,Key_ChangeWeapon3
	Guicontrol,,Key_ChangeWeapon3,|
	Guicontrol,,Key_ChangeWeapon1,Weapon||F1|F2|F3|F4|F5|F6|F7|F8|
	Guicontrol,,Key_ChangeWeapon2,Weapon||F1|F2|F3|F4|F5|F6|F7|F8|
	Guicontrol,,Key_ChangeWeapon3,Weapon||F1|F2|F3|F4|F5|F6|F7|F8|
}
Return



;Key_ChangeWeapon1:
;gosub,Submit
;Return

;Key_ChangeWeapon2:
;gosub,Submit
;Return

;Key_ChangeWeapon3:
;gosub,Submit
;Return

Key_Exten1:
gosub,Submit



Return

Key_Exten2:
gosub,Submit



Return

Key_Exten3:
gosub,Submit



Return

Key_Exten4:
gosub,Submit



Return


Key_Exten5:
gosub,Submit



Return







;Tab5


Call_Pet:
Gosub,Submit
if Call_Pet
{
	;ToolTip,Bạn phải gọi Pet ra `nhoặc thu hồi lại Pet để tool load data !
	SB_SetText("Trạng thái: Set Call_Pet ok (1/1) !", 1)
	checkInfoPets(CharOjb,Current_WinTitle)
	Guicontrol,Enable,Heal_Pet
	Guicontrol,Enable,Revival_Pet
	Guicontrol,Enable,Loyal_Pet
}
else
{
	Guicontrol,Disable,Heal_Pet
	Guicontrol,Disable,Revival_Pet
	Guicontrol,Disable,Loyal_Pet
	CrrPet_iNum:=-1
}
Return




Heal_Pet:
Gosub,Submit
Return



Revival_Pet:
Gosub,Submit
Return

Loyal_Pet:
Gosub,Submit
Return


Skill_Pet1:
Gosub,Submit
Skill_PetInfo1 := 2
Return



Skill_Pet2:
Gosub,Submit
Skill_PetInfo2 := 3
Return



Skill_Pet3:
Gosub,Submit
Skill_PetInfo3 := 4
Return


Skill_Pet4:
Gosub,Submit
Skill_PetInfo4 := 5
Return



Skill_Pet5:
Gosub,Submit
Skill_PetInfo5 := 6
Return



Skill_Pet6:
Gosub,Submit
Skill_PetInfo6 := 7
Return



Skill_Pet7:
Gosub,Submit
Skill_PetInfo7 := 8
Return



GetSkillTrans:	
Gosub,Submit
if GetSkillTrans
{
	MaxHp1 := MaxHp(CharOjb)
	Transing1 := Char_TransForm(CharOjb)
	CallFunSendKey(CharOjb,SkillTrans)
	Delay(1500)
	MaxHp2  := MaxHp(CharOjb)
	Transing2 := Char_TransForm(CharOjb)
	Transing := (MaxHp1<MaxHp2) ? Transing1 : Transing2
	Guicontrol,Enable,SkillTrans
	SB_SetText("Trạng thái: Get  Trans  ok (1/1)" , 1)
}
else
	Guicontrol,Disable,SkillTrans
Return


SkillTrans:
Gosub,Submit

Return



Use_VL_Tool:
Gosub,Submit
Return


;HKfollow:
;Gosub,Submit
;Hotkey % HKfollow, FollowAction
;Return

;HKRebuff:
;Gosub,Submit
;Hotkey % HKRebuff, RebuffMe
;Return



gRunAuto:
Gosub,Submit

if !PauseA
	Return
if !SetSync&&!Click_TT
{
	CurrentMod_ID := CharOjb.read(MaPointerIdMod*)
	NeedModName := ""
	if CurrentMod_ID
	{
		loop 768
		{
			PointerMo := CharOjb.read(PointerM + 0x4*(A_Index - 1),"UInt")
			if (PointerMo > 0)
			{
				If (CurrentMod_ID=CharOjb.read(PointerMo + 0x4,"UInt",OffSet_ModId))
				{
					NeedModName := CharOjb.readString( CharOjb.read(PointerMo + 0x4,"UInt",OffSet_ModName),64,"utf-16")	
					SB_SetText("Trạng thái: Mod Need Kill Name :" . NeedModName,1)					
					Break
					
				}			
			}
			
			
		}
		Delay(1000)
	}
	
	if BossName
		NeedModName := BossName
}



trainFly := (StatusFly(CharOjb)=0) ? false  : true

Loop % LV_GetCount()
{
	Time_St_Click%A_Index% := A_TickCount
	cClick%A_Index% := 0
}

ckLiveOrDie := 1
Time_StartCheckWeapon := A_TickCount
Global arWeapon := []
If (Change_Weapon=1)
{
	
	Loop 3
	{
		if (Key_ChangeWeapon%A_index%<>"Weapon")
			arWeapon.Push(Key_ChangeWeapon%A_index%)
		CurrentPosWeapon := 0
	}
}


if !(arWeapon.MaxIndex())
{
	Change_Weapon := 0
	Guicontrol,,Change_Weapon,% Change_Weapon
}

CharOjb.arSkill_TL := []
i_SkillTL := 0
Loop 8
{
	if Skill_TL%A_index%
	{
		DLay := DLSkill_TL%A_index%*1000
		i_SkillTL++
		Skill%i_SkillTL% := {IDSkill:Skill_TLInfo%A_index%,Delay:DLay,StartSkill:0}
		CharOjb.arSkill_TL.Push(Skill%i_SkillTL%)	
		Skill%i_SkillTL% := DLay := ""
	}
}
if !i_SkillTL
	CharOjb.arSkill_TL := ""



CharOjb.arCBSkill := []
i_Skill := 0
Loop 2
{
	if (CBSkill_At%A_index%<>"Combo_Skill")
	{
		i_Skill++
		Skill%i_Skill% := {IDSkill:CBSkill_At%A_index%,Cast:CBSkill_CD%A_index%,Delay:CBSkill_DL%A_index%,StarSkill:0}
		CharOjb.arCBSkill.Push(Skill%i_Skill%)	
		Skill%i_Skill% := ""
	}
}

if !i_Skill
	CharOjb.arCBSkill := ""


CharOjb.arCBSkillRB := []
i_SkillRB := 0
Loop 2
{
	if (CBSkill_RB%A_index%<>"Combo_Rebuff")
	{
		i_SkillRB++
		Skill%i_SkillRB% := {IDSkill:CBSkill_RB%A_index%,Cast:CBSkill_RCD%A_index%,Delay:CBSkill_RDL%A_index%,StarSkill:0}
		CharOjb.arCBSkillRB.Push(Skill%i_SkillRB%)	
		Skill%i_SkillRB% := ""
		
	}
}
if !i_SkillRB
	CharOjb.arCBSkillRB := ""


if (Skill_CN<>"CHI")
{
	CharOjb.SkillCN := {Name:Skill_CN,IDSkill:Skill_InfoCN,Cast:Skill_InfoCNCD,Delay:Skill_InfoCNDL,StarSkill:0}
}
else 
	CharOjb.SkillCN := ""

CharOjb.arKey_Exten := []
i_Key_Exten := 0
Loop 5
{
	if (Key_Exten%A_index%<>"Key_Exten")
	{
		i_Key_Exten++
		Skill%i_Key_Exten% := {IDSkill:Key_Exten%A_index%,Cast:Key_ExtenCD%A_index%,Delay:Key_ExtenDL%A_index%,StarSkill:0}
		CharOjb.arKey_Exten.Push(Skill%i_Key_Exten% )
		Skill%i_Key_Exten%  := ""
	}
}
if !i_Key_Exten
	CharOjb.arKey_Exten := ""
i_SkillTL := i_Skill := i_SkillRB := i_Key_Exten := ""


if Call_Pet
{
	CharOjb.arSkill_Pet := []
	i_SkillPet := 0
	Loop 7
	{
		if Skill_Pet%A_index%
		{
			DLay := DLSkill_Pet%A_index%*1000
			i_SkillPet++
			Skill%i_SkillPet% := {IDSkill:Skill_PetInfo%A_index%,Delay:DLay,StartSkill:0}
			CharOjb.arSkill_Pet.Push(Skill%i_SkillPet%)	
			Skill%i_SkillPet% := DLay := ""
		}
	}
	if !i_SkillPet
		CharOjb.arSkill_Pet := ""
}



Guicontrol,Disable,SaveSetting
Guicontrol,Disable,OpenSetting
Guicontrol,Disable,Current_WinTitle
Guicontrol,Hide,vRunAuto
Guicontrol,Show,vPauseAuto

;Guicontrol,Disable,SetSync
;Guicontrol,Disable,AutoFollow
;Guicontrol,Disable,DisTo_Player
Guicontrol,Disable,Shutdown_pc

Guicontrol,Disable,vBackVilla
Guicontrol,Disable,vAmulet
Guicontrol,Disable,vSkillRevival
Guicontrol,Disable,vCountRevival

Guicontrol,Disable,GetMap
Guicontrol,Disable,GetFlag
Guicontrol,Disable,nFlyHeight
Guicontrol,Disable,FlyHeight
Guicontrol,Disable,GetTabFly
Guicontrol,Disable,GetSaveFly
Guicontrol,Disable,GetOrigi
Guicontrol,Disable,GetRanDesti
Guicontrol,Disable,MaxDisR


;Tab2
Guicontrol,Disable,DistanceTrain
Guicontrol,Disable,LvlMin_Mod
Guicontrol,Disable,LvlMax_Mod
Guicontrol,Disable,MinHeight
Guicontrol,Disable,MaxHeight

Guicontrol,Disable,Skill_TL1
Guicontrol,Disable,Skill_TL2
Guicontrol,Disable,Skill_TL3
Guicontrol,Disable,Skill_TL4
Guicontrol,Disable,Skill_TL5
Guicontrol,Disable,Skill_TL6
Guicontrol,Disable,Skill_TL7
Guicontrol,Disable,Skill_TL8


Guicontrol,Disable,Common_Attack

Guicontrol,Disable,CBSkill_At1
Guicontrol,Disable,CBSkill_CD1
Guicontrol,Disable,CBSkill_DL1

Guicontrol,Disable,CBSkill_At2
Guicontrol,Disable,CBSkill_CD2
Guicontrol,Disable,CBSkill_DL2

Guicontrol,Disable,CBSkill_RB1
Guicontrol,Disable,CBSkill_RCD1
Guicontrol,Disable,CBSkill_RDL1

Guicontrol,Disable,CBSkill_RB2
Guicontrol,Disable,CBSkill_RCD2
Guicontrol,Disable,CBSkill_RDL2

;Guicontrol,Disable,Num_CN
Guicontrol,Disable,Skill_X



;Tab3

Guicontrol,Disable,Delta
Guicontrol,Disable,vSkyEye
Guicontrol,Disable,vDelayFindChar

Guicontrol,Disable,UseItems
Guicontrol,Disable,Change_Equip
Guicontrol,Disable,vKeyWeapon
Guicontrol,Disable,MinRelia
Guicontrol,Disable,Change_SuiHp
Guicontrol,Disable,Change_SuiMp
Guicontrol,Disable,Min_SuiHp
Guicontrol,Disable,Min_SuiMp
;Guicontrol,Disable,Repair_Vip

;Tab4

;Guicontrol,Disable,SkillTrans
;Guicontrol,Disable,Call_Pet
;Guicontrol,Disable,Heal_Pet
;Guicontrol,Disable,Revival_Pet
;Guicontrol,Disable,nPercentHpPet

;Tab5


Guicontrol,Disable,Click_TT
Guicontrol,Disable,GetPoint

if Click_TT
	Goto,Click_TTs


SetTarget(CharOjb) ;,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
	;if AutoFollow
		;SetTimer,Auto_Follow,2000
;if (GetSkillTrans)&&(Transing=Char_TransForm(CharOjb))
;{
	;CallFunSendKey(CharOjb,SkillTrans)
	;Delay(3100)
;}


Goto,AutoFarm
;}
Return

AutoFarm:
PauseA := False
if AutoFollow                                                                                                          
	SetTimer,Auto_Follow,on
;if PickUpAll
	;SetTimer,Pick,on
SB_SetIcon("shell32.dll",138,1)
cTime_CheckHp := A_TickCount - 3000

;tDelayFindChar := vDelayFindChar*1000
;Time_StarCheckPlayer := A_TickCount - tDelayFindChar
cTime_CheckPt := A_TickCount-10000
Time_StarCheckSui := Time_Star_CommonAtack := Time_StarCheckTarget := Time_StarCheckHpPet := Time_StarCheckMove := A_TickCount

if (CharOjb.arCBSkillRB.MaxIndex())                           
{
	;if PickUpAll
		;SetTimer,Pick,off
	if AutoFollow
		SetTimer,Auto_Follow,Off
	;Delay(1000)
	SB_SetText("Trạng thái: ReBuff ! ",1)
	if GetSkillTrans
	{
		Trans := Char_TransForm(CharOjb)
		if (Transing<>Trans)
		{
			CallFunSendKey(CharOjb,SkillTrans) 
			Delay(1500)
		}
		Loop % CharOjb.arCBSkillRB.MaxIndex()
		{
			Call_Skill_Id := CharOjb.arCBSkillRB[A_index].IDSkill
			Call_Skill_Cast := CharOjb.arCBSkillRB[A_index].Cast
			CallFunSendKey(CharOjb,Call_Skill_Id)
			Delay(Call_Skill_Cast)
		}
		if (Transing<>Trans)
			CallFunSendKey(CharOjb,SkillTrans)
	}
	else
	{
		Loop % CharOjb.arCBSkillRB.MaxIndex()
		{
			if PauseA 
				break
			Call_Skill_Id := CharOjb.arCBSkillRB[A_index].IDSkill
			Call_Skill_Cast := CharOjb.arSkillRB[A_index].Cast
			CallFunSendKey(CharOjb,Call_Skill_Id)
			Delay(Call_Skill_Cast)
		}
	}
	if AutoFollow
		SetTimer,Auto_Follow,on
	;if PickUpAll
		;SetTimer,Pick,on
}



RetAuto:
SB_SetText("Trạng thái: Auto Run. ",1)
index:=0
Loop
{
	if PauseA 
		break
	if (A_TickCount-cTime_CheckHp >= 3000)
	{
		if !Char_Status(CharOjb)
		{
			;if PickUpAll
				;SetTimer,Pick,off
			;if AutoFollow
				;SetTimer,Auto_Follow,Off
			;if Shutdown_pc
			;{
				;MsgBox,48,,Tool sẽ tự động tắt máy sau 3 giây !,3    
				;RunWait  %ComSpec%  /k "Shutdown  /p " 
			;}
			Goto,ExitScript	
			;ExitApp
		}
		cTime_CheckHp := A_TickCount
		Gosub,DieToBoss
	}
	
		;if PassPT&&(A_TickCount-cTime_CheckPt >= 20000)
		;{
			;cTime_CheckPt := A_TickCount
			;Gosub,CheckParty
		;}
	
	If ckLiveOrDie
	{
		
		if (A_TickCount-Time_StarCheckTarget >= DeCTarget)  
		{
			Time_StarCheckTarget := A_TickCount
			if SetSync
				Gosub,CheckTargetCap
			else
				gosub,CheckTarget
		}
		
		;if Common_Attack&&Current_Target&&(A_TickCount-Time_Star_CommonAtack >= 1200)
		;{
			;Call_Common_Attack(CharOjb)
			;Time_Star_CommonAtack := A_TickCount
		;}
		if Call_Pet
		{
			if (A_TickCount-Time_StarCheckHpPet >= 1000)
			{
				Time_StarCheckHpPet := A_TickCount
				checkInfoPets(CharOjb,nPercentHpPet) 
			}
		}
		if GetSkillTrans
		{
			if !Ck_Ride(CharOjb)&&(Transing=Char_TransForm(CharOjb))
			{
				CallFunSendKey(CharOjb,SkillTrans) 
				Delay(2500)
			}
		}
		
		;Click
		if LV_GetCount()
		{
			if (index=LV_GetCount())
				index:=0
			index++
			Loop 6
				LV_GetText(Data_%A_Index%,index,A_Index)
			Data_5 *= 1000
			Data_4 *= 1000
			if (A_TickCount - Time_St_Click%index% >= Data_5)
				if (cClick%index% <> Data_6)
				{
					Time_St_Click%index% := A_TickCount
					cClick%index%++
					SetControlDelay -1
					ControlClick,x%Data_2% y%Data_3%,%Current_WinTitle%,,%Data_1%,,NA
					Delay(Data_4,PauseA)
				}
			
		}
		
		if GetOrigi&&(A_TickCount-Time_StarCheckMove >= 10000)
		{
			Time_StarCheckMove := A_TickCount
			if (DistanceCal(CharOjb,XtrainOrigi,YtrainOrigi) >= DistanceTrain)
			{
				if AutoFollow
					SetTimer,Auto_Follow,off
				;if PickUpAll
					;SetTimer,Pick,off
				SetTarget(CharOjb)
				goto,ReturnOrigi	
			}
		}
		
		
		if Repair_Vip&&(A_TickCount-Time_StartCheckWeapon>=30000)
			GoSub,RepairVip
		
		
		IF (CurrentPosWeapon<4)&&(A_TickCount-Time_StartCheckWeapon>=30000)
		{
			Time_StartCheckWeapon := A_TickCount							
			if (Char_WeaponRelia(CharOjb)<=(MinRelia*100))
			{
				if AutoFollow
					SetTimer,Auto_Follow,off
				;if PickUpAll
					;SetTimer,Pick,off
				Auto_ChangeWeapon(CharOjb,CurrentPosWeapon)
				if AutoFollow
					SetTimer,Auto_Follow,on
				;if PickUpAll
					;SetTimer,Pick,on
			}
			
			
			
		}
		
		
		
	}
	
	Delay(Refresh)
}
SB_SetText("Trạng thái: Auto Pause. ",1)
SB_SetIcon("shell32.dll",220,1)
Return




Click_TTs:
GoSub,Submit
PauseA := false
SB_SetText("Trạng thái: Auto Click ! ",1)
SB_SetIcon("shell32.dll",138,1)
if (vRepeatClick=0)
	vRepeatClicks := -1
else
	vRepeatClicks := vRepeatClick
index := 0
cClicks :=0
Loop
{
	if PauseA
		Break
	
	if LV_GetCount()
	{
		if (index=LV_GetCount())
		{
			index:=0
			cClicks++
		}		
		if (cClicks <> vRepeatClicks)
		{
			index++
			Loop 4
				LV_GetText(Data_%A_Index%,index,A_Index)
			Data_4 *= 1000
			AutoClick(Current_WinTitle,Data_2,Data_3,Data_1)
			Delay(Data_4,PauseA)
		}
		else
			Break
	}
	else
		Break
}
GoSub,gPauseAuto
SB_SetText("Trạng thái: Auto Pause. ",1)
SB_SetIcon("shell32.dll",220,1)
Return






gPauseAuto:
Gosub,Submit
PauseA := True
Guicontrol,Enable,SaveSetting
Guicontrol,Enable,OpenSetting
Guicontrol,Enable,Current_WinTitle
Guicontrol,Show,vRunAuto
Guicontrol,Hide,vPauseAuto

Guicontrol,Enable,SetSync
Guicontrol,Enable,AutoFollow
Guicontrol,Enable,DisTo_Player
Guicontrol,Enable,Shutdown_pc

Guicontrol,Enable,vBackVilla
Guicontrol,Enable,vAmulet
Guicontrol,Enable,vSkillRevival
Guicontrol,Enable,vCountRevival

Guicontrol,Enable,GetMap
Guicontrol,Enable,GetFlag
Guicontrol,Enable,nFlyHeight
Guicontrol,Enable,FlyHeight
Guicontrol,Enable,GetTabFly
Guicontrol,Enable,MaxDisR
Guicontrol,Enable,GetRanDesti
Guicontrol,Enable,GetSaveFly


Guicontrol,Enable,GetOrigi





;Tab2
Guicontrol,Enable,DistanceTrain
Guicontrol,Enable,LvlMin_Mod
Guicontrol,Enable,LvlMax_Mod
Guicontrol,Enable,MinHeight
Guicontrol,Enable,MaxHeight

Guicontrol,Enable,Skill_TL1
Guicontrol,Enable,Skill_TL2
Guicontrol,Enable,Skill_TL3
Guicontrol,Enable,Skill_TL4
Guicontrol,Enable,Skill_TL5
Guicontrol,Enable,Skill_TL6
Guicontrol,Enable,Skill_TL7
Guicontrol,Enable,Skill_TL8


Guicontrol,Enable,CBSkill_At1
Guicontrol,Enable,CBSkill_CD1
Guicontrol,Enable,CBSkill_DL1

Guicontrol,Enable,CBSkill_At2
Guicontrol,Enable,CBSkill_CD2
Guicontrol,Enable,CBSkill_DL2

Guicontrol,Enable,CBSkill_RB1
Guicontrol,Enable,CBSkill_RCD1
Guicontrol,Enable,CBSkill_RDL1

Guicontrol,Enable,CBSkill_RB2
Guicontrol,Enable,CBSkill_RCD2
Guicontrol,Enable,CBSkill_RDL2


;Guicontrol,Enable,Common_Attack
;Guicontrol,Enable,Num_CN
Guicontrol,Enable,Skill_X

;Tab3


Guicontrol,Enable,Delta
Guicontrol,Enable,vSkyEye
Guicontrol,Enable,vDelayFindChar

Guicontrol,Enable,PickUp
Guicontrol,Enable,Change_Weapon
Guicontrol,Enable,MinRelia
if Change_Weapon
{
	Guicontrol,Enable,Repair_Vip
	Guicontrol,Enable,Key_ChangeWeapon1
	Guicontrol,Enable,Key_ChangeWeapon2
	Guicontrol,Enable,Key_ChangeWeapon3
}

;Guicontrol,Enable,PassPT


;Guicontrol,Enable,UseItems

		;Guicontrol,Enable,vKeyWeapon
		;
		;Guicontrol,Enable,Change_Equip
		;Guicontrol,Enable,Change_SuiHp
		;Guicontrol,Enable,Change_SuiMp
		;Guicontrol,Enable,Min_SuiHp
		;Guicontrol,Enable,Min_SuiMp





;Tab4
if (CrrCharClass="Tiên•Thú")
	Guicontrol,Enable,Call_Pet



;Tab5

Guicontrol,Enable,Click_TT
Guicontrol,Enable,GetPoint
SB_SetText("Trạng thái: Auto Pause. ",1)
SB_SetIcon("shell32.dll",220,1)

Return





CheckTargetCap: 
Caption_Target_ID := o_Caption.read(MaPointerIdMod*)
Current_Target := CharOjb.read(MaPointerIdMod*)
if (StrLen(Caption_Target_ID)=10)
{
	if (Caption_Target_ID<>Current_Target)
		SetTarget(CharOjb,Caption_Target_ID)
	if (CharOjb.arSkill_Pet.MaxIndex())
	{
		Gosub,Call_KeyPet
		If Attack_First
			Delay(2000)
	}
	if (CharOjb.arSkill_TL.MaxIndex())
		GoSub,Call_Skill_TL
	if (CharOjb.arCBSkill.MaxIndex())
		GoSub,Call_Skill_Attack
	if (CharOjb.arKey_Exten.MaxIndex())
		Gosub,Call_KeyExten
}
else
{
	if AutoReBuff
		GoSub,Call_Skill_ReBuff
	SetTarget(CharOjb)
}


Return


CheckTarget:
Current_Target := CharOjb.read(MaPointerIdMod*)
aa := StrLen(Current_Target) 
;SB_SetText("Trạng thái: Check Target", 1)
if (StrLen(Current_Target)=10)
{
	if (CharOjb.arSkill_Pet.MaxIndex())
	{
		Gosub,Call_KeyPet
		If Attack_First
			Delay(2000)
	}
	if (CharOjb.arSkill_TL.MaxIndex())
		GoSub,Call_Skill_TL
	if (CharOjb.arCBSkill.MaxIndex())
		GoSub,Call_Skill_Attack
	if (CharOjb.arKey_Exten.MaxIndex())
		Gosub,Call_KeyExten
}
else if (StrLen(Current_Target)=1)
{
	CharOjb.CoolDown.Start := A_TickCount - 10000
	CharOjb.CoolDown.Times := 0
	IF AutoReBuff&&(CharOjb.arCBSkillRB.MaxIndex())
		Gosub,Call_Skill_ReBuff
	
	IDModMinDis := Get_ModMinDis(CharOjb,NeedModName,DistanceTrain,LvlMin_Mod,LvlMax_Mod,MinHeight,MaxHeight)
	if (IDModMinDis!=-1)
	{
		SetTarget(CharOjb,IDModMinDis)
		if (CharOjb.arSkill_Pet.MaxIndex())
		{
			Gosub,Call_KeyPet
			If Attack_First
				Delay(2000)
		}
		if (CharOjb.arSkill_TL.MaxIndex())
			GoSub,Call_Skill_TL
		if (CharOjb.arCBSkill.MaxIndex())
			GoSub,Call_Skill_Attack
		if (CharOjb.arKey_Exten.MaxIndex())
			Gosub,Call_KeyExten
	}
	
} 
else ;if (StrLen(Current_Target)<>10)
	SetTarget(CharOjb)
Return


Call_KeyPet:
if (Pet_Skilling>=CharOjb.arSkill_Pet.MaxIndex())
	Pet_Skilling := 1

Loop % CharOjb.arSkill_Pet.MaxIndex()
{
	If (A_index>=Pet_Skilling)
	{
		Pet_Skilling := A_index + 1
		If (A_TickCount-CharOjb.arSkill_Pet[A_index].StartSkill >= CharOjb.arSkill_Pet[A_index].Delay)
		{
			CharOjb.arSkill_Pet[A_index].StartSkill := A_TickCount
			CallFunSendKey(CharOjb,CharOjb.arSkill_Pet[A_index].IDSkill,0x00000104)
			Break
		}
	}
}
Return



Call_Skill_Attack:
if (A_TickCount-CharOjb.CoolDown.Start>=CharOjb.CoolDown.Times)
{
	ck_Skill := False
	If (CharOjb.Skilling>=CharOjb.arCBSkill.MaxIndex())
		CharOjb.Skilling := 1
	Loop % CharOjb.arCBSkill.MaxIndex()
	{
		If PauseA
			Break
		if (A_index>=CharOjb.Skilling)
		{
			If (A_TickCount-CharOjb.arCBSkill[A_index].StarSkill>=CharOjb.arCBSkill[A_index].Delay)
			{
				CharOjb.Skilling := A_index
				ck_Skill := True
				Break
			}
		}
	}
	
	if ck_Skill
	{
		CharOjb.CoolDown.Start := A_TickCount
		CharOjb.CoolDown.Times := CharOjb.arCBSkill[CharOjb.Skilling].Cast
		CharOjb.arCBSkill[CharOjb.Skilling].StarSkill := A_TickCount
		Call_Num_Id := CharOjb.arCBSkill[CharOjb.Skilling].IDSkill
		CharOjb.Skilling++
		CallFunSendKey(CharOjb,Call_Num_Id)
		
	}
}

Return



Call_Skill_ReBuff:
Loop % CharOjb.arCBSkillRB.MaxIndex()
{
	If PauseA
		Break
	If (A_TickCount-CharOjb.arCBSkillRB[A_index].StarSkill>=CharOjb.arCBSkillRB[A_index].Delay) 
	{
		SB_SetText("Trạng thái: Call Rebuff !", 1)
		if (CrrCharClass="Thần•Thú")&&(GetSkillTrans)
		{
			Trans := Char_TransForm(CharOjb)
			if (Transing<>Trans)
			{
				CallFunSendKey(CharOjb,SkillTrans) 
				Delay(2500)
			}
		}
		
		Call_Num_Id := CharOjb.arCBSkillRB[A_index].IDSkill
		CharOjb.arCBSkillRB[A_index].StarSkill := A_TickCount
		CallFunSendKey(CharOjb,Call_Num_Id)
		Delay(CharOjb.arCBSkillRB[A_index].Cast)
		
		if (CrrCharClass="Thần•Thú")&&(GetSkillTrans)
		{
			if (Transing<>Trans)
			{
				CallFunSendKey(CharOjb,SkillTrans)
				Delay(2500)
			}
		}
	}
	
}
Return


Call_Skill_TL: ;ko co kiem tra muc nang luong cua tinh linh, update sau lam
Loop % CharOjb.arSkill_TL.MaxIndex()
{
	If PauseA
		Break
	If (A_TickCount-CharOjb.arSkill_TL[A_index].StartSkill >= CharOjb.arSkill_TL[A_index].Delay)
	{
		CharOjb.arSkill_TL[A_index].StartSkill := A_TickCount
		CallFunSendKey(CharOjb,CharOjb.arSkill_TL[A_index].IDSkill,0x00000101)
		;Call_SkillTL(CharOjb,Current_Target,)
	}
}
Return



RepairVip:
if (Char_WeaponRelia(CharOjb)<=(MinRelia*100))
{
	CallFunSendKey(CharOjb,"b")
	ControlClick,x%xRepair_Vip% y%yRepair_Vip%,%Current_WinTitle%,,Left,,NA
	Delay(1000)
	CallFunSendKey(CharOjb,"y")
	Delay(200)
	CallFunSendKey(CharOjb,"b")
}

Return


Call_KeyExten:
ck_Skill := False
If (CharOjb.Skilling>=CharOjb.arKey_Exten.MaxIndex())
	CharOjb.Skilling := 1
Loop % CharOjb.arKey_Exten.MaxIndex()
{
	If PauseA
		Break
	if (A_index>=CharOjb.Skilling)
	{
		If (A_TickCount-CharOjb.arKey_Exten[A_index].StarSkill>=CharOjb.arKey_Exten[A_index].Delay)
		{
			CharOjb.Skilling := A_index
			ck_Skill := True
			Break
		}
	}
}

if ck_Skill
{
	CharOjb.CoolDown.Start := A_TickCount
	CharOjb.CoolDown.Times := CharOjb.arKey_Exten[CharOjb.Skilling].Cast
	CharOjb.arKey_Exten[CharOjb.Skilling].StarSkill := A_TickCount
	Call_Num_Id := CharOjb.arKey_Exten[CharOjb.Skilling].IDSkill
	CharOjb.Skilling++
	CallFunSendKey(CharOjb,Call_Num_Id)
	
}
 ;*[MoKy]
Return



DieToBoss:

if (CurrentHp(CharOjb) < 10)
{
	if AutoFollow                                                                                                          
		SetTimer,Auto_Follow,Off
	;if PickUpAll
		;SetTimer,Pick,off
	OldModId := ""
	if (CountDies>=vCountRevival)
	{
		SB_SetText("Trạng thái: Hết lượt  HS. ",1)		
		Goto,gPauseAuto
	}
	SB_SetText("Trạng thái: Chờ HS. ",1)
	ckLiveOrDie := 0
	if vBackVilla
	{
		SetControlDelay -1
		ControlClick,x%xRevival% y%yRevival%,%Current_WinTitle%,,Left,,NA
		Delay(4000,PauseA)
		if CurrentHp(CharOjb)
		{
			CountDies++
			ckLiveOrDie := 1
			GuiControl,,vTimesDied,Times Died : %CountDies%  ;`/ %vCountRevival%
			SB_SetText("Trạng thái:  Về làng ok . ",1)
			if XtrainOrigi
				Goto,GotoFlag
			else
				Goto,gPauseAuto
			
		}
	}
	
	
	if vSkillRevival
	{
		SetControlDelay -1
		ControlClick,x%xSkillRevival% y%ySkillRevival%,%Current_WinTitle%,,Left,,NA
		Delay(4000,PauseA)
		if CurrentHp(CharOjb)
		{
			CountDies++
			ckLiveOrDie := 1
			GuiControl,,vTimesDied,Times Died : %CountDies%  ;`/ %vCountRevival%				
			SB_SetText("Trạng thái: Đã HS. ",1)
			Delay(5000)	
			if AutoFollow                                                                                                          
				SetTimer,Auto_Follow,on
			;if PickUpAll
				;SetTimer,Pick,on
			Goto,AutoFarm
		}
		
	}
	
	
	if vAmulet
	{
		SetControlDelay -1
		ControlClick,x%xAmu% y%yAmu%,%Current_WinTitle%,,Left,,NA
		Delay(4000,PauseA)
		if CurrentHp(CharOjb)
		{
			CountDies++
			ckLiveOrDie := 1
			GuiControl,,vTimesDied,Times Died : %CountDies% ;`/ %vCountRevival%
			SB_SetText("Trạng thái: Đã HS. ",1)
			Delay(5000)
			if AutoFollow                                                                                                          
				SetTimer,Auto_Follow,on
			;if PickUpAll
				;SetTimer,Pick,on
			Goto,AutoFarm
		}
	}
	if (!vBackVilla&&!vSkillRevival&&!vAmulet)
		Goto,gPauseAuto
}

Return



GotoFlag:  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
SB_SetText("Trạng thái:  Go to Flag . ",1)

if GetPHome
{
	ckTime_StarUse_Stone := A_TickCount
	SetControlDelay -1
	ControlClick,x%xGetStone% y%yGetStone%,%Current_WinTitle%,,Left,,NA
	Delay(1500,PauseA)
	ControlLDBClick(xGetPHome,yGetPHome,Current_WinTitle)
	Delay(2000,PauseA)
}

if GetTabFly
{
	zFlyHeight := FlyHeight
	Gosub,FLyUpper
}
else
{
	ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%,,Left,,NA
	Delay(2000,PauseA)
	ControlLDBClick(xGetFlag,yGetFlag,Current_WinTitle)
	Delay(1000,PauseA)
	ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%,,Left,,NA
	Delay(100)
	ControlClick,x733 y445,%Current_WinTitle%,,Right,,NA
}
SB_SetText("Trạng thái:  Check to Flag . ",1)
Time_StarCheckMove := A_TickCount
Loop 10000
{
	if PauseA
		Goto,gPauseAuto
	if (CurrentHp(CharOjb) < 10)
		Goto,DieToBoss
	If (DistanceCal(CharOjb,XtrainOrigi,YtrainOrigi) <= MaxDisR)||(A_TickCount-Time_StarCheckMove>=300000)
		Break
	Delay(1000,PauseA)
}
if GetRanDesti
{
	dx := FuncRandom(-20,20)
	dy := FuncRandom(-20,20)
	ControlLDBClick(xGetRanDesti+dx,yGetRanDesti+dy,Current_WinTitle)
	Delay(5000,PauseA)
}



if GetTabFly&&!trainFly ;<<<<<<<<<<<<<<<<<<<<<????????????????????????????? roois rois
{
	Loop 
	{
		FlyWithMe(CharOjb)
		Delay(4000,PauseA)
		if (StatusFly(CharOjb)=0)
			Break
	}
}
if AutoFollow                                                                                                          
	SetTimer,Auto_Follow,on
;if PickUpAll
	;SetTimer,Pick,on
Goto,AutoFarm
Return




FLyUpper:
SetControlDelay -1
ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%,,Left,,NA
Delay(2000,PauseA)
if GetSaveFly
{
	ControlLDBClick(xGetSaveFly,yGetSaveFly,Current_WinTitle)
	Delay(5000,PauseA)
}

if (StatusFly(CharOjb)=0)
	FlyWithMe(CharOjb)
Delay(3000,PauseA)
ControlLDBClick(xGetFlag,yGetFlag,Current_WinTitle)
Delay(1000,PauseA)
ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%,,Left,,NA
Delay(100)
ControlClick,x733 y445,%Current_WinTitle%,,Right,,NA
ckTime_Start_Up := A_TickCount
CrrPZ_Char := 0
Loop 
{
	
	CrrPZ_Char := GetPZ(CharOjb)
	if (CrrPZ_Char < zFlyHeight)
	{
		SetControlDelay -1
		ControlClick,x%xGetTabFly% y%yGetTabFly%,%Current_WinTitle%,,Left,,NA
	}
	else
		Break
	If (A_TickCount-ckTime_Start_Up>=10000)
		Break
	if PauseA
		Goto,gPauseAuto
	if (CurrentHp(CharOjb) < 10)
		Goto,DieToBoss
	Delay(1000,PauseA)
	
}

Return	



ReturnOrigi:
SB_SetText("Trạng thái:  Comeback Origil . ",1)
Loop 
{
	if PauseA
		Goto,gPauseAuto
	ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%,,Left,,NA
	Delay(2000,PauseA)
	ControlLDBClick(xGetFlag,yGetFlag,Current_WinTitle)
	Delay(1000,PauseA)
	ControlClick,x%xGetMap% y%yGetMap%,%Current_WinTitle%,,Left,,NA
	Delay(100)
	ControlClick,x733 y445,%Current_WinTitle%,,Right,,NA	
	if (CurrentHp(CharOjb) < 10)
		Goto,DieToBoss
	Delay(3000,PauseA)
	DisToOrig := DistanceCal(CharOjb,XtrainOrigi,YtrainOrigi)
	if (DisToOrig <= MaxDisR) ; kiem tra lai nhieu luc train mat ddat ma return origil thi fly
	{
		if !trainFly&&(StatusFly(CharOjb))
		{
			FlyWithMe(CharOjb)
			Delay(2000,PauseA)
		}
		SetTarget(CharOjb)
		Break
	}
	
}
if AutoFollow
	SetTimer,Auto_Follow,On
;if PickUpAll
	;SetTimer,Pick,on
Goto,RetAuto
Return







SkyEye:
gosub,Submit
hbm := CreateDIBSection(Width, Height)

hdc := CreateCompatibleDC()

obm := SelectObject(hdc, hbm)

G := Gdip_GraphicsFromHDC(hdc)

Gdip_SetSmoothingMode(G, 4)

pBrush := Gdip_BrushCreateSolid(0xaa000000)

Gdip_FillRoundedRectangle(G, pBrush, 0, 0, Width, Height, 20)

Gdip_DeleteBrush(pBrush)

ListPlayerName := TextPrint := ""         ;Global pCurrentHp := [BaseAdd,"UInt",0x1C,0x04,0x34,0x4CC]

ojPlayerInfo := {}
arDis := []
index := 1
Loop 30
{
	PlayerName := PlayerID :=   PlayerDisToChar := pTemp1 := ""	
	pTemp1 := DecToHex(CharOjb.read(pTemp + 0x8*(A_Index - 1),"UInt"))
	PlayerName := CharOjb.readString(CharOjb.read(pTemp1 + 0x6FC,"UInt"),20,"utf-16")	
	PlayerID := CharOjb.read(pTemp1 + 0x4B8,"UInt")
	PlayerDisToChar :=  FloatToInt(CharOjb.read(pTemp1 + 0x958,"Ufloat")) 
	Len_PlayerID := StrLen(PlayerID)
	If ((Len_PlayerID=4)||(Len_PlayerID=5))&&!InStr(ListPlayerName,PlayerName) ;&&InStr(ListIDChar,PlayerID)
	{
		ListPlayerName .= "|" PlayerName
		index++
		arDis.Push(PlayerDisToChar)
		ojPlayerInfo.InsertAt(PlayerDisToChar,PlayerName)
	}
	
}
SortArray(arDis,"D")

For k,v in ojPlayerInfo
{
	TextPrint .= "`n" v .  "-"  . k "m"
	;MsgBox,,, % TextPrint
	
}

Height := index * 15 + 10

WinGetPos,Xwin, Ywin,WidthWin,,% Current_WinTitle
Xsg2 := Xwin + WidthWin
Ysg2 := Ywin ;+ dY
Options = x7 y5 w80p Left cbbffffff r4 s12  

Gdip_TextToGraphics(G,TextPrint, Options, Font, Width, Height)

UpdateLayeredWindow(hwnd1, hdc, Xsg2 , Ysg2 , Width, Height) 

SelectObject(hdc, obm)

DeleteObject(hbm)

DeleteDC(hdc)

Gdip_DeleteGraphics(G)

Return



CheckParty:
gosub,Submit
cParty := PT_CountPlayer(CharOjb)
if (cParty < 10)||!cParty
{
	cPlayer := CountPlayer(CharOjb)
	If !cPlayer&&!cParty
		Return
	if (cPlayer > cParty)
	{
		;ToolTip,%cPlayer%__%cParty%
		AutoPT(Current_WinTitle,1)		
	}
}
Return










GuiContextMenu:
If !PauseA
	Return
if A_GuiControl <> vListClick
	return
Menu, 1:MyContextMenu, Show, %A_GuiX%, %A_GuiY%
return



DellList:
if (A_ThisMenuItem="Del")
{
	Loop
	{
		RowNumber := LV_GetNext(RowNumber-1)
		if not RowNumber
			break
		LV_Delete(RowNumber)
	}
}
else
	LV_Delete()
return



SaveSetup:
gosub,Submit
if Click_TT
	Return
Gui +OwnDialogs
FileSelectFile,DirFile,S16,% FileName, Save, (*.mpla)
SplitPath,DirFile,FileName
IfNotInString,FileName,.
	FileName.=.mpla
Patch_Working2 := StrReplace(DirFile,FileName,"")
SetWorkingDir % Patch_Working2
if FileExist(FileName)
	FileDelete,% FileName

pay := ","
WinGetPos,xWinG,yWinG,WinWidth,WinHeight,% Current_WinTitle					
FileAppend,%vBackVilla%%A_Tab%%xRevival%%A_Tab%%yRevival%`n,% FileName ;1
FileAppend,%vAmulet%%A_Tab%%xAmu%%A_Tab%%yAmu%%A_Tab%%xWinG%%A_Tab%%yWinG%%A_Tab%%WinWidth%%A_Tab%%WinHeight%`n,% FileName ;2
FileAppend,%vSkillRevival%%A_Tab%%xSkillRevival%%A_Tab%%ySkillRevival%`n,% FileName ;3
FileAppend,%vCountRevival%`n,% FileName ;4
FileAppend,%GetRanDesti%%A_Tab%%xGetRanDesti%%A_Tab%%yGetRanDesti%`n,% FileName ;5
FileAppend,%GetMap%%A_Tab%%xGetMap%%A_Tab%%yGetMap%`n,% FileName ;6
FileAppend,%GetFlag%%A_Tab%%xGetFlag%%A_Tab%%yGetFlag%`n,% FileName ;7
FileAppend,%GetTabFly%%A_Tab%%xGetTabFly%%A_Tab%%yGetTabFly%%A_Tab%%FlyHeight%`n,% FileName ;  8

;Tab 2
FileAppend,%DistanceTrain%%A_Tab%%LvlMin_Mod%%A_Tab%%LvlMax_Mod%%A_Tab%%MinHeight%%A_Tab%%MaxHeight%`n,% FileName ;9
FileAppend,%Common_Attack%`n,% FileName ;10
StrAppend := ""
Loop 8
{
	Delemit :=  (A_Index<8) ? A_Tab : "`n"
	StrAppend .= Skill_TL%A_Index% . pay . DLSkill_TL%A_Index% . Delemit
}
FileAppend,%StrAppend%,% FileName ;11 

StrAppend := ""
Loop 2
{
	Delemit :=  (A_Index<2) ? A_Tab : "`n"
	StrAppend .= CBSkill_At%A_Index% . pay . CBSkill_CD%A_Index% . pay . CBSkill_DL%A_Index% . Delemit
}

FileAppend,%StrAppend%,% FileName ;12   

StrAppend := ""
Loop 2
{
	Delemit :=  (A_Index<2) ? A_Tab : "`n"
	StrAppend .= CBSkill_RB%A_Index% . pay . CBSkill_RCD%A_Index% . pay . CBSkill_RDL%A_Index% . Delemit
}
FileAppend,%StrAppend%,% FileName ;13  


FileAppend,%A_Tab%`n,% FileName ;14
FileAppend,%Skill_X%`n,% FileName ;15

;Tab 3


FileAppend,%Change_Weapon%%A_Tab%%MinRelia%%A_Tab%%Key_ChangeWeapon1%%A_Tab%%Key_ChangeWeapon2%%A_Tab%%Key_ChangeWeapon3%%A_Tab%%Repair_Vip%%A_Tab%%xRepair_Vip%%A_Tab%%yRepair_Vip%`n,% FileName ;16

StrAppend := ""
Loop 5
{
	Delemit :=  (A_Index<5) ? A_Tab : "`n"
	StrAppend .= Key_Exten%A_Index% . pay . Key_ExtenDL%A_Index% . Delemit
}
FileAppend,%StrAppend%,% FileName ;17  

;Tab 4
StrAppend := ""
Loop 7
{
	Delemit :=  (A_Index<7) ? A_Tab : "`n"
	StrAppend .= Skill_Pet%A_Index% . pay . DLSkill_Pet%A_Index% . Delemit
}
FileAppend,%Call_Pet%%A_Tab%%Key_Pet%%A_Tab%%Heal_Pet%%A_Tab%%nPercentHpPet%%A_Tab%%Revival_Pet%%A_Tab%%vCRevival_Pet%%A_Tab%%Attack_First%%A_Tab%%StrAppend%,% FileName ;18

FileAppend,%GetSkillTrans%%A_Tab%%SkillTrans%%A_Tab%%Transing%`n,% FileName ;19
FileAppend,%HKfollow%%A_Tab%%HKRebuff%%A_Tab%%HKChangeEquip%`n,% FileName ;20



;TAb 5
ControlGet, OutList, List, , SysListView321, ahk_id %hGui% 
FileAppend,% OutList,% FileName  ;21
;ToolTip,Save Ok !
;Delay(2000)
;ToolTip
SB_SetText("Trạng thái: Đã lưu",1)
Return





OpenFile:
gosub,Submit
if LV_GetCount()
	MsgBox, 262177, ,Delete all data ?
IfMsgBox,Cancel
	return
LV_Delete()
Gui +OwnDialogs
FileSelectFile,DirFile,3,, Open, (*.mpla)


Loop,Read,% DirFile 
{
	if A_Index=1
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		vBackVilla := TempIn[1]
		Guicontrol,,vBackVilla,%vBackVilla%
		xRevival := TempIn[2]
		yRevival := TempIn[3]
		TempIn := ""
	}
	else if A_Index=2
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		vAmulet := TempIn[1]
		if vBackVilla
			vAmulet := 0
		Guicontrol,,vAmulet,%vAmulet%
		xAmu := TempIn[2]
		yAmu := TempIn[3]
		
		xWinG := TempIn[4]
		yWinG := TempIn[5]
		
		WinWidth := TempIn[6]
		WinHeight := TempIn[7]
		TempIn := ""
	}
	
	else if A_Index=3
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		vSkillRevival := TempIn[1]
		if vBackVilla
			vSkillRevival := 0
		Guicontrol,,vSkillRevival,%vSkillRevival%
		xSkillRevival := TempIn[2]
		ySkillRevival := TempIn[3]
		TempIn := ""
	}
	else if A_Index=4
	{
		vCountRevival := A_LoopReadLine   
		Guicontrol,,vCountRevival,%vCountRevival%
		TempIn := ""
	}
	else if A_Index=5
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		GetRanDesti := TempIn[1]
		Guicontrol,,GetRanDesti,%GetRanDesti%
		xGetRanDesti := TempIn[2]
		yGetRanDesti := TempIn[3]
		TempIn := ""
	}
	else if A_Index=6
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		GetMap := TempIn[1]
		Guicontrol,,GetMap,%GetMap%
		xGetMap := TempIn[2]
		yGetMap := TempIn[3]
		TempIn := ""
	}
	else if A_Index=7
	{
		
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		GetFlag := TempIn[1]
		Guicontrol,,GetFlag,%GetFlag%
		xGetFlag := TempIn[2]
		yGetFlag := TempIn[3]
		TempIn := ""
	}
	else if A_Index=8
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		GetTabFly := TempIn[1]
		Guicontrol,,GetTabFly,%GetTabFly%
		xGetTabFly := TempIn[2]
		yGetTabFly := TempIn[3]
		FlyHeight := TempIn[4]
		Guicontrol,,FlyHeight,%FlyHeight%	
		TempIn := ""
	}
	else if A_Index=9
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		DistanceTrain := TempIn[1]
		LvlMin_Mod := TempIn[2]
		LvlMax_Mod := TempIn[3]
		MinHeight := TempIn[4]
		MaxHeight := TempIn[5]
		BossName := TempIn[6]
		Guicontrol,,DistanceTrain,%DistanceTrain%
		Guicontrol,,LvlMin_Mod,%LvlMin_Mod%
		Guicontrol,,LvlMax_Mod,%LvlMax_Mod%
		Guicontrol,,MinHeight,%MinHeight%
		Guicontrol,,MaxHeight,%MaxHeight%
		TempIn := ""
	}
	else if A_Index=10
	{
		;Common_Attack := A_LoopReadLine
		;Guicontrol,,Common_Attack,%Common_Attack%
		
	}
	else if A_Index=11   
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		Loop 8
		{
			InfoSkill := StrSplit(TempIn[A_Index],",")
			Guicontrol,,Skill_TL%A_Index%,% InfoSkill[1]
			if InfoSkill[1]
				Gosub,Skill_TL%A_Index%
			Guicontrol,,DLSkill_TL%A_Index%,% InfoSkill[2]
			InfoSkill := ""
		}
		TempIn := ""
	}
	else if A_Index=12
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		index := 0
		Loop 2
		{
			index++
			InfoSkill := StrSplit(TempIn[index],",")
			For i,Val in ArNumCS
				if (InfoSkill[1]=Val)
					Guicontrol,Choose,CBSkill_At%index%,%A_Index% 
			
			Guicontrol,,CBSkill_CD%A_Index%,% InfoSkill[2]
			Guicontrol,,CBSkill_DL%A_Index%,% InfoSkill[3]
			InfoSkill := ""
		}
		TempIn := ""
	}
	else if A_Index=13
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		index := 0
		Loop 2
		{
			index++
			InfoSkill := StrSplit(TempIn[index],",")
			For i,Val in ArNumCR
				if (InfoSkill[1]=Val)
				{
					Guicontrol,Choose,CBSkill_RB%index%,%A_Index% 
					Break
				}
			
			Guicontrol,,CBSkill_RCD%A_Index%,% InfoSkill[2]
			Guicontrol,,CBSkill_RDL%A_Index%,% InfoSkill[3]
			InfoSkill := ""
		}
		TempIn := ""
	}
	else if A_Index=14
	{
		
		
	}
	else if A_Index=15  
	{
		Skill_X := A_LoopReadLine
		For i,Val in ArNum
			if (Skill_X=Val)
			{
				stt := i + 1
				Guicontrol,Choose,Skill_X,%stt%
				Break
			}		
	}
	else if A_Index=16
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		Change_Weapon := TempIn[1]
		Guicontrol,,Change_Weapon,% TempIn[1]
		MinRelia := TempIn[2]
		Guicontrol,,MinRelia,% TempIn[2]
		W1 := TempIn[3]
		W2 := TempIn[4]
		W3 := TempIn[5]
		Repair_Vip := TempIn[6]
		Guicontrol,,Repair_Vip,% TempIn[6]
		xRepair_Vip := TempIn[7]
		yRepair_Vip := TempIn[8]
		Index := 0
		LOOP 3
		{
			Index++
			For k,Val in ArWe
			{				
				if (W%Index%==Val)
					Guicontrol,Choose,Key_ChangeWeapon%Index%,%A_Index%
			}
		}
		
		TempIn := ""
	}
	else if A_Index=17
	{  
		TempIn := StrSplit(A_LoopReadLine,A_Tab)
		index := 0
		Loop 5
		{
			index++
			InfoSkill := StrSplit(TempIn[index],",")
			For i,Val in ArNumCE
				if (InfoSkill[1]=Val)
					Guicontrol,Choose,Key_Exten%index%,%A_Index%
			Guicontrol,,Key_ExtenDL%index%,% InfoSkill[2]
			InfoSkill := ""
		}
		
		TempIn := ""
	}
	else if A_Index=18
	{
		if (CrrCharClass="Tiên•Thú")
		{
			TempIn := StrSplit(A_LoopReadLine,A_Tab) 
			Call_Pet := TempIn[1]
			Guicontrol,,Call_Pet,% Call_Pet
			Key_Pet := TempIn[2]
			Heal_Pet := TempIn[3]
			Revival_Pet := TempIn[5]
			
			Guicontrol,Choose,Key_Pet,% Key_Pet
			
			For index,Val in ArFa
				if (Heal_Pet=Val)
					Guicontrol,Choose,Heal_Pet,%A_Index%
			nPercentHpPet := TempIn[4]
			Guicontrol,,nPercentHpPet,%nPercentHpPet%
			
			For index,Val in ArFa
				if (Revival_Pet=Val)
					Guicontrol,Choose,Revival_Pet,%A_Index%
			vCRevival_Pet := TempIn[6]
			Guicontrol,,vCRevival_Pet,%vCRevival_Pet%
			Attack_First := TempIn[7]
			Guicontrol,,Attack_First,%Attack_First%
			index := 7
			Loop 7
			{
				index++
				Data_Skill_Pet := TempIn[index]
				Data_Skill_Pet := StrSplit(Data_Skill_Pet,",") 
				Skill_Pet%A_Index% := Data_Skill_Pet[1]
				DLSkill_Pet%A_Index% := Data_Skill_Pet[2]
				if Skill_Pet%A_Index%
				{
					Guicontrol,,Skill_Pet%A_Index%,1
					Gosub,Skill_Pet%A_Index%
				}
				else
					Guicontrol,,Skill_Pet%A_Index%,0
			}
			TempIn := ""
			if Call_Pet
				Gosub,Call_Pet
		}
		
	}
	else if A_Index=19
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab) 
		GetSkillTrans := TempIn[1]
		Guicontrol,,GetSkillTrans,%GetSkillTrans%
		SkillTrans := TempIn[2]
		For index,Val in ArFa
			if (SkillTrans=Val)
				Guicontrol,Choose,SkillTrans,%A_Index%
		if GetSkillTrans	
		{
			GoSub,GetSkillTrans
		}
		
		Transing := TempIn[3]
		TempIn := ""
	}
	else if A_Index=20
	{
		TempIn := StrSplit(A_LoopReadLine,A_Tab) 
		;HKfollow := TempIn[1]
		;Guicontrol,,HKfollow,%HKfollow%
		;HKRebuff := TempIn[2]
		;Guicontrol,,HKRebuff,%HKRebuff%
		;GoSub,HKfollow
		;Gosub,HKRebuff
		;HKChangeEquip := TempIn[3]
		;Guicontrol,,HKChangeEquip,%HKChangeEquip%
		TempIn := ""
	}
	else
	{
		LV_Add("",StrSplit(A_LoopReadLine,A_Tab)*)
		LV_ModifyCol(1)
		LV_ModifyCol(2)
	}
	
}


Guicontrol,Enable,SaveSetting
Guicontrol,Enable,OpenSetting
Guicontrol,Enable,Current_WinTitle
Guicontrol,Show,vRunAuto
Guicontrol,Hide,vPauseAuto

Guicontrol,Enable,SetSync
Guicontrol,Enable,AutoFollow
Guicontrol,Enable,DisTo_Player
Guicontrol,Enable,AutoReBuff

Guicontrol,Enable,vBackVilla
Guicontrol,Enable,vAmulet
Guicontrol,Enable,vSkillRevival
Guicontrol,Enable,vCountRevival


Guicontrol,Enable,GetOrigi
Guicontrol,Enable,GetMap
Guicontrol,Enable,GetFlag
Guicontrol,Enable,nFlyHeight
Guicontrol,Enable,FlyHeight
Guicontrol,Enable,GetTabFly
Guicontrol,Enable,GetSaveFly
Guicontrol,Enable,MaxDisR



;Tab2
Guicontrol,Enable,DistanceTrain
Guicontrol,Enable,LvlMin_Mod
Guicontrol,Enable,LvlMax_Mod
Guicontrol,Enable,MinHeight
Guicontrol,Enable,MaxHeight


;Guicontrol,Enable,Common_Attack
;if Common_Attack
	;Gosub,Common_Attack
;Guicontrol,Enable,Use_All_Skill

;Guicontrol,Enable,Num_CN
Guicontrol,Enable,Skill_X


;Tab3
Guicontrol,Enable,Delta
Guicontrol,Enable,vSkyEye
Guicontrol,Enable,vDelayFindChar

;Guicontrol,Enable,PassPT


Guicontrol,Enable,PickUp
Guicontrol,Enable,Change_Weapon
if Change_Weapon
{
	
	Guicontrol,Enable,Key_ChangeWeapon1
	Guicontrol,Enable,Key_ChangeWeapon2
	Guicontrol,Enable,Key_ChangeWeapon3
}
Guicontrol,Enable,Repair_Vip
Guicontrol,Enable,MinRelia
;Guicontrol,Disable,MinRelia
;Guicontrol,Disable,Change_Equip
;Guicontrol,Disable,Change_SuiHp
;Guicontrol,Disable,Change_SuiMp


;Tab4




;Tab5

Guicontrol,Enable,GetPoint
Guicontrol,Enable,Click_TT

if WinWidth&&WinHeight 
	WinMove,%Current_WinTitle%,,%xWinG%,%yWinG%,%WinWidth%,%WinHeight%

;Gosub,Submit
SB_SetText("Trạng thái: Đã mở",1)
Return



GuiEscape:
Exit:
ExitScript:
Gdip_Shutdown(pToken)
;ochar__delete()
	;Process,Close, % Pid_AutoPT
SendMessage, 0xC , 0 , &TitleWinGame,,ahk_id %Crrent_Id%	
ToolTip, Tool By Mộc !
sleep 2000





SetWorkingDir % Patch_Working1
IfWinNotExist,ahk_exe MoKPL.exe
	Run *RunAs "MoKPL.exe" 1



ExitApp







RequireAdmin()
{
	
	
	If !A_Args.MaxIndex()
	{
		ExitApp
	}
	Patch_Working1 := A_Args[1]
	SetWorkingDir % Patch_Working1
	Command_Line := DllCall("GetCommandLine", "Str")
	If not (A_IsAdmin or RegExMatch(Command_Line, " /restart(?!\S)")) 
	{
		Try 
		{
			If A_IsCompiled
				Run *RunAs "%A_ScriptFullPath%" /restart
			Else 
				Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
		}
		ExitApp
	}
}













