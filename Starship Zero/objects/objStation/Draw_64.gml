/* Write names of stations above them */

draw_self(); //Draw the station sprite

/*Text properties*/
yOfTextRelativeToStation = 60
xOfTextRelativeToStation = -10
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntSilkscreen);

stationName = string_delete(object_get_name(self.id-100000+6),1,3);

/*Change Text Colour*/

//Station Colour Changer
for(currentStationCounter = 0;currentStationCounter<array_height_2d(global.station);currentStationCounter++){
    ChangeTextColour(currentStationCounter);
    
}

draw_set_colour(self.currentColour);


for(currentStationCounter=0;currentStationCounter<array_height_2d(global.station);currentStationCounter++){
    textAboveStation = draw_text(x-xOfTextRelativeToStation,y-yOfTextRelativeToStation,string_hash_to_newline(stationName));
}

/* */
/*  */
