// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1; // objSelector
global.__objectDepths[1] = 0; // objOptions
global.__objectDepths[2] = -1; // objGame
global.__objectDepths[3] = 0; // objTextGame
global.__objectDepths[4] = 0; // objDev
global.__objectDepths[5] = 0; // objPlayer
global.__objectDepths[6] = 1; // objYellow
global.__objectDepths[7] = 0; // objBackground
global.__objectDepths[8] = 1; // objBlue
global.__objectDepths[9] = 1; // objGreen
global.__objectDepths[10] = 1; // objDoor
global.__objectDepths[11] = 2; // objBed
global.__objectDepths[12] = 1; // objRed
global.__objectDepths[13] = -99; // objStation
global.__objectDepths[14] = 0; // objShields
global.__objectDepths[15] = 0; // objWeapons
global.__objectDepths[16] = 0; // objNavigation
global.__objectDepths[17] = 0; // objCommunications
global.__objectDepths[18] = 0; // objEngineering
global.__objectDepths[19] = 0; // objJanitor
global.__objectDepths[20] = 0; // objResearch
global.__objectDepths[21] = 0; // objPiloting
global.__objectDepths[22] = 99; // objShip
global.__objectDepths[23] = 0; // objEngine
global.__objectDepths[24] = 100; // objFire
global.__objectDepths[25] = 0; // objTurret
global.__objectDepths[26] = 999; // objStar
global.__objectDepths[27] = 0; // objPortrait


global.__objectNames[0] = "objSelector";
global.__objectNames[1] = "objOptions";
global.__objectNames[2] = "objGame";
global.__objectNames[3] = "objTextGame";
global.__objectNames[4] = "objDev";
global.__objectNames[5] = "objPlayer";
global.__objectNames[6] = "objYellow";
global.__objectNames[7] = "objBackground";
global.__objectNames[8] = "objBlue";
global.__objectNames[9] = "objGreen";
global.__objectNames[10] = "objDoor";
global.__objectNames[11] = "objBed";
global.__objectNames[12] = "objRed";
global.__objectNames[13] = "objStation";
global.__objectNames[14] = "objShields";
global.__objectNames[15] = "objWeapons";
global.__objectNames[16] = "objNavigation";
global.__objectNames[17] = "objCommunications";
global.__objectNames[18] = "objEngineering";
global.__objectNames[19] = "objJanitor";
global.__objectNames[20] = "objResearch";
global.__objectNames[21] = "objPiloting";
global.__objectNames[22] = "objShip";
global.__objectNames[23] = "objEngine";
global.__objectNames[24] = "objFire";
global.__objectNames[25] = "objTurret";
global.__objectNames[26] = "objStar";
global.__objectNames[27] = "objPortrait";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for