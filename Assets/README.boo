/* README vFINAL.0
===========================================================================================
================================EXTRATERRESTRIAL CONTACT===================================
===========================================================================================

I created Extraterrestrial Contact as an homage to classic arcade style shmups. The genre has
sort of gone niche, with very high skill-cap games such as Ikaruga and Touhou really being the
only source of challenging 2D Galaga-esque fashion. This dearth of games leads to another issue:
shmups are 2D 99% of the time. They're rarely even 2.5D. I wanted my game to have the playstyle 
of classic arcade shooters, but the aesthetic of a post-2005 game. In order to do that, I focused
on adding enhanced interactivity and a wider variety of mechanics.

===========================================================================================
======================================OTHER INFO===========================================
===========================================================================================

Inspiration and some AI adapted from the Unity demo project "Space Shooter"

Texture citations:
	http://www.psdgraphics.com/wp-content/uploads/2009/01/metal-plate.jpg
	Some other textures and effects are free-use and used with full rights.
	
The font seen in game is Mons Olympia, which can be found here:
	http://www.dafont.com/mons-olympia.font
	
The Music used in game can be found on:
	http://www.nosoapradio.us/
	
Controls are explained in the in-game menus.

The game length is determined by:
	public static float spawnTime = 120f; line 7 of SpawnPlanet.cs
where spawnTime is the number of seconds before the game's "climax".
The game runs smoothest when spawnTime is a factor of 60.

Things of note (AKA issues I'm aware of but unable to fix):
	
	Sometimes the main menu music hiccups and keeps playing when you start the game. This only
	happens 1/3 times or so. It should stop and NOT overlap the new BGM.
	
	The collision detection on the rockets REALLY stinks sometimes.
	
	The camera sometimes chooses as aspect ratio at random. I have no idea what causes this.
	I have played the game on two different computers at different resolutions, and it seems
	to stay consistant most of the time. Your mileage may vary.
	
	Textures seemingly vanish from my particle effects. It has only happened a few times, but Unity
	actually lost a texture once. As in, it actually moved folders when I restarted Unity.
	
	In some scenes, disabling the player controller causes the player object not to render at all.
*/