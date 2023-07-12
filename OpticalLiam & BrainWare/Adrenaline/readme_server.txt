  Adrenaline Server  v1.2.0
      (c) OpticalLiam and BrainWare 2010
---------------------------------------------------

Important!
-----------

To host you MUST forward the following ports (if you have a router):

13337 TCP  and  13338 UDP

Also, make sure there are no firewalls or AV software blocking the ports.
If you do not make sure of this, players will not be able to connect.
You will get an error message in the log and your server will not recieve a green tick in the server list.
Ideally you should have at least 512kbit/s upload rate, otherwise players may experience lag.


Notes
------
 
To run the server execute '/Server/AdrenalineServer.exe' and leave it running. 
Alternatively press 'Host' in game and it will launch and/or connect automatically.
The player hosting the server is admin by default. Other people must '/login <password>' to gain admin.
Click the green server icon in your tray to hide or show the server windows.
If the console window goes completely black, you can refresh the window by pressing F5.
Press the <enter> key to begin entering commands in the console. A list of commands
is avaliable in sections I and II of this document.


Table of Contents
------------------

Sect.
I    - Server Commands
II   - Chat Commands
III  - Descriptions of included files
IV   - Parameters
V    - System Requirements
VI   - Credits
VII  - Websites
VIII - IRC
IX   - License


I - Server Commands
--------------------

These commands can be entered by an admin through the in-game or server console.

 /players                       - Returns all players id's. The player id's are required by many functions.
 /ignore <pid>                  - Makes Hare ignore the given player.
 /kick <pid> <reason>           - Kicks a player. Reason is optional.
 /change <pid>                  - Change the team of the given player.
 /ignore <pid>                  - Disallows the given player to talk with Hare.
 /kill <pid>                    - Kills the given player (does not affect stats).
 /ban <pid> <hours>             - Bans the given player. Hours is optional, default is 3 hours. Use e.g. 999999 for 'permaban'.
 /ip <pid>                      - Shows the IP of the given player.
 /filter                        - Toggles the word filter.
 /next                          - Ends the round and changes to the next map in rotation.
 /load <map> <mode> <points>    - Loads given map with that mode and point limit. Mode value can be one of: dm, tdm, ctf, con. Points optional.
 /close                         - Gives a warning message and then shuts down the server after 10 seconds.
 /hare <msg>                    - Makes Hare say the chat message.
 /server <msg>                  - Sends a server chat message as if it were sent through the console.
 /reloadfilter*                 - Reloads the wordfilter from file (Filter.txt).
 /reloadban*                    - Reloads the ban list from file (Banlist.txt).
 /refresh*                      - Forces an update to the serverlist.
 /hidden*                       - Toggles server visibility in the serverlist.
 /openlog*                      - Opens the log window.
 /help*                         - Shows some of the basic commands.
 
 * These commands can only be used in the server window, not through the in-game console.


II - Chat Commands
-------------------

These commands can be entered through the chat window.

Admin only commands:

!bot              - Toggles Hare on and off.
!roulette         - Toggles Russian roulette mode (a player is killed at random every 1 minute).

Public commands:

!change           - Changes the player's team
!stats            - Returns the player's all-time stats
!scores           - Returns the player's all-time scores
!serverstats      - Returns the player's stats on the current server
!streak           - Returns the highest number of kills the player got in a row on the current server
!time             - Returns the amount of time the player has spent in the current server
!ratio            - Returns the player's kill/death ratio on the current server
!rank             - Returns the player's rank on the current server


III - Descriptions of included files
-------------------------------------

Settings.ini
        - Modify this file to change the server configuration. Here is a description of each setting:
        'name'          is the name of server.
        'max_players'   is the maximum number of players.
        'fps'           is the update rate of server, should not need to change. Do not use lower than 90.
        'msg'           is the welcome message displayed when a player connects.
        'admin_pass'    is the password for remote admin login, it is randomised by default.
        'join_pass'     is for password protecting entry to the server. Leave blank for no password.
        'logging'       is for enabling/disabling saving logs to file (0 off, 1 on). Default 0.

Modes.txt    
        - This file contains the rotation of maps and game modes seperated by a blank line for the server, the format is:
        Game Mode    (DM, TDM, CTF, CON)
        Points Limit (positive number)
        Modifier     (Normal)
        Map          (eg. Eden.adm)

Scores.ini
        - This file keeps track of player kills and deaths on this server. There is no need to modify this file.

Speech.txt
        - This file contains a bunch of things that the server bot (Hare) says in game in response to chat messages.

Filter.txt
        - This file filters words that players say (whole words). You can use this as a swearing filter if you like.

Banlist.txt
        - This file contains a list of banned players on your server, the format is:
        Player Name (Reflect Username)
        Player Hash (name + salt, used for verification)
        Player IP
        Ban Duration (GM date format)
        

IV - Parameters
----------------

-tray            - Launches the server in the tray.
-nl or -nolog    - Disables the log window.


V - System Requirements
------------------------

 * Windows 2000, Windows XP or Windows Vista
 * DirectX 8 or later
 * DirectX 8 compatible graphics card with at least 32MB of video memory
 * DirectX 8 compatible sound card
 * 128 MB of memory or greater
 * 800×600 or greater screen resolution with 16-bit or 32-bit colors
 * Internet connection with at least 512k upload and download


VI - Credits
-------------

Adrenaline Team:
OpticalLiam
BrainWare

Other contributors:
39ster (39dll)
Yourself (HighRes Timer 2)
halo shg (Cleanmem)
Maarten Baert (HTTP DLL)
GearGOD (Log DLL)
Shaltif (SST DLL)


VII - Websites
---------------

Adrenaline Official    - http://www.playadrenaline.com/
Adrenaline Forums      - http://forums.reflectgames.com/viewforum.php?f=24
Reflect Games          - http://www.reflectgames.com/


VIII - IRC
-----------

#adrenaline on Slashnet


IX - License
-------------

Adrenaline is freeware and released under the snappily-titled "Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 Unported" license. Portions of this software (i.e. the DLLs) are used under their own respective licenses.

You are free:

    * to Share — to copy, distribute and transmit the work

Under the following conditions:

    * Attribution — You must attribute the work to the author (a link to our website is good)
      but not in any way that suggests that they endorse you or your use of the work.
    * Noncommercial — You may not use this work for commercial purposes.
    * No Derivative Works — You may not alter, transform, or build upon this work.

More information and full legal code is available at: 

http://creativecommons.org/licenses/by-nc-nd/3.0/