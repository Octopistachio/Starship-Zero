draw_self() //Draw the door

/*Doors don't close properly when going to a new level*/

if(global.walking && global.sameLevel && global.didLevelChange && global.didDoorsClose<25){ //If the player is walking, they are on the same level as the station, the level changed, the doors haven't closed multiple times(25)
    if(image_index!=0){ //Close the doors
        image_index--;
        global.didDoorsClose++;
    }
        
    
}  

else if(global.sameLevel){ //If the player is on the same level as the door
    image_index=0; //Set the door to be closed
  }
    
else if(global.walking && !global.sameLevel){ //If the any player is walking and it is not on the same level as the station
    
    if(image_index<image_number-1){ //Open the doors
        image_index++;
    }
    else{ //Else hold the door open
        image_index = image_number-1;
    }
}





/* */
/*  */
