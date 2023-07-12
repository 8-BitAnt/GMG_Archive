=========================
 INDIE BRAWL v.0.1.11
=========================

=========================
 INTRODUCTION
=========================
Indie Brawl is a fighting game that pits the stars of indie games against each other.
Choose your favorite character and let the brawl begin!

=========================
 INSTALLATION
=========================
Simply unzip the contents of this folder. 
To run the game, double click the Indie Brawl icon.

=========================
 CONTROLS
=========================
The controls can be customized in-game.
The default controls are:

Player 1:
Arrow Keys - Movement
Shift - Attack
Ctrl - Special

Player 2:
WASD - Movement
G - Attack
H - Special

Player 3:
Numpad 8456 - Movement
Numpad + - Attack
Numpad - - Special

Player 4:
PL:" - Movement
M - Attack
N - Special

=========================
 GAMEPAD SUPPORT
=========================
Indie Brawl supports gamepads for up to two players. 
If you wish to use more gamepads than this, you will need software such as Joy2Key(http://www.electracode.com/4/joy2key/JoyToKey%20English%20Version.htm) or XPadder(http://www.xpadder.com/).

The default controls are:
Left Analog Stick- Movement
A button- Jump
X Button- Attack
Y Button- Special

These controls can not currently be modified in-game, though that is planned for a future release.
However, they can be modified through the settings.ini file.
Within this file, there is a section for each player that looks something like this:
	r_button=102
	l_button=103
	u_button=104
	d_button=101
	j_button=1
	a_button=3
	s_button=4
The numeric codes each represent a button on the gamepad.
These codes can be modified to change the gamepad controls.
Here is a complete listing of codes:
1 - A
2 - B
3 - X
4 - Y
5 - L1
6 - R1
7 - Back
8 - Start
9 - L3
10 - R3
101 - LStick Down
102 - LStick Right
103 - LStick Left
104 - LStick Up
201 - RStick Down
202 - RStick Right
203 - RStick Left
204 - RStick Up
301 - DPad Down
302 - DPad Right
303 - DPad Left
304 - DPad Up
401 - L2
402 - R2

=========================
 TROUBLESHOOTING
=========================
If the game fails to run, displays improperly, or runs slowly, the problem may be the way Indie Brawl displays its graphics.
These issues can be fixed by turning the graphical quality down.

If you are able to navigate to the options menu, you can change this setting there.
If you are unable to even run the game, this setting can be changed by entering the settings.ini file.
Locate the line that says "quality=1" and change it to "quality=0".

=========================
 FAQ
=========================

Q: How is this project managed?
A: This is a TIGSource community project. Anyone interested is free to contribute graphics, sounds, code, ideas and feedback.

Q: Cool. Can I help?
A: Of course! All the information you need can be found on the development forums (http://forums.tigsource.com/index.php?board=29.0).

Q: Is my favorite character in the game?
A: Check the development forums (http://forums.tigsource.com/index.php?board=29.0) for more information on what is planned for the final release.

Q: Can I see the source code for the project?
A: The .gmk file is included in this folder. 
It can be opened with Game Maker 7 (http://www.yoyogames.com/make).

Q: Doesn't this game break copyright laws?
A: We have permission from every developer whose intellectual property is used in Indie Brawl.

Q: Why aren't Cave Story or La Mulana characters going to be included?
A: Nicalis, the company responsible for porting the games to the Wii, owns the rights to the characters and has not given us permission to use them.

Q: Who should I contact if I have any other questions about Indie Brawl?
A: You can contact Soulliard (http://forums.tigsource.com/index.php?action=profile;u=686).

=========================
 LICENSE
=========================
This game is freeware. You can distribute it freely.

It is illegal to sell or otherwise profit from Indie Brawl.

=========================
 CHANGES FROM v.0.1.10
=========================
-Engine: Characters can no longer be pushed while executing certain attacks
-Engine: Item code has been simplified somewhat
-New Items: Mine, Armadillo, Owl, Invincible Burger
-Goo Ball: Added graphics and sounds
-Nikujin: Reduced damage slightly
-Bugfix: Grappling hooks work correctly when used from the ground.

=========================
 CHANGES FROM v.0.1.9
=========================
-Engine: Added a brief pause after an attack hits.
-Engine: Characters turn to face a guarded attack.
-Menu: Character names are announced when they are selected.
-Golden Knight: Can no longer be pushed while Bonesaw is being drawn.
-Golden Knight: There is no limit to how long he can use his vS.
-Naija: Adjusted graphics, sound effects, timing, damage and knockback.
-Naija: vA now cancels into other attacks.
-Naija: There is no limit to how long she can use her vS.
-Naija: Her ^S has been replaced with a new move inspired by her spirit form.
-Nikujin: Improved graphics.
-Liero: Larpa missile is unblockable.
-Bugfix: Liero can use fan on spikeballs without causing an error.

=========================
 CHANGES FROM v.0.1.8
=========================
-Knytt Falls: Added the stage back in, with new format, graphics and sounds.

=========================
 CHANGES FROM v.0.1.7
=========================
-Engine: Changed default number of lives to 5.
-Knytt Falls: Temporarily removed due to ongoing changes. Sorry!
-Lyle: His attacks now have sound effects.
-Death Worm Desert: New music and sound effects.
-Items: Mostly have sound effects now.
-Jumper Arrow: Now gives infinite jumps while it lasts.
-Bugfix: Naija's >S now deals the correct knockback.
-Bugfix: Random stage selection now selects the Chzo stage.
-Other: Winnitron support added!

=========================
 CHANGES FROM v.0.1.6
=========================
-Engine: Reduced rate at which knockback increases with damage.
-Engine: Characters no longer take chip damage while guarding, or suffer as much knockback. This is an experiment to see if unique unblockable attacks are enough to balance guarding.
-Engine: Certain attacks can now be cancelled into other attacks.
-Nikujin: Besides ^S, attacks no longer have fixed knockback.
-Nikujin: Adjusted graphics, timing, damage, and knockback.
-Nikujin: The first two hits of A have higher cool-down, but can be cancelled into later hits. The final hit has less knockback and cooldown, allowing for easier combos.
-Nikujin: vA can now be cancelled into any other attack.
-Nikujin: The first two shots of S have higher cool-down, but can be cancelled into later shots.
-Bugfix: Fixed a glitch where character doesn't bounce when knockback is high.
-Bugfix: Iji no longer gets stuck using ^A repeatedly.

=========================
 CHANGES FROM v.0.1.5
=========================
-Engine: Added guarding. Press down to guard while on the ground. Double-tap down to fall through floors.
-Engine: Characters can no longer be pushed while stunned. This prevents an exploit where Trilby's tazer was an instant kill move.
-Engine: Characters no longer drop items if hit with a weak attack.
-Engine: Items can now be picked up from a greater distance.
-Engine: Knockback is slightly increased right after a hit, to make attacks seem more forceful.
-Naija: Her seed is more likely to grow when it hits a target near the ground.

=========================
 CHANGES FROM v.0.1.4
=========================
-Engine: Major refactoring was finished. You shouldn't notice any changes when you play, but it will make future programming much easier.
-Engine: There is no longer a fixed maximum movement speed for characters.
-Engine: There is now a small but significant amount of influence you have over your character while stunned.
-Bugfix: Fixed a bug where characters could slide along platforms if they jumped on them just right.
-Bugfix: Moves that require characters to move on top of each other now work correctly again. This includes Naija's whirlpool, Trilby's flit and smoke bomb, and every grab attack. 
-Bugfix: Fixed glitches where characters would fall through slanted platforms.
-Bugfix: Fixed a minor bug where characters would decelerate slightly too quickly.
-Bugfix: Fixed a minor bug that caused characters to jump slightly too high.

=========================
 CHANGES FROM v.0.1.3
=========================
-Engine: If the computer can't handle surfaces, the game should automatically default to low quality graphics.
-Engine: Characters push each other when they move.
-Golden Knight: His side attack pushes opponents instead of going through them.
-Nikujin: His side attack pushes opponents instead of gong through them.
-Heart of Chzo: Stage is now a platform.
-Heart of Chzo: Blood flow slowly pushes things off the sides of the platform.
-Gunlimb: remains on the stage longer.
-Akuji: fires slightly faster and has more knockback.
-Rope Burner: fixed a glitch where his initial attack was an auto-kill.

=========================
 CHANGES FROM v.0.1.2
=========================
-Added a new stage: Heart of Chzo
-Among the Leaves: scrolling speed was decreased slightly
-Among the Leaves: background data is now stored externally
-Bonesaw Hills: parallax scrolling was simplified for better performance
-Lyle's stats now record correctly

=========================
 CREDITS
=========================
Naming all the individuals that contributed to Indie Brawl is a huge task.
A complete credit listing will appear in future releases.

The following individuals contributed an exceptional amount to the game, and are worth special mention:
Brian Soulliard
William Broom
Clemens Pawikovsky-Scott
Ardent Sideburn
Derek Yu
Dave Zhang
Josh Whelchel
Chris Geehan
flashygoodness

And, of course, none of this would be possible without the work of all the talented and creative independent game developers out there.