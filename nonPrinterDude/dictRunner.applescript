activate application "TextEdit"

set remoteMachine to "eppc://user:password@ip" --<-- change to your username,password and ip- keep : and @


delay 4

tell application "dictHelper" of machine remoteMachine
	dictStart()
end tell

delay 3

do shell script "say -f /Users/danielgrossman/Documents/Quixote/nonPrinterDude/text" --<-- change to path of your text file

tell application "dictHelper" of machine remoteMachine
	dictStop()
end tell



tell me to quit