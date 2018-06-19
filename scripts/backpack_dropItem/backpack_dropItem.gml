///@arg dropIndex
///@arg dropNum
var dropIndex=argument0;
var dropNum=argument1;
var ds_slot=global.thisGame.playerBackpack.grid_backpackSlots;


var pickUpItemType=ds_slot[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,dropIndex];


for(var i=0;i<dropNum;i++){
	if(backpack_tryReduceItemNum(1,dropIndex)>0)	
		item_instance_create(pickUpItemType);
			
	var pickUpItemNum_afterDrop=ds_slot[# BACKPACK_SLOTS_COLUMN_NUM,dropIndex];
	if(pickUpItemNum_afterDrop==0){
		break;
	}
}

addItemNotifiction(pickUpItemType,-dropNum);


	
	

			
