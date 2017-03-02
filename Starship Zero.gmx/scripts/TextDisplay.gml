str=argument0;//the string to drawxpos=argument1;//the starting x position of the text
xpos=argument1;//the starting x position of the text
ypos=argument2;// the starting y position of the text

cur_width=0;//this is used to see the current width of the "already drawn" characters
len=string_length(str);//the length of the string used to seperate the string into single characters(using an array)
chars[len-1]=0;//the array that holds every single character in the string
line=0;//the line variable determines how much to jump down from the current postion based on the height of the chars
var i,j;//you know what these are :P
        for (i=len-1;i>=0;i--)//main loop that seperates the characters and puts them into an array
            chars[i]=string_char_at(str,i+1);
draw_text(xpos,ypos,chars[0]);//draw the first character,PS:you can remove this and put it in the next for loop but u need to put chars_drawn to 0 in the create event
cur_width+=string_width(chars[0]);//add the first character's width to the total width
for (j=1;j< chars_drawn;j++) //For each character
    {
        
        if (cur_width>=room_width - boxMargin - boxOutlineWidth - textMargin-30) //If the text in the box is longer than the box
        {
            //Put it on a new line
            if(chars[j]!=" "){ //If the character going to the new line is not a space
                draw_text(xpos+cur_width,ypos+line,"-"); //Put a hyphen in
                line+=string_height(chars[j-1]);
                cur_width=0;
                draw_text(xpos+cur_width,ypos+line,chars[j]); 
                cur_width+=string_width(chars[j]);
            }
            else{ //If the character going to the new line is a space
                j++; //Skip it
                line+=string_height(chars[j-1]);
                cur_width=0;
                draw_text(xpos+cur_width,ypos+line,chars[j]); 
                cur_width+=string_width(chars[j]);
            }
        }
        else //Else write normally
        {
            draw_text(xpos+cur_width,ypos+line,chars[j]);
            cur_width+=string_width(chars[j]);
        }
    }//the loop that actually draws the characters
