HotKeySet("{SPACE}","Play")
HotKeySet("{ESC}","Stop")
 
while 1
   Sleep(50)
WEnd
 
 
Func Play()
   While 1
      $pix = pixelSearch(460, 354, 1060, 773, 0xFFDBC3, 1)
	  ;Border set
	  ;The 1st and the 2nd numbers are the coordinates of the top-left corner of the border
	  ;The 3rd and the 4th numbers are the coordinates of the bottom-right corner of the border
	  ;The 5th is the color you want the mouse to click on and the 6th is the shade of the color
      if IsArray($pix) Then
         MouseClick("LEFT", $pix[0], $pix[1], 1, 1)
      EndIf
   WEnd
EndFunc
 
Func Stop()
   Exit
EndFunc