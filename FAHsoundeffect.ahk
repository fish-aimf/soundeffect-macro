; Load media player once on script startup
wmp := ComObjCreate("WMPlayer.OCX")
wmp.URL := "C:\Your path to the MP3 file. Can be anything. "
wmp.settings.volume := 100 ;You can change this volume to any volume of your desire

playCount := 0 ; Initialize counter

v:: ;can be any hotkey of your choosing
SoundSetWaveVolume, 100 ;you can change this volume as well
wmp.controls.stop()
wmp.controls.currentPosition := 1.52 ;starting position for the FAH
wmp.controls.play()
playCount++ ; Increment counter each time fah is played
return

F1::Suspend

F2:: ; Show play count in tooltip
ToolTip, Soundtrack played: %playCount% times
SetTimer, RemoveToolTip, 3000 ; Remove tooltip 3 seconds, you can change
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
