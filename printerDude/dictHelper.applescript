on dictStart()
	
	activate application "TextEdit"
	
	tell application "System Events"
		keystroke "a" using command down
		
		keystroke (ASCII character 8)
		
		delay 3
		
		key code 63
		key code 63
	end tell
end dictStart


on dictStop()
	activate application "TextEdit"
	tell application "System Events"
		key code 63
		key code 63
	end tell
	delay 3
	tell application "TextEdit" to save document 1
	tell application "Canon" --<---- change to name of your printer ****
		activate
		print "path/to/text" without dialog --<-- change to your text file ***
		
		quit
	end tell
	tell application "dictRunner"
		quit
	end tell
	tell application "dictRunner"
		ignoring application responses
			activate
		end ignoring
	end tell
end dictStop


