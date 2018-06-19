#macro GAME_FPS 60
#macro GAME_WIDTH 1024
#macro GAME_HEIGHT 768
#macro MANAGER_DEPTH 0
#macro INVENTORY_DEPTH -1
#macro LAYER_INSTANCE "Instances"

#region globle setting
game_set_speed(GAME_FPS, gamespeed_fps);
display_set_gui_size(GAME_WIDTH,GAME_HEIGHT);
randomize();
global.thisGame=id;
FONT_TEXT_24=font_add("ARIALUNI_fixed.ttf",25,0,0,32,128);
FONT_TEXT_16=font_add("ARIALUNI_fixed.ttf",16,0,0,32,128);

cursor_sprite=spr_normal_cursor;
window_set_cursor(cr_none);



cropsManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_cropsManager);
depthSystemDrawer=instance_create_layer(0,0,LAYER_INSTANCE,obj_depthSystemDrawer);
timeManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_timeManager);
itemManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_itemManager);
questManager=instance_create_depth(0,0,MANAGER_DEPTH,obj_questManager);

playerBackpack=instance_create_depth(0,0,INVENTORY_DEPTH,obj_backpack);
#endregion

#region self setting
spawnRoom=noone;
spawnX=-1;
spawnY=-1;
spawnFacing=noone;
tansitionAlpha=-1;



debug=true;


#endregion

#region init

backpack_setItem(ItemType.PARSNIP,5,18);
backpack_setItem(ItemType.PARSNIP_SEED,5,19);
backpack_setItem(ItemType.CAULIFLOWER,5,20);
backpack_setItem(ItemType.CAULIFLOWER_SEED,5,21);
room_goto_next();
#endregion