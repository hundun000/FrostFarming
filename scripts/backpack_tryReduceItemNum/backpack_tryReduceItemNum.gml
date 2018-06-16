///@arg tryReduceNum
///@arg slotIndex

var tryReduceNum=argument0;
var slotIndex=argument1;
var ds_slot=global.thisGame.playerBackpack.grid_backpackSlots;
var actualReduceNum=-1;

var numSlot=ds_grid_height(ds_slot);
if(slotIndex>=0&&slotIndex<numSlot){
	
	if(ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,slotIndex]>tryReduceNum){
		actualReduceNum=tryReduceNum;
		ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,slotIndex]-=tryReduceNum;
	}
	else{
		actualReduceNum=ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,slotIndex];
		ds_slot[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slotIndex]=ItemType.NONE;
		ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,slotIndex]=0;
	}
	
}


return actualReduceNum;