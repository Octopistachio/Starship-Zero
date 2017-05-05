ScreenBullshit(); //Run the game in fullscreen

audio_play_sound(audSong,1,1);

fontScale = 10; //Set the font size for the Game Object

selectedStationCounter = 0;
global.walking = false;

/*Station Objects*/
global.station[0,0] = objWeapons;
global.station[1,0] = objShields;
global.station[2,0] = objCommunications;
global.station[3,0] = objNavigation;
global.station[4,0] = objPiloting;
global.station[5,0] = objJanitor;
global.station[6,0] = objResearch;
global.station[7,0] = objEngineering;

/*Names of stations*/
global.station[0,1] = "Weapons";
global.station[1,1] = "Shields";
global.station[2,1] = "Communications";
global.station[3,1] = "Navigation";
global.station[4,1] = "Piloting";
global.station[5,1] = "Janitor";
global.station[6,1] = "Research";
global.station[7,1] = "Engineering";

instance_create(global.station[selectedStationCounter,0].x, global.station[selectedStationCounter,0].y, objSelector);

/*Array of all the players*/
//Names of the players
global.player[0,0] = "Red";
global.player[1,0] = "Yellow";
global.player[2,0] = "Green";
global.player[3,0] = "Blue";

//Names of the objects
global.player[0,1] = objRed;
global.player[1,1] = objYellow;
global.player[2,1] = objGreen;
global.player[3,1] = objBlue;

//The player that is selecting a station currently
playerTurnCounter = -1; //The counter that chooses whose turn it is
playerTurnNameDisplayCounter = 0; //The name that displays at the top

/*The station the player has selected*/
global.redStation = noone;
global.yellowStation = noone;
global.blueStation = noone;
global.greenStation = noone;

selected = false; //A station has been selected. This variable stops the selector from moving while the player's sprite is moving
stationHasBeenChosen = false; //When a station was picked, this changes to true

global.sameLevel = true;

global.distanceFromStation = 40;//How far from station the player stops
global.didLevelChange = false;
global.didDoorsClose = 0;

/* */
/*  */
