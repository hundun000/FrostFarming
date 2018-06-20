//quick reference
var backpackManager=global.thisGame.playerBackpack;
var itemManager=global.thisGame.itemManager;
var player=global.thisPlayer;

#macro MOUSE_BUTTON_USE_ITEM mb_left


if(mouse_check_button_pressed(MOUSE_BUTTON_USE_ITEM)){
#region use handing item

//get item data
var slot_index=(backpackManager.BACKPACK_SLOTS_HEIGHT-1)*backpackManager.BACKPACK_SLOTS_WIDTH+backpackManager.m_handingSlotSubIndex;
var itemType=backpackManager.grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slot_index];

if(itemType!=ItemType.NONE){
	
	var playerFacing=role_getFacing(player);
	
	var player_grid_x=player.x div UNIT;
	var player_grid_y=player.y div UNIT;
	
	var facing_grid_x=(player_grid_x +getDxByFacing(playerFacing));
	var facing_grid_y=(player_grid_y +getDyByFacing(playerFacing));
	
	var mouseGrid_x=mouse_x div UNIT;
	var mouseGrid_y=mouse_y div UNIT;
	
	var isTouchable=player_isGridTouchable(mouseGrid_x,mouseGrid_y,player_grid_x,player_grid_y,playerFacing);
	
	if(isTouchable){

		show_debug_message("player use item in slot"+string(slot_index)+" to ("+string(facing_grid_x)+","+string(facing_grid_y)+")");	
		
		var useItemSuccess;
		switch(itemType){
	
			case ItemType.PARSNIP_SEED:
				useItemSuccess=item_use_seed(mouseGrid_x,mouseGrid_y,CropType.PARSNIP);
				break;
			case ItemType.CAULIFLOWER_SEED:
				useItemSuccess=item_use_seed(mouseGrid_x,mouseGrid_y,CropType.CAULIFLOWER);
				break;	
			default	:
				useItemSuccess=false;
		}
		
		if(useItemSuccess){
			backpack_tryReduceItemNum(1,slot_index);
		}
		
		
	}
}

#endregion
}