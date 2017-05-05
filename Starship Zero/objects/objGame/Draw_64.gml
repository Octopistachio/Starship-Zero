/*Text properties*/
fontScale = 1;
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntTitle);

if(playerTurnNameDisplayCounter<4)
    draw_text_transformed(__view_get( e__VW.WView, 0 )/2,25,string_hash_to_newline("Pick a station, " + global.player[playerTurnNameDisplayCounter,0]),fontScale,fontScale,0);
else  
    draw_text_transformed(__view_get( e__VW.WView, 0 )/2,25,string_hash_to_newline("Turn is over"),fontScale,fontScale,0);

/* */
/*  */
