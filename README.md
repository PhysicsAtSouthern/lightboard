# Information on the SAU Lightboard

## What is a lightboard? (for teachers)
A light board is like a whiteboard, except you never turn your back to your students. All you need to do is press record and teach. 

Oh, you like to share computer graphics to a projector? You can do that on the lightboard too, just connect to an HDMI cable like it's a projector. If you use Powerpoint or Google Slides, a black background becomes transparent on the lightboard. 

## Demonstrations for faculty

Here is an [11 minute conference presentation](https://youtu.be/jfYyqil9rcM), demonstrating the lightboard technique and how to do it from home. But it may help to try our walk-in studio first!

Here’s a short [demonstration for my local faculty colleagues demonstrating push-button control](https://youtu.be/Kf-MeCNzPmU). I include some graphical elements in my transitions to tie remote students back to campus.

## AV solution
The easiest solution is for an individual user to install OBS Studio on their computer and use a webcam. The new Raspberry Pi HQ webcam is great for this, and I have used the (ShowMeWebcam firmware)[https://github.com/showmewebcam/showmewebcam] to create a USB webcam. You can reverse the webcam by editing `camera.txt` in `/boot`. 

*HDMI camera and HDMI computer graphics are combined using the Blackmagic ATEM Mini Pro live production switcher. 

*Software control of the ATEM switcher is achieved using the Bitfocus Companion App. 

*The user uses a macro keyboard to control the Companion app, and we use the (Elgato Stream Deck)[https://www.elgato.com/en/gaming/stream-deck] macro keyboard. The ATEM switcher is the Bitfocus Companion App.

*The Companion app can run on a computer as simple as the Raspberry Pi 4. 

*The output of the ATEM switcher is a USB-C port. Either the user plugs in a USB drive to record to, or uses a USB cable to plug into their computer as a webcam input for recording or streaming on their computer. 

## Setting up a Blackmagic ATEM Mini (or Mini Pro) for a lightboard

### ATEM Software control. 
The configuration of the Blackmagic Design ATEM Mini switchers are backed up to files ending in .xml.  Needs to be copied to (on a mac) /Library/Application Support/Blackmagic Design/Switchers.

You may load your own graphics specific to your school using the ATEM Software Control. Even if you save the startup state, and the ATEM Mini will "forget" these graphics when powered off, but the ATEM Mini Pro and ATEM Mini ISO will remember them, so it need only be done once!

### Networking

The Mini pro is controlled over ethernet, and I found the networking component to be the most difficult part. 

Some instructions were given on a forum post to change the network settings of the computer to match the default settings on the ATEM Mini, but they could be modified of course. The Mini Pro uses DHCP to assign an IP address.

From a forum post https://forum.blackmagicdesign.com/viewtopic.php?f=4&t=55259#p317467

> First, let's walk through some settings if you directly connect ethernet from ATEM to computer and do not use the computer's ethernet port for an Internet connection as well. The ATEM ships with a default IP address and we can set the computer's information to to be on this same network. In the ATEM Setup Utility (which is accessible if you have the USB connected to the computer) check that the IP information is as follows:
IP Address: 192.168.10.240
Subnet Mask: 255.255.255.0
Gateway: 192.168.10.1

Now you'll want to change the computer's settings to be on this same network. 

Here is information for PC: Navigate to your Network And Sharing Center in the Control panel and find the Local Area Network. Then click on Properties. Single-click "Internet Protocol Version 4 (TCP/IPv4)" to highlight it. Then click "Properties" to open the box where you can change the IP settings for this network. Click the bubble for "Use the following IP address" and type in the following information:
IP Address: 192.168.10.50
Subnet Mask: 255.255.255.0
Gateway: 192.168.10.1
Click Okay to apply.

Here is information for Mac: Navigate to your System Preferences and click on Network. Under the Ethernet connection, you'll want to set the IP information manually:
IP Address: 192.168.10.50
Subnet Mask: 255.255.255.0
Router (same as Gateway): 192.168.10.1

*Additional note for Mac: If you're using a WiFi Internet connection, you don't want the Ethernet connection to be seen as the primary connection. Under your list of connections on the left, click the gear icon and choose "Set Service Order." Drag your WiFi connection to the top. This will allow your Internet connection to look to your WiFi first. Click "Okay" to apply these settings. 

### EXIT the ATEM software control, now we use only Companion

We use the Elgato Stream Deck macro controller to unlock software control of the Blackmagic ATEM Mini (or Mini Pro), using the [Companion app, by Bitfocus](https://www.bitfocus.io/companion).
Kudos to the Companion team and developer Julian Waller for working out how to control the ATEM with the Stream Deck! 

[Companion is so efficient, it can be run on a Raspberry Pi 4](https://github.com/bitfocus/companion/wiki/Companion-on-the-Raspberry-Pi)! That's right, the Raspberry Pi is the only AV computer required! 


Be sure to exit from the Blackmagic ATEM Mini software control when using Companion. Record your macros, upload your graphics when making changes, save the startup state to the ATEM, then you don't need ATEM software control anymore. 

