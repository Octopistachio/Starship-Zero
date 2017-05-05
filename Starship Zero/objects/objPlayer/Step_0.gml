/* Red Player */
with(objRed){
    if(objGame.playerTurnCounter == 0){
        if(!global.walking){ //If the player is walking
            if(sprite_index != sprRed) //If the sprite is not the idle sprite
                sprite_index = sprRed; //Set it to the idle sprite
            image_speed = idleSpeed; //Set the image speed to the idle speed
        }
        else{ //If the player is not walking
            if(sprite_index != sprRedWalking) //If the sprite is not the walking sprite
                sprite_index = sprRedWalking; //Set it to the walking sprite
            image_speed = walkSpeed; //Set the image speed to the walking speed
        }
    }
}

/* Yellow Player */
with(objYellow){
    if(objGame.playerTurnCounter == 1){
        if(!global.walking){
            if(sprite_index != sprYellow)
                sprite_index = sprYellow;
            image_speed = idleSpeed;
        }
        else{
            if(sprite_index != sprYellowWalking)
                sprite_index = sprYellowWalking;
            image_speed = walkSpeed;
        }
    }
}

/* Green Player */
with(objGreen){
    if(objGame.playerTurnCounter == 2){
        if(!global.walking){
            if(sprite_index != sprGreen)
                sprite_index = sprGreen;
            image_speed = idleSpeed;
        }
        else{
            if(sprite_index != sprGreenWalking)
                sprite_index = sprGreenWalking;
            image_speed = walkSpeed;
        }
    }
}

/* Blue Player */
with(objBlue){
    if(objGame.playerTurnCounter == 3){
        if(!global.walking){
            if(sprite_index != sprBlue)
                sprite_index = sprBlue;
            image_speed = idleSpeed;
        }
        else{
            if(sprite_index != sprBlueWalking)
                sprite_index = sprBlueWalking;
            image_speed = walkSpeed;
        }
    }
}

/* */
/*  */
