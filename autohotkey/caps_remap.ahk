Capslock::Esc

^Capslock:: 
	Suspend On
	SetCapsLockState, % (t:=!t) ? "On" : "Off"
	Suspend Off
return
