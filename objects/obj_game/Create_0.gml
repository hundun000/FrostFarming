#macro GAME_FPS 60
#macro MANAGER_DEPTH 0
#macro LAYER_INSTANCE_PICKABLE "Instances_pickable"

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

cropsManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_cropsManager);

debug=true;