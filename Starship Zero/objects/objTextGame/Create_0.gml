/* ------------ PRESET STATIONS FOR TESTING PURPOSES ------------*/

global.redStation = objEngineering;
global.yellowStation = objWeapons;
global.blueStation = objShields;
global.greenStation = objPiloting;

/* ------------------------------------------------------------- */

ScreenBullshit(); //Run the game in fullscreen

boxMargin = display_get_width()/48; //Amount of pixels the text box is from the screen on the bottom, left, and right
boxHeight = display_get_height() / 3 //How high the box is
boxFillColour = c_black //Colour of the box fill
boxOutlineColour = c_white //Colour of the box outline
boxOutlineWidth = boxMargin/6; //Weight of the outline

textMargin = font_get_size(fntTextBox/4); //How far away the text is from the side of the box
textColour = c_white; //The colour of the text

characterDrawDelay = 2; //Delay between each character of the string
chars_drawn=1;//put this to 0 if you want to draw the first character in the for loop
alarm[0]=characterDrawDelay;//any value here this is the delay between each character drawn;

instance_create(room_width/2,boxHeight+boxMargin,objPortrait); //Spawn the portrait in the center of the room
objPortrait.image_xscale = 8;
objPortrait.image_yscale = objPortrait.image_xscale;

buttonIndex = 0; //Index of the Button A
buttonBlinkDelay = 25;
alarm[1] = buttonBlinkDelay; //The delay between each blink of the button UI
buttonScale = 1.5; //Scaling of the XBox button UI

text = "How can my screen hesitate? An anniversary crowd antiques dance. The soundtrack disables this wealthy major outside the tutor. The eighth tail marries the cyclist opposite the handful."; //Text written to the textbox

/* */
/*  */
