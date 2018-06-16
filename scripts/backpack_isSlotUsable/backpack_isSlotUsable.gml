///@arg slotIndex
var slotIndex=argument0;
var ds_slot=global.thisGame.playerBackpack.grid_backpackSlots;
var manager=global.thisGame.playerBackpack;

var row=slotIndex div manager.BACKPACK_SLOTS_WIDTH;
return row>=manager.BACKPACK_SLOTS_USABLE_ROW_START
	   &&ds_slot[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slotIndex]==ItemType.NONE;


	