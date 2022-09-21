# DJ: Script to remove 1700 auto-generated devices from HomeAssistant

# How often do you want to run this? (test with a low number)
set myCount to 2
# Time between clicks- 0.5:works, 0.2:was the best I could do
set myDelay to 1
# URL of the devices page (to prevent clicking if the URL changes)
# make sure you search for devices to be deleted so no other devices are shown
set myUrl to "		"
# path to cli-click FILE. Install 5.0.1 from: https://www.bluem.net/
set clickpath to "/Users/USERNAME_HERE/some folder/cliclick"

# ------- Click Coordinates ---------
#   using the screenshot feature you can find the coordinates
# select device from device-list
set item_sel to "780,485"
# click the 3-dot menu
set item_dotmenu to "810,375"
# click delete
set item_del to "810,430"
# click "OK" to confirm delete
set item_ok to "1030,680"
# click back
set item_bk to "1030,655"

repeat myCount times
	activate application "Safari"
	delay myDelay
	
	tell application "Safari"
		set theURL to URL of current tab of window 1
	end tell
	if theURL is not myUrl then
		display dialog "ERROR STOP! URL: " & theURL
		return "ERROR, STOP!"
	end if
	
	delay myDelay
	#beep 1
	# display dialog "Next: item_sel"
	do shell script clickpath & " c:" & item_sel
	
	delay myDelay
	#beep 2
	# display dialog "Next: item_dotmenu "
	do shell script clickpath & " c:" & item_dotmenu
	
	delay myDelay
	#beep 3
	# display dialog "Next: item_del"
	do shell script clickpath & " c:" & item_del
	
	delay myDelay
	#beep 4
	# display dialog "Next: item_ok "
	do shell script clickpath & " c:" & item_ok
	
	delay myDelay
	#beep 5
	# display dialog "Next: item_bk"
	do shell script clickpath & " c:" & item_bk
	beep 1
	delay 0.5
	
	# display dialog "Ready for next?" & theURL
end repeat


