starSpawnTimer = 1; //Time between star spawns
alarm[0] = starSpawnTimer; //Set the alarm equal to the timer
starPointx = room_width+sprite_get_width(sprStar); //Where on the screen the stars spawn relative to x
starPointy = random(room_height); //Where on the screen the stars spawn relative to y
starMax = 250; //Max amount of stars appearing on screen
starSpeedMin = .12 //Min speed the stars will travel
starSpeedMax = .5; //Max speed the stars will travel
starSpeed = random_range(starSpeedMin,starSpeedMax); //Randomly generated speed value

/*Spawn stars when the game starts*/
for(starSpawnCount = 0; starSpawnCount < starMax; starSpawnCount++){
    
    starSpeed = random_range(starSpeedMin,starSpeedMax);
    starInstance = instance_create(random(room_width),random(room_height), objStar);

}

/* */
/*  */
