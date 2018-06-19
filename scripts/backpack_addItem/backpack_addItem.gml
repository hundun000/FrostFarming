///@arg itemType
///@arg itemNum

var itemType=argument0;
var itemNum=argument1;
var ds_slot=global.thisGame.playerBackpack.grid_backpackSlots;

//get targetSlotIndex
var numSlot=ds_grid_height(ds_slot);
var targetSlotIndex=-1;
var firstEmptySlotIndex=-1;
for(var i=0;i<numSlot;i++){
	//merge with same type
	if(ds_slot[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,i]==itemType){
		targetSlotIndex=i;		
		break;
	}
	//record first empty slot
	if(firstEmptySlotIndex==-1&&backpack_isSlotUsable(i)){
		firstEmptySlotIndex=i;
	}
}

if(targetSlotIndex==-1){
	//add to first empty slot
	if(firstEmptySlotIndex!=-1){
		targetSlotIndex=firstEmptySlotIndex;
		ds_slot[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,targetSlotIndex]=itemType;
	}
}


//process add
if(targetSlotIndex!=-1){
	ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,targetSlotIndex]+=itemNum;	
}

addItemNotifiction(itemType,itemNum);

return targetSlotIndex;