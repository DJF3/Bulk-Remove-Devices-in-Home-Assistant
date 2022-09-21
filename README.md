# Bulk Remove Devices in Home Assistant

**GOAL**
Automate clicks that remove >1000 auto-generated devices in Home Assistant.

**WHY**
Because my (fantastic) RFXCom [RFXtrx433XL](https://rfxcom.com) decided to learn some RF device in the neighbourhood and I had set the integration settings to "Learn new devices". Lesson: once your devices are known, turn off automatic learning.

**REQUIREMENTS**
- MacOS
- Safari
- [CLIclick ](https://github.com/BlueM/cliclick)

**SETUP**
1. **Install CLIclick**. I downloaded CLIclick 5.0.1 from the [author website](https://www.bluem.net/), extracted the files and put the path in the "clickpath" variable
2. **Safari: open the Home Assistant device page** http://IP_ADDRESS_HERE:8123/config/devices/dashboard and search for the devices that should be removed. Make sure *ONLY* the to-be-removed devices are listed.
3. **Download the Apple script** above.
4. **Figure out the coordinates** where the script should click and update the Apple script:
  - Use the [screenshot feature](https://support.apple.com/en-us/HT201361) to find the coordinates. Example: In the Safari window (step 2) press CTRL-SHIFT-CMD-4. (the added "SHIFT" puts the screenshot in the copy-buffer instead of saving it)
  - Mouse-pointer is now a cross-hair. Move it to the top-left of your screen.
  - Now click and move your mouse to the first click location (like the first device in the list). You can see the coordinates of that location.
  - Take these coordinates and put them in the variable "item_sel". 
  - Repeat for the other variables.

| variable      |             | 
| ------------- |-------------|
| item_sel      | open device from device-list |
| item_dotmenu  | click the 3-dot menu  |
| item_del      | click delete |
| item_ok       | click OK to confirm deletion |
| item_back     | click Back to go to the device list |

5. **Other variables**

| variable      |             | 
| ------------- |-------------|
| myCount       | How often do you want to run this? (test with 1 or 2 to check if it works as expected) |
| myDelay       | Time between clicks. "0.2" was the best I could do |
| myUrl         | URL of the devices page (to prevent clicking if the URL changes). make sure this page only shows devices to be deleted |
| clickpath     | path to the cli-click: path + *FILE*. Install from: https://github.com/BlueM/cliclick |

6. **Save the script and start it** (click the play button) The script will run and make sure you don't touch the keyboard. 


**TIPS**
- **Coordinates** To make sure the coordinates are always the same I run Safari in full-screen mode.
- **CLIclick**: I downloaded CLIclick 5.0.1 from the [author website](https://www.bluem.net/), extracted the files and put the path in the "clickpath" variable
- **URL ERROR**: when the URL does not match the configured URL the script will stop to prevent clicks where it should not click. Sometimes there's some additions to the URL often starting with "?". Remove those, press enter and search for the to-be-deleted devices before running your script. 


Enjoy but be careful!

