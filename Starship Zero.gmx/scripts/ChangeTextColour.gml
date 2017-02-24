/*Change the colour of the text above the station*/
shipIndex = argument0;

if(global.station[objGame.selectedStationCounter,0]==global.station[shipIndex,0]){ //If the current station is selected
    if keyboard_check(ord('E')){
        if(objGame.stationHasBeenChosen) 
            global.station[shipIndex,0].currentColour = c_black;
        else
            global.station[shipIndex,0].currentColour = c_red;
    }
    else
        global.station[shipIndex,0].currentColour = c_yellow;
}
else{ //If the current station is not selected
    global.station[shipIndex,0].currentColour = c_white;
}

