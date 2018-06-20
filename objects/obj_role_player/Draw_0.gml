// Inherit the parent event
event_inherited();

#region draw handing item

var handingItem_x=x-UNIT/2;
var handingItem_y=y-UNIT*2.25;

//quick reference
var backpackManager=global.thisGame.playerBackpack;
var itemManager=global.thisGame.itemManager;

//get item data
var slot_index=(backpackManager.BACKPACK_SLOTS_HEIGHT-1)*backpackManager.BACKPACK_SLOTS_WIDTH+backpackManager.m_handingSlotSubIndex;
var itemType=backpackManager.grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slot_index];
var itemNum=backpackManager.grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,slot_index];
		
//draw item
if(itemType!=ItemType.NONE){								
	var item_x_of_sprite=(itemType mod itemManager.ITEMS_SPR_NUM_COLUMN)*UNIT;
	var item_y_of_sprite=(itemType div itemManager.ITEMS_SPR_NUM_COLUMN)*UNIT;			
	draw_sprite_part(spr_items,0,item_x_of_sprite,item_y_of_sprite,UNIT,UNIT,handingItem_x,handingItem_y);
}
#endregion		