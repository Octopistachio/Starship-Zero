walkSpeed = 4;

if(global.walking){ //If player is walking

    /*Walk to Door*/
    if((global.player[playerTurnCounter,1].y) != global.station[selectedStationCounter,0].y){ //If player is on a different level than the station
    
         global.sameLevel = false; //The player and the station are NOT on the same level of the ship
         global.didLevelChange = true; //checks if the floor was changed
         global.didDoorsClose = 0; //checks if doors already closed and how far
    
        if(global.player[playerTurnCounter,1].x < objDoor.x) //If player's X is less than the X of the door
            global.player[playerTurnCounter,1].x += walkSpeed; //Walk forwards
        else if(global.player[playerTurnCounter,1].x > objDoor.x){ //If player's X is greater than the X of the door
            global.player[playerTurnCounter,1].x -= walkSpeed; //Walk backwards
            with(global.player[playerTurnCounter,1]){
                image_xscale = -4;
                if(x == objDoor.x) //Flip player when he is walking backwards
                    image_xscale = 4;
                    
            }
                        
        }
        else{ //If player's X is equal to the X of the door
        
            global.player[playerTurnCounter,1].y = global.station[selectedStationCounter,0].y;
            global.sameLevel = true; //The player and the station ARE on the same level of the ship
            
            if(global.player[playerTurnCounter,1].x < global.station[selectedStationCounter,0].x)
                global.player[playerTurnCounter,1].x += walkSpeed;
            else
                global.walking = false; 
        
        }
         
        
    
    
    }
    else
         global.sameLevel = true; //The player and the station ARE on the same level of the ship
    

    /*Walk to Station*/
    if(global.player[playerTurnCounter,1].x != global.station[selectedStationCounter,0].x - 8 && global.sameLevel == true){ //If player's X is not equal to the station's X
        
        if(global.player[playerTurnCounter,1].x < global.station[selectedStationCounter,0].x - 8) //If player's X is less than the X of the station
            global.player[playerTurnCounter,1].x += walkSpeed; //Walk forwards
        else{ //If player's X is greater than the X of the station
            global.player[playerTurnCounter,1].x -= walkSpeed; //Walk backwards
            with(global.player[playerTurnCounter,1]){
                image_xscale = -4;
                if(x == global.station[objGame.selectedStationCounter,0].x - 8) //Flip player when he is walking backwards
                    image_xscale = 4;
                    
            }
        }
    }
    else if(global.player[playerTurnCounter,1].x == global.station[selectedStationCounter,0].x - 8 && global.sameLevel == true){
        global.walking = false; //When player hits the station, stop
        selected = false; //Allow the next player to pick a station   
        global.didLevelChange = false;     
    }

}
