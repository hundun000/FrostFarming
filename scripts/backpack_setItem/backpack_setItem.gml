///@arg itemType
///@arg itemNum
///@arg slotIndex
var itemType=argument0;
var itemNum=argument1;
var slotIndex=argument2;
var ds_slot=global.thisGame.playerBackpack.grid_backpackSlots;

var numSlot=ds_grid_height(ds_slot);
if(slotIndex>=0&&slotIndex<numSlot){
	ds_slot[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slotIndex]=itemType;
	ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,slotIndex]=itemNum;
	return true;
}
else
	return false;