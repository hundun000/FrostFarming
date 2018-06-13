#macro GAME_FPS 60
#macro MANAGER_DEPTH 0
#macro INVENTORY_DEPTH -1
#macro LAYER_INSTANCE "Instances"

#region globle setting
game_set_speed(GAME_FPS, gamespeed_fps);
randomize();
global.thisGame=id;
FONT_TEXT_24=font_add("ARIALUNI_fixed.ttf",25,0,0,32,128);
FONT_TEXT_16=font_add("ARIALUNI_fixed.ttf",16,0,0,32,128);

cropsManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_cropsManager);
depthSystemDrawer=instance_create_layer(0,0,LAYER_INSTANCE,obj_depthSystemDrawer);
timeManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_timeManager);

playerBackpack=instance_create_depth(0,0,INVENTORY_DEPTH,obj_backpack);
#endregion

#region self setting
spawnRoom=noone;
spawnX=-1;
spawnY=-1;
spawnFacing=noone;
tansitionAlpha=-1;

GUI_WIDTH=display_get_gui_width();
GUI_HEIGHT=display_get_gui_height();

debug=true;


#endregion

#region init

backpack_setItem(ItemType.PARSNIP,5,18);
backpack_setItem(ItemType.PARSNIP_SEED,5,19);
backpack_setItem(ItemType.CAULIFLOWER,5,20);
backpack_setItem(ItemType.CAULIFLOWER_SEED,5,21);
backpack_setItem(ItemType.PARSNIP,2,22);
room_goto_next();
#endregion