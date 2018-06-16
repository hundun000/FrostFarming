ITEMS_SPR_NUM_COLUMN=sprite_get_width(spr_items) div UNIT;
ITEMS_SPR_NUM_ROW=sprite_get_height(spr_items) div UNIT;

#macro ITEMS_ID_START_HARVEST 10
#macro ITEMS_ID_START_CROP_SEED 30

#region regist items
enum ItemType{
	NONE=0,
	
	PARSNIP				=ITEMS_ID_START_HARVEST		+0,
	CAULIFLOWER			=ITEMS_ID_START_HARVEST		+1,
	
	PARSNIP_SEED		=ITEMS_ID_START_CROP_SEED	+0,
	CAULIFLOWER_SEED	=ITEMS_ID_START_CROP_SEED	+1,
	
	MAX					=100
}



#macro NUM_COLUMN_ITEM_INFO 2
#macro ITEM_INFO_COLUMN_NAME 0
#macro ITEM_INFO_COLUMN_DESCRIPTION 1
grid_itemInfo=ds_grid_create(NUM_COLUMN_ITEM_INFO,ItemType.MAX);

//harvest part
grid_itemInfo[# ITEM_INFO_COLUMN_NAME,ItemType.PARSNIP]="防风草";
grid_itemInfo[# ITEM_INFO_COLUMN_DESCRIPTION,ItemType.PARSNIP]="春季作物，可食用。";
grid_itemInfo[# ITEM_INFO_COLUMN_NAME,ItemType.CAULIFLOWER]="花椰菜";
grid_itemInfo[# ITEM_INFO_COLUMN_DESCRIPTION,ItemType.CAULIFLOWER]="春季作物，可食用。";
//seed part
grid_itemInfo[# ITEM_INFO_COLUMN_NAME,ItemType.PARSNIP_SEED]="防风草种子";
grid_itemInfo[# ITEM_INFO_COLUMN_DESCRIPTION,ItemType.PARSNIP_SEED]="在春季种植。";
grid_itemInfo[# ITEM_INFO_COLUMN_NAME,ItemType.CAULIFLOWER_SEED]="花椰菜种子";
grid_itemInfo[# ITEM_INFO_COLUMN_DESCRIPTION,ItemType.CAULIFLOWER_SEED]="在春季种植。";


#endregion