TEXTBOX_WIDTH=sprite_get_width(spr_dialogue_textBox);
TEXTBOX_HEIGHT=sprite_get_height(spr_dialogue_textBox);
PORTRAIT_WIDTH=sprite_get_width(spr_dialogue_portrait);
PORTRAIT_HEIGHT=sprite_get_height(spr_dialogue_portrait);
NAMEBOX_WIDTH=sprite_get_width(spr_dialogue_nameBox);
NAMEBOX_HEIGHT=sprite_get_height(spr_dialogue_nameBox);

TEXTBOX_X=(GAME_WIDTH+PORTRAIT_WIDTH-TEXTBOX_WIDTH)/2;
TEXTBOX_Y=GAME_HEIGHT*0.95-TEXTBOX_HEIGHT; 
PORTRAIT_X=TEXTBOX_X-NAMEBOX_WIDTH;
PORTRAIT_Y=TEXTBOX_Y;
NAMEBOX_X=PORTRAIT_X;
NAMEBOX_Y=PORTRAIT_Y-NAMEBOX_HEIGHT;

PORTRAIT_SPRITE=spr_dialogue_portrait;
portraitIndex=0;

BOX_TEXT_BOARD_SPACE=10;

NAME_X=NAMEBOX_X+BOX_TEXT_BOARD_SPACE/2;
NAME_Y=NAMEBOX_Y+BOX_TEXT_BOARD_SPACE/2;
TEXT_X=TEXTBOX_X+BOX_TEXT_BOARD_SPACE;
TEXT_Y=TEXTBOX_Y+BOX_TEXT_BOARD_SPACE;

SPEAKER_NAME="莉亚";
DIALOGUE_TEXT[0]=castChineseToMultiline("你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。你好,世界。");
DIALOGUE_TEXT[1]=castChineseToMultiline("0");
curTextIndex=0;
curShowSubTextIndex=0;

SHORT_PAUSE_TIME=15;
NORMAL_PAUSE_TIME=20;

isSubTextShowPausing=false;

fnt_dialogue=global.thisGame.FONT_TEXT_24;

//--------------for debug
depth=INVENTORY_DEPTH;

global.thisGame.playerBackpack.backpackState=BackpackState.HIDE;