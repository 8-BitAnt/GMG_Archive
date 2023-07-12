BROKEN CAVE ROBOT

By Matt Thorson
www.mattmakesgames.com

For Ludum Dare 15
www.ludumdare.com

NOTES:
-The in-game map is saved every time you play.  So the next time you play you continue with the same map you drew last time.  It is also exported to a BMP file in the same folder as the game after each play.
-This game uses some video rendering capabilities that may not be compatible with various graphics cards. If 
the game does not show up properly, restarting your PC may solve the problem. 
- The game may crash if your screensaver comes on while playing, or you try to set your PC's resolution while the game is running.


CONTROLS:
F1 to toggle Fullscreen (game is better in fullscreen though).
Other keys explained in-game.

Edit the config.ini file to set keys or gamepad mode.  Be aware that the game will still give you instructions as if you were using the defaults, though.


CHANGE LOG:

=================================================================================
v1.03 (September 1/09):
=================================================================================
-Added some new content.
-Climbing gloves now stack for climb speed, and climb speed with one pair is
	now slower.
-Music is now kept separate from the EXE and loaded during play, should fix
	some "Unexpected Error" crashes.

=================================================================================
v1.02 (August 31/09):
=================================================================================
-Timer now frozen while viewing the map.
-Map now starts with a bit to get you started.
-Fixed crash in some cases when corpse leaves a room.
-Fixed game over text having too small of a black rectangle behind it.
-Viewing the map now pauses all the game particle effects properly.
-ESC now kills the player rather than quits (still quits if you are game over).
-ESC while viewing the map now resumes play.
-ESC now does nothing during intro before text is shown.
-Game now records how many plays you've done in the config file.

=================================================================================
v1.01 (August 31/09):
=================================================================================
-Fixed waterfall top left exit not working right.
-Fixed crash when dying while paused.
-Added text explaining that the map is saved when you die.