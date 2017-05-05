starPointy = random(room_height); //Generate a place on the screen for the star to spawn relative to y
starSpeed = random_range(starSpeedMin,starSpeedMax); //Generate a speed

for (starId = 0; starId < instance_count; starId += 1;) //Loop through each spawned star
    {
    if(instance_exists(instance_find(objStar,starId))){ //With the STAR object
        with (instance_find(objStar,starId)){ //Pick a star
            
            move_towards_point(-sprite_get_width(sprStar), y, speed); //Travel towards the left of the screen
            if(x<-sprite_get_width(sprStar)){ //If the star is off the screen
                instance_destroy(); //Destroy it
            }
            
            
        }
    }
}

