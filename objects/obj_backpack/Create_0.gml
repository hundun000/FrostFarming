#region UI value

GUI_WIDTH=display_get_gui_width();
GUI_HEIGHT=display_get_gui_height();

//self part
SPR_INVENTORY=spr_inv_backpack;
INVENTORY_WIDTH=sprite_get_width(SPR_INVENTORY);
INVENTORY_HEIGHT=sprite_get_height(SPR_INVENTORY);
INVENTORY_SCALE=2;

INVENTORY_X=GUI_WIDTH/2-INVENTORY_WIDTH/2*INVENTORY_SCALE;
INVENTORY_Y=GUI_HEIGHT/2-INVENTORY_HEIGHT/2*INVENTORY_SCALE;

//info part 
fnt_INFO_NAME=global.thisGame.FONT_TEXT_24;
INFO_NAME_X=INVENTORY_X+9*INVENTORY_SCALE;
INFO_NAME_Y=INVENTORY_Y+9*INVENTORY_SCALE;

fnt_INFO_COIN=global.thisGame.FONT_TEXT_24;
INFO_COIN_DESCRIPTION_X=INVENTORY_X+125*INVENTORY_SCALE;
INFO_COIN_DESCRIPTION_Y=INVENTORY_Y+9*INVENTORY_SCALE;
INFO_COIN_NUM_X=INVENTORY_X+165*INVENTORY_SCALE;
INFO_COIN_NUM_Y=INVENTORY_Y+9*INVENTORY_SCALE;
//slot part 
fnt_SLOT_NUMBER=global.thisGame.FONT_TEXT_16;
SLOTS_X=INVENTORY_X+18*INVENTORY_SCALE;
SLOTS_Y=INVENTORY_Y+35*INVENTORY_SCALE;
SLOTS_NORMAL_SPACE=4;
SLOTS_BIG_SPACE=12;
SLOT_INSIDE_TEXT_OFFSET_X=UNIT*0.6*INVENTORY_SCALE;
SLOT_INSIDE_TEXT_OFFSET_Y=UNIT*0.6*INVENTORY_SCALE;

ITEMS_SPR_NUM_COLUMN=sprite_get_width(spr_items) div UNIT;
ITEMS_SPR_NUM_ROW=sprite_get_height(spr_items) div UNIT;


#endregion

#region items
#macro ITEMS_ID_START_HARVEST 10
#macro ITEMS_ID_START_CROP_SEED 30

enum ItemType{
	NONE=0,
	
	PARSNIP				=ITEMS_ID_START_HARVEST		+1,
	CAULIFLOWER			=ITEMS_ID_START_HARVEST		+2,
	
	PARSNIP_SEED		=ITEMS_ID_START_CROP_SEED	+1,
	CAULIFLOWER_SEED	=ITEMS_ID_START_CROP_SEED	+2,
}

BACKPACK_SLOTS_WIDTH=9;
BACKPACK_SLOTS_HEIGHT=4;
BACKPACK_SLOTS_USABLE_ROW_START=2;
BACKPACK_NUM_SLOTS=BACKPACK_SLOTS_WIDTH*BACKPACK_SLOTS_HEIGHT;

#macro NUM_COLUMN_BACKPACK_SLOTS 2
#macro BACKPACK_SLOTS_COLUMN_ITEM_TYPE 0
#macro BACKPACK_SLOTS_COLUMN_NUM 1

grid_backpackSlots=ds_grid_create(NUM_COLUMN_BACKPACK_SLOTS,BACKPACK_NUM_SLOTS);



#endregion

#region player info

#macro NUM_COLUMN_PLAYER_INFO 2
#macro PLAYER_INFO_COLUMN_DESCRIPTION 0
#macro PLAYER_INFO_COLUMN_VALUE 1

#macro NUM_ROW_PLAYER_INFO 2
#macro PLAYER_INFO_ROW_NAME 0
#macro PLAYER_INFO_ROW_COIN 1

grid_playerInfo=ds_grid_create(NUM_COLUMN_PLAYER_INFO,NUM_ROW_PLAYER_INFO);
grid_playerInfo[# PLAYER_INFO_COLUMN_DESCRIPTION,PLAYER_INFO_ROW_NAME]="玩家";
grid_playerInfo[# PLAYER_INFO_COLUMN_VALUE,PLAYER_INFO_ROW_NAME]="Dim";
grid_playerInfo[# PLAYER_INFO_COLUMN_DESCRIPTION,PLAYER_INFO_ROW_COIN]="金钱";
grid_playerInfo[# PLAYER_INFO_COLUMN_VALUE,PLAYER_INFO_ROW_COIN]=irandom_range(0,99);


#endregion

#region item operate
mouseSlotIndex=-1;
m_pickUpSlotIndex=-1;
m_mouseSlotGrid_x=-1;
m_mouseSlotGrid_y=-1;


#endregion
isShowBackpack=false;