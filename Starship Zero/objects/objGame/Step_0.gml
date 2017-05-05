if(!selected){
    /*Select a Station*/
    
    /* Press D */
    //Select a station to the right
    if keyboard_check_released(ord("D")) {
        if(selectedStationCounter < array_height_2d(global.station)-1){ //If i is less than the array length
            selectedStationCounter++; //Increase selectedStationCounter by 1
        }
        else{ //If selectedStationCounter is the max array length
            selectedStationCounter = 0; //Reset selectedStationCounter
        }
        
        if(instance_exists(objSelector)){ //If the selector already exists
        
            with(objSelector){ //Destroy it
                instance_destroy();
            }
        
        }
        
        instance_create(global.station[selectedStationCounter,0].x, global.station[selectedStationCounter,0].y, objSelector); //Then create a selector
        
    }
    
    /* Press A */
    //Select a station to the left
    if keyboard_check_released(ord("A")){
        if(selectedStationCounter > 0){ //If i is greater than 0
             selectedStationCounter--; //Decrease selectedStationCounter by 1
        }
        else{ //If selectedStationCounter equals 0
             selectedStationCounter=array_height_2d(global.station)-1; //Set selectedStationCounter to the max array length
        }
         
        if(instance_exists(objSelector)){ //If the selector already exists
         
             with(objSelector){ //Destroy it
                 instance_destroy();
             }
         
        }
         
        instance_create(global.station[selectedStationCounter,0].x, global.station[selectedStationCounter,0].y, objSelector); //Then create a selector
         
        with(objSelector){
                image_blend = make_colour_rgb(255, 255, 0); //Colour the selector yellow
        }
        
    }
    
    /* Press E */
    if keyboard_check_pressed(ord("E")){ //If E is press, select the current station
    
        if(global.station[selectedStationCounter,0] == global.redStation || global.station[selectedStationCounter,0] == global.yellowStation ||
           global.station[selectedStationCounter,0] == global.greenStation || global.station[selectedStationCounter,0] == global.blueStation){
           
           stationHasBeenChosen = true;
           with(objSelector)
                image_blend = make_colour_hsv(0, 0, 0);
            
        }
        else{
    
            stationHasBeenChosen = false;
            selected = true;
        
            with(objSelector){
                image_blend = make_colour_rgb(255, 0, 0); //If a station is picked, make the selector red
            }
            
            global.walking = true; //Make player start walking
            
            
            /*Turn Selection*/
            if(playerTurnCounter<array_height_2d(global.player)-1){
                    playerTurnCounter++;
                    playerTurnNameDisplayCounter++;
                }
            else{
            /*This should actually end the round. For now, this is filler*/
                room_goto(roomText);
                //playerTurnCounter=0;
                //playerTurnNameDisplayCounter=0;
            }
                        
            /* Set the player's current station to the station that is selected */
            switch(playerTurnCounter){ 
                case 0: global.redStation = global.station[selectedStationCounter,0]; break; 
                case 1: global.yellowStation = global.station[selectedStationCounter,0]; break;
                case 2: global.blueStation = global.station[selectedStationCounter,0]; break;
                case 3: global.greenStation = global.station[selectedStationCounter,0]; break;
            }
            
            
        }
        
    }

}

PlayerWalking(); //Code that moves the player

/* */
/*  */
