; Kaugummiautomat Simulator
; Copyright 1991, 2003 Xception


If InitSprite()=0 Or InitKeyboard()=0 Or InitSound()=0
MessageRequester("Error","Can't initialize DirectX",#PB_MessageRequester_Ok)
End
EndIf
; ***************************** Load Resources ****************************
UsePNGImageDecoder()
back=LoadImage(1,"back8.png")
OpenScreen(640,480,16,"KAS")
LoadSprite(0,"hand.png")
LoadSprite(1,"gumred.png")
LoadSprite(2,"gumblue.png")
LoadSprite(3,"gumgreen.png")
LoadSprite(4,"gumy.png")
LoadSprite(5,"spider.bmp")
CreateAnimSprite(big.animsprite,5,25,25,260)
LoadSound(1,"money.wav")
; **************************** Initialize Variables **********************
hand_x=346
hand_speed=1
money=100
score=0
key=0
hit=0
; **************************** Game Loop *********************************
Repeat
ExamineKeyboard()
If IsScreenActive()
Gosub drawScreen
If hit=1:Gosub dropGum:EndIf
hand_x+hand_speed
If hand_x>(346+10) Or hand_x<(346-10)
hand_speed*(-1)
EndIf
If KeyboardReleased(#PB_KEY_SPACE):key=0:EndIf
If key=0
If KeyboardPushed(#PB_KEY_SPACE)
money-10
If money<0:money=100:score=0:EndIf
key=1
If hand_x>(346-3) And hand_x<(346+3):hit=1:EndIf
EndIf
EndIf
Else
Delay(20)
EndIf
FlipBuffers()
Until KeyboardPushed(#PB_Key_Escape)
End
; *************************************************************************
dropGum:
score+1
y.f=320
speed.f=1
color=Round(Random(3),1)+1
PlaySound(1)
Repeat
Gosub drawScreen
DisplayTransparentSprite(color,368,y)
FlipBuffers()
y+speed
speed+0.1
Until y>500
hit=0
Return

drawScreen:
StartDrawing(ScreenOutput())
DrawImage(UseImage(1),0,0)
DrawingMode(1)
Locate(540,2)
DrawText("Cents: "+Str(money))
Locate(20,2)
DrawText("Score: "+Str(score))
StopDrawing() 
DisplayTransparentSprite(0,hand_x,112)
DisplayAnimSprite(big,288,357)
Return
; ExecutableFormat=Windows
; FirstLine=1
; UseIcon=D:\Coding\Xception\kas\gum8.ico
; Executable=D:\Coding\Xception\kas\kas.exe
; CPU=1
; DisableDebugger
; EOF