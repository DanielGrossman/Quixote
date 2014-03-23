Quixote
=======

Apple Dictation Madness 


##Setup

(Note that advanced dictation should be enabled on both apple machines)

1. Download this repo to your machine 
2. In system preferences > sharing, enable remote apple events
3. Set up a private Wi-Fi network on one of the machines 
4. Connect the other machine to this network
5. Unzip the files, on the machine that's connected to the printer delete the "nonPrinterDude" folder, on the other one, delete "PrinterDude".
6. On both machines, open network preferences and jot down the ip address.
7. On the printer machine, go to system preferences > Printers & Scanners and find the name of the printer you wanna use.
8. Still on the printer machine, open dictHelper.applescript, change "Canon" to the name of your printer, and change the path to the text file that you will use (should be same file as the dictated file). Save the script, and then click File > Export, Change file format to Application, check "Stay open after.." and click save to override the current file.
9. On both machines, open dictRunner.applescript, change the eppc address to the other machine's username followed by ":" the user password, followed by "@" and then its ip. (i.e eppc://johndoe:1234@192.168.0.0)
10. Change the say file path to your local text file for dictation.
11. Save the file, and then File > Export, Change file format to Application, this time none of the boxes should be checked,  and click save to override the current file.
12. Make sure the printer is connected and working, speakers and microphone are on, dictation is enabled. Run Dictation on both machines to "warm up" the function.
13. Run dictHelper.app on both machines, Open the text files on both machines, paste some text into one of them and save.
14. Run dictRunner.app on the machine where you pasted the text
15. Enjoy

#If running dictReset.app version:
1. Using automator create a apple Service that launches dictReset.app
1.1. Within automator select Service.
1.2. Set input as "no input". Find Launch Application and add it to the Workflow. In the drop down search for dictReset.app and set that as application to be launched. 
1.3. Find Keyboard in System Preferences and create a shortcut that runs our new service. Don't use Control as a modifier. Command 8 has worked well. 
2. To ensure that dictReset runs smoothly then only run it off one of the machines and run the application when said machine has recieved a message from the other computer and has just saved the TextEdit file. Any other moments can cause unpredictable results. 


Have fun. 
