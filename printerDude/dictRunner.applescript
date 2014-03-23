activate application "TextEdit"

set remoteMachine to "eppc://username:pass@ip" --<-- change to your username,password and ip- keep : and @


delay 4

tell application "dictHelper" of machine remoteMachine
	dictStart()
end tell

delay 3

do shell script "say -f path/to/text" --<-- change to path of your text file

tell application "dictHelper" of machine remoteMachine
	dictStop()
end tell



tell me to quit
