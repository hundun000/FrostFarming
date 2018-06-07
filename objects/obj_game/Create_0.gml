#macro GAME_FPS 60

game_set_speed(GAME_FPS, gamespeed_fps);
randomize();

spawnRoom=noone;
spawnX=-1;
spawnY=-1;
spawnFacing=noone;
tansitionAlpha=-1;

global.thisGame=id;


GUI_WIDTH=display_get_gui_width();
GUI_HEIGHT=display_get_gui_height();

room_goto_next();