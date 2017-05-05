draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_font(fntSilkscreen);
if(instance_exists(objGame)){
    draw_text(0,12,string_hash_to_newline("Turn: " + string(objGame.playerTurnCounter)));
}
    if(global.redStation!=-1)
    draw_text(0,24,string_hash_to_newline("Red\'s station: " + string_delete(object_get_name(global.redStation),1,3)));
    if(global.yellowStation!=-1)
    draw_text(0,36,string_hash_to_newline("Yellow\'s station: " + string_delete(object_get_name(global.yellowStation),1,3)));
    if(global.blueStation!=-1)
    draw_text(0,48,string_hash_to_newline("Blue\'s station: " + string_delete(object_get_name(global.blueStation),1,3)));
    if(global.greenStation!=-1)
    draw_text(0,60,string_hash_to_newline("Green\'s station: " + string_delete(object_get_name(global.greenStation),1,3)));
    draw_set_colour(c_black);


