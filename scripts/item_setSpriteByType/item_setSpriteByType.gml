///@arg ins_item
var ins_item=argument0;

ins_item.x_of_sprite=(ins_item.m_itemType mod global.thisGame.itemManager.ITEMS_SPR_NUM_COLUMN)*UNIT;
ins_item.y_of_sprite=(ins_item.m_itemType div global.thisGame.itemManager.ITEMS_SPR_NUM_COLUMN)*UNIT;