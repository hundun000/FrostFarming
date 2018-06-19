//draw sprite
draw_sprite(spr_dialogue_textBox,0,TEXTBOX_X,TEXTBOX_Y);

draw_sprite(PORTRAIT_SPRITE,portraitIndex,PORTRAIT_X,PORTRAIT_Y);

draw_sprite(spr_dialogue_nameBox,0,NAMEBOX_X,NAMEBOX_Y);

//dear text
draw_set_color(c_black);
draw_set_font(fnt_dialogue);

draw_text(NAME_X,NAME_Y,SPEAKER_NAME);

if(!isSubTextShowPausing&&curShowSubTextIndex<string_length(DIALOGUE_TEXT[curTextIndex])){
	curShowSubTextIndex++;
	
	switch(string_char_at(DIALOGUE_TEXT[curTextIndex],curShowSubTextIndex)){
		case "，":
			alarm[0]=SHORT_PAUSE_TIME;
			isSubTextShowPausing=true;
			break;
		case "。":
		case "？":
		case "！":
			alarm[0]=NORMAL_PAUSE_TIME;
			isSubTextShowPausing=true;
			break;
		
	}
}
var subText=string_copy(DIALOGUE_TEXT[curTextIndex],1,curShowSubTextIndex);


draw_text(TEXT_X,TEXT_Y,subText);