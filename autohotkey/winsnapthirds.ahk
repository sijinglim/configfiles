^!+3:: resizeWidthRelativeToMon((1/3))

^!+2:: resizeWidthRelativeToMon((2/3))

^!+Left:: snapWinToLeft()
^!+Right:: snapWinToRight()
^!+Up:: snapWinToCenter()

snapWinToCenter()
{
    activeMonitorInfo( X , Y ,  Width , Height   )
    WinGetTitle, WinTitle, A
    WinGetPos, curX, curY, curWidth, curHeight, %WinTitle%, , ,
    newX := (Width-curWidth)/2
    WinMove, %WinTitle%, , %newX%, %curY%, %curWidth%, %curHeight%, , 
}

snapWinToLeft()
{
    activeMonitorInfo( X , Y ,  Width , Height   )
    WinGetTitle, WinTitle, A
    WinGetPos, curX, curY, curWidth, curHeight, %WinTitle%, , ,
    WinMove, %WinTitle%, , 0, 0, %curWidth%, %curHeight%, , 
}

snapWinToRight()
{
    activeMonitorInfo( X , Y ,  Width , Height   )
    WinGetTitle, WinTitle, A
    WinGetPos, curX, curY, curWidth, curHeight, %WinTitle%, , ,
    newX := Width-curWidth
    WinMove, %WinTitle%, , newX, curY, %curWidth%, %curHeight%, , 
}

resizeWidthRelativeToMon(relativeScale)
{
    activeMonitorInfo( X , Y ,  Width , Height   )
    newWidth := Width*relativeScale
    WinGetTitle, WinTitle, A
    WinGetPos, curX, curY, curWidth, curHeight, %WinTitle%, , ,
    WinMove, %WinTitle%, , %curX%, %curY%, %newWidth%, %Height%, ,
}

; Found from Bluesmaster @ //autohotkey.com/board/topic/111638-activemonitorinfo-get-monitor-resolution-and-origin-from-of-monitor-with-mouse-on/?p=656734
activeMonitorInfo( ByRef X, ByRef Y, ByRef Width,  ByRef  Height  )
{ ; retrieves the size of the monitor, the mouse is on
	
	CoordMode, Mouse, Screen
	MouseGetPos, mouseX , mouseY
	SysGet, monCount, MonitorCount
	Loop %monCount%
    { 	SysGet, curMon, Monitor, %a_index%
        if ( mouseX >= curMonLeft and mouseX <= curMonRight and mouseY >= curMonTop and mouseY <= curMonBottom )
            {
				X      := curMonTop
				y      := curMonLeft
				Height := curMonBottom - curMonTop
				Width  := curMonRight  - curMonLeft
				return
			}
    }
}
