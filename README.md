# ZoomGoogleSheet
A collection of resources for driving live data entry of Zoom chat / Q&amp;A into a Google Sheet, to drive vMix graphics

## About
A common customer requirement for virtual and hybrid events is to include audience interactions as overlays in a live stream. With ZoomOSC, it is possible to obtain the Zoom chat messages and Webinar Q&A entries via OSC. Isadora can receive these packets, and with a bit of logic and the AutoHotKey Plugin, can execute scripts to enter this data into Google Sheets. Once there, remote producers can interact with the sheet to screen and tag interactions. Finally, vMix can automatically create graphics by following a specific tab of a Google Sheet. 

## Setup and Use
1. Download the files, and place all .ahk files in a folder in your Documents. 
2. Install Isadora (https://troikatronix.com/get-it/)
3. Install the Isadora AutoHotKey Plugin (https://troikatronix.com/add-ons/autohotkey-launcher-actor/)
4. Install AutoHotKey (https://www.autohotkey.com/)
5. Open the .izz file, enter the scene, and on the left, set and save the path to your .ahk files. 
6. Create a google sheet, and make sure it is the only chrome window / is the focused chrome tab
7. In Isadora, set the starting Row and Column and hit Reset
8. Install ZoomOSC (https://www.liminalet.com/zoomosc) and join it into your meeting / webinar
9. Set ZoomOSC to subscribe to all notifications
10. Stop using the computer. Seriously. Isadora will take over the keyboard and mouse to enter data into the Google Sheet as it arrives.

## Final Thoughts
By customizing the Google Sheet, you can create additional behavior for moderation. While it is possible to register a REST endpoint for the data entry using Google Scripts, this "dumb control" method of taking over keyboard and mouse control is easier to set up and use in a wider variety of cases. 

This repo will be updated with additional scripts and configuration settings for sheets as collected. 
