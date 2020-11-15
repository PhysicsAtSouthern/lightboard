# Software control of the Blackmagic ATEM Mini (or Mini Pro) with the Bitfocus companion app
At this writing, the release version of Companion 2.1.0 does not support recording on the ATEM Mini Pro, so I’m using an experimental build of Companion. Kudos to the Companion team and developer Julian Waller for working out how to control the ATEM with the Stream Deck! Check first that there isn't a more recent release that includes Julian's work, but for now you can download the latest experimenta build at this address, search for bmd-atem: https://www.bitfocus.io/companion/download/builds/


## Demonstrations

Here’s a short demonstration for my local faculty colleagues demonstrating software control of the Blackmagic ATEM Mini Pro using the Elgato Stream Deck buttons, enabled by the Bitfocus Companion App. I include some graphical elements in my transitions to tie remote students back to campus.

https://youtu.be/Kf-MeCNzPmU


# Setting up a Blackmagic ATEM Mini (or Mini Pro) for a lightboard

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

The file Streaming.xml needs to be copied to (on a mac) /Library/Application Support/Blackmagic Design/Switchers
