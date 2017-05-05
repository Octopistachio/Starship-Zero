draw_rectangle_colour(boxMargin,room_height-boxMargin,room_width-boxMargin,room_height-boxHeight,boxOutlineColour,boxOutlineColour,boxOutlineColour,boxOutlineColour,false); //The text outline
draw_rectangle_colour(boxMargin+boxOutlineWidth,room_height-boxMargin-boxOutlineWidth,room_width-boxMargin-boxOutlineWidth,room_height-boxHeight+boxOutlineWidth,boxFillColour,boxFillColour,boxFillColour,boxFillColour,false); //The text box fill

draw_set_colour(textColour);
draw_set_font(fntTextBox);

TextDisplay(text,boxMargin+boxOutlineWidth+textMargin,room_height-boxHeight+boxOutlineWidth+textMargin);
//draw_text_transformed(boxMargin+boxOutlineWidth+textMargin,room_height-boxHeight+boxOutlineWidth+textMargin,text,fontScale,fontScale,0);

draw_sprite_ext(sprButtonA, buttonIndex, room_width-boxMargin-boxOutlineWidth*2, room_height-boxMargin-boxOutlineWidth*2, buttonScale, buttonScale, 0, c_white, 1);

