; Q 
; Copyright 1996, 2003 Xception

Global lScore.l, iSelector,lBonus.l,hy.l
Structure structHi
score.l
name.s
EndStructure

Dim Hiscores.structHi(10)
Dim bigboard(9,9)
Dim smallboard(3,3)


Procedure hurry()
hy+4
DisplayTransparentSprite(199,90,hy)
If hy>400+42:hy=-42:EndIf
EndProcedure


Procedure sinus_warp()
key=0
StartDrawing(ScreenOutput())
DrawImage(UseImage(1),0,0,640,400)
StopDrawing()

For lop=0 To 179
GrabSprite(lop+3,0,lop,639,1)
Next lop
GrabSprite(181,0,181,639,219)
start.f=0
Repeat
ClearScreen(0,0,0)
For lop=0 To 179
DisplaySprite(lop+3,Sin(start+lop*0.02)*16,lop)
Next lop
DisplaySprite(181,0,181)
start=start+0.1
DisplayTranslucideSprite(1,220,222+iSelector*38,64);
FlipBuffers()
id=WindowEvent()
ExamineKeyboard()
If KeyboardReleased(#PB_Key_Up) Or KeyboardReleased(#PB_Key_Down):key=0:EndIf
If key=0
If KeyboardPushed(#PB_Key_Up):PlaySound(1):iSelector=iSelector-1:key=1:EndIf
If KeyboardPushed(#PB_Key_Down):PlaySound(1):iSelector=iSelector+1:key=1:EndIf
If iSelector<1:iSelector=3:EndIf
If iSelector>3:iSelector=1:EndIf
EndIf
If KeyboardReleased(#PB_Key_ESCAPE):End:EndIf
Until KeyboardReleased(#PB_Key_Space) Or KeyboardReleased(#PB_KEY_RETURN)
PlaySound(1)
For lop=3 To 182
FreeSprite(lop)
Next lop
EndProcedure

Procedure clearHiscore()
For i=0 To 9 
Hiscores(i)\score=100-i*10
Hiscores(i)\name="no entry"
Next i
EndProcedure

Procedure saveHiscore()
If CreateFile(0,"hi.dat")<>0
For i=0 To 9
WriteStringN(Hiscores(i)\name)
WriteLong(Hiscores(i)\score)
Next i
CloseFile(0)
EndIf
EndProcedure

Procedure loadHiscore()
If OpenFile(0,"hi.dat")<>0
For i=0 To 9
Hiscores(i)\name=ReadString()
Hiscores(i)\score=ReadLong()
Next i
CloseFile(0)
ElseIf clearHiscore()
EndIf
EndProcedure

Procedure.l getPlace(score)
If score<Hiscores(9)\score:ProcedureReturn 11:Goto endp:EndIf 
For i=0 To 9
If score>Hiscores(i)\score:ProcedureReturn i+1:Goto endp:EndIf
Next i
ProcedureReturn i+1
endp:
EndProcedure

Procedure.l addPlayer(newname.s,score.l)
place.l=getPlace(score)
If place>10:ProcedureReturn 11:Goto endp2:EndIf
For i=place To 9
Hiscores(10-(i-place)-1)\name=Hiscores(10-(i-place)-2)\name
Hiscores(10-(i-place)-1)\score=Hiscores(10-(i-place)-2)\score
Next i
Hiscores(place-1)\name=Left(newname,16)
Hiscores(place-1)\score=score
ProcedureReturn place
endp2:
EndProcedure

Procedure showhiscorelist()
x=-140
If getPlace(lScore)<11:addPlayer(InputRequester("Congratulations!","Enter your name!",""),lScore):EndIf
Repeat
WindowEvent()
ClearScreen(051,064,204)
For i=0 To 7
DisplaySprite(200,i*80,0)
DisplaySprite(200,i*80,9*40)
DisplaySprite(200,0,(i+1)*40)
DisplaySprite(200,560,(i+1)*40)
Next i
StartDrawing(ScreenOutput())
DrawingFont(UseFont(1))
DrawingMode(1)
FrontColor(15,20,5)
Locate(x,-2)
If x<248:x+2:EndIf
DrawText("Top    Ten")
FrontColor(240,240,240)
For i=0 To 9
FrontColor(255-i*10,255-i*15,255-i*20)
Locate(120-18*Len(Str(i+1)),i*30+50)
DrawText(Str(i+1)+". "+Hiscores(i)\name)
Locate(550-18*Len(Str(Hiscores(i)\score)),i*30+50)
DrawText(Str(Hiscores(i)\score))
Next i
StopDrawing()
FlipBuffers()
kb=ExamineKeyboard()
Until KeyboardReleased(#PB_Key_SPACE) Or KeyboardReleased(#PB_Key_ESCAPE)
PlaySound(1)
EndProcedure


Procedure tproc()
lBonus-1
EndProcedure


Procedure prepareBoard()
 For y=0 To 8
 For x=0 To 8
 bigboard(x,y)=Round(Random(1),0)
 Next x: Next y
 xsel=Round(Random(6),0)
 ysel=Round(Random(6),0)
 For y=0 To 2
 For x=0 To 2
 smallboard(x,y)=bigboard(x+xsel,y+ysel)
 Next x: Next y
EndProcedure

Procedure drawboardfirst()
Shared qmain,bLevel.b
EndTimer(1)
SetFrameRate(20)
StartDrawing(ScreenOutput())
DrawImage(qmain,0,0,640,400)
DrawingMode(1)
FrontColor(250,50,50)
Locate(570,60)
DrawText(Str(lBonus))
FrontColor(50,50,250)
Locate(570,160)
DrawText(Str(bLevel))
Locate(570,260)
DrawText(Str(lScore))
Locate(570,360)
DrawText(Str(Hiscores(0)\score))
StopDrawing()
For y=0 To 2
 For x=0 To 2
 WindowEvent()
FlipBuffers()

 If smallboard(x,y)=1:PlaySound(0):DisplaySprite(0,387+x*38,33+y*38):EndIf
 Next x: Next y

For y=0 To 8
 For x=0 To 8
 WindowEvent()
FlipBuffers()

 If bigboard(x,y)=1:PlaySound(0):DisplaySprite(0,33+x*38,33+y*38):EndIf
 Next x: Next y
SetFrameRate(50)
StartTimer(1,1000,@tproc())
EndProcedure


Procedure drawboard()
For y=0 To 8
 For x=0 To 8
 If bigboard(x,y)=1:DisplaySprite(0,33+x*38,33+y*38):EndIf
 Next x: Next y
For y=0 To 2
 For x=0 To 2
 If smallboard(x,y)=1:DisplaySprite(0,387+x*38,33+y*38):EndIf
 Next x: Next y
EndProcedure

Procedure.b checkBlocks(cx,cy)
Shared bLevel.b
result.b=1
For y=0 To 2
 For x=0 To 2
If smallboard(x,y)<>bigboard(cx+x,cy+y):result.b=0:EndIf
Next x: Next y 
If result=1:lScore+lBonus:bLevel+1:lBonus+2
prepareboard()
drawboardfirst()
ElseIf PlaySound(2)
EndIf
;MessageBox_(0,Str(result),"capt",MB_OK)
ProcedureReturn result
EndProcedure


If InitMouse()=0 Or InitSprite()=0 Or InitKeyboard()=0 Or InitSound()=0
MessageRequester("Error","Can't initialize DirectX",#PB_MessageRequester_Ok)
End
EndIf
hwnd=OpenWindow(1,0,0,640,400,#PB_Window_ScreenCentered,"Q")
OpenWindowedScreen(hwnd,0,0,640,400,0,0,0)
LoadFont (1, "Times New Roman", 26)
loadHiscore()
; **************************** load gfx ******************************

UsePNGImageDecoder()
spr_block=LoadSprite(0,"block.png")
spr_selector=CreateSprite(1,200,40)
spr_hs=LoadSprite(200,"hs.png")
spr_hu=LoadSprite(199,"hu.png")
CreateSprite(2,112,112)
StartDrawing(SpriteOutput(2))
Box(0,0,111,111,RGB(220,0,0))
StopDrawing()

StartDrawing(SpriteOutput(1))
Box(0,0,199,39,RGB(200,200,200))
StopDrawing()
title=LoadImage(1,"title.png")
qmain=LoadImage(2,"QMAIN2.png")
SetFrameRate(50)
iSelector=1;

; *************************** load SFX ********************************
LoadSound(0,"beep.wav")
LoadSound(1,"click.wav")
LoadSound(2,"bad.wav")


; +++++++++++++++++++++++++ Titlescreen +++++++++++++++++++++++++++++++++
title:
lScore=0
sinus_warp()
Select iSelector
Case 1
Goto game
Case 2
showhiscorelist()
Goto title
Case 3
End
EndSelect
End

; +++++++++++++++++++++++++ game +++++++++++++++++++++++++++++++++
game:
hy=-42
lBonus=60
bLevel.b=1
curx=0:cury=0
prepareboard()
drawboardfirst()
key=0
Repeat
ExamineKeyboard()
id=WindowEvent()
If KeyboardReleased(#PB_KEY_DOWN) Or KeyboardReleased(#PB_KEY_UP) Or KeyboardReleased(#PB_KEY_LEFT) Or KeyboardReleased(#PB_KEY_RIGHT) Or KeyboardReleased(#PB_KEY_SPACE)
key=0:EndIf
If key=0
If KeyboardPushed(#PB_KEY_DOWN):cury=cury+1:PlaySound(1):key=1:EndIf
If KeyboardPushed(#PB_KEY_UP):cury=cury-1:PlaySound(1):key=1:EndIf
If KeyboardPushed(#PB_KEY_Left):curx=curx-1:PlaySound(1):key=1:EndIf
If KeyboardPushed(#PB_KEY_RIGHT):curx=curx+1:PlaySound(1):key=1:EndIf
If KeyboardPushed(#PB_KEY_SPACE):checkBlocks(curx,cury):key=1:EndIf
EndIf
If curx>6:curx=0:EndIf
If curx<0:curx=6:EndIf
If cury>6:cury=0:EndIf
If cury<0:cury=6:EndIf
FlipBuffers()
StartDrawing(ScreenOutput())
DrawImage(qmain,0,0,640,400)
DrawingMode(1)
FrontColor(250,50,50)
Locate(570,60)
DrawText(Str(lBonus))
FrontColor(50,50,250)
Locate(570,160)
DrawText(Str(bLevel))
Locate(570,260)
DrawText(Str(lScore))
Locate(570,360)
DrawText(Str(Hiscores(0)\score))
StopDrawing() 
drawboard()
DisplayTranslucideSprite(2,30+curx*38,30+cury*38,64)
If lBonus<11
hurry()
EndIf
Until KeyboardReleased(#PB_Key_ESCAPE) Or lBonus<0

EndTimer(1)
showhiscorelist()
saveHiscore()
Goto title:
End
; ExecutableFormat=Windows
; CursorPosition=3
; FirstLine=1
; UseIcon=D:\Coding\PureBasic\Xception\Q\Icon1.ico
; Executable=D:\Coding\PureBasic\Xception\Q\Q.exe
; CPU=1
; DisableDebugger
; EOF