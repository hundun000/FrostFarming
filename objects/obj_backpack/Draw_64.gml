if(!isShowBackpack) exit;

//-------- draw self ---------------
draw_sprite_ext(SPR_INVENTORY,0,INVENTORY_X,INVENTORY_Y,
	INVENTORY_SCALE,INVENTORY_SCALE,0,c_white,1
);

//quick reference
var manager=global.thisGame.itemManager;
	
#region draw player info 
var text;
draw_set_font(fnt_INFO_NAME);
draw_set_color(c_black);

text=grid_playerInfo[# PLAYER_INFO_COLUMN_DESCRIPTION,PLAYER_INFO_ROW_NAME]+":"+grid_playerInfo[# PLAYER_INFO_COLUMN_VALUE,PLAYER_INFO_ROW_NAME];
draw_text(INFO_NAME_X,INFO_NAME_Y,text);

text=grid_playerInfo[# PLAYER_INFO_COLUMN_DESCRIPTION,PLAYER_INFO_ROW_COIN];
draw_text(INFO_COIN_DESCRIPTION_X,INFO_COIN_DESCRIPTION_Y,text);

text=grid_playerInfo[# PLAYER_INFO_COLUMN_VALUE,PLAYER_INFO_ROW_COIN];
draw_text(INFO_COIN_NUM_X,INFO_COIN_NUM_Y,text);
#endregion

#region draw slot
draw_set_font(fnt_SLOT_NUMBER);
draw_set_color(c_white);
var i,j;
var slot_x,slot_y;
var slot_index;
var itemNum,itemType;
var item_x_of_sprite,item_y_of_sprite;
for(i=0;i<BACKPACK_SLOTS_WIDTH;i++){
	for(j=0;j<BACKPACK_SLOTS_HEIGHT;j++){
		//get draw position
		slot_x=SLOTS_X+i*(SLOTS_NORMAL_SPACE+UNIT)*INVENTORY_SCALE;
		if(j<BACKPACK_SLOTS_HEIGHT-1)
			slot_y=SLOTS_Y+j*(SLOTS_NORMAL_SPACE+UNIT)*INVENTORY_SCALE;
		else
			slot_y=SLOTS_Y+((j-1)*(SLOTS_NORMAL_SPACE+UNIT)+(SLOTS_BIG_SPACE+UNIT))*INVENTORY_SCALE;
		
		if(j>=BACKPACK_SLOTS_USABLE_ROW_START){
			//get item data
			slot_index=j*BACKPACK_SLOTS_WIDTH+i;
			itemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slot_index];
			itemNum=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,slot_index];
		
			//draw item
			if(itemType!=ItemType.NONE){
							
				
				item_x_of_sprite=(itemType mod manager.ITEMS_SPR_NUM_COLUMN)*UNIT;
				item_y_of_sprite=(itemType div manager.ITEMS_SPR_NUM_COLUMN)*UNIT;
				
				if(slot_index==m_pickUpSlotIndex){
					draw_sprite_part_ext(spr_items,0,item_x_of_sprite,item_y_of_sprite,UNIT,UNIT,slot_x,slot_y,INVENTORY_SCALE,INVENTORY_SCALE,c_white,0.2);
				}
				else{
					draw_sprite_part_ext(spr_items,0,item_x_of_sprite,item_y_of_sprite,UNIT,UNIT,slot_x,slot_y,INVENTORY_SCALE,INVENTORY_SCALE,c_white,1);
				}
				
				
				draw_text(slot_x+SLOT_INSIDE_TEXT_OFFSET_X,slot_y+SLOT_INSIDE_TEXT_OFFSET_Y,string(itemNum));
			
			}
			
			if(slot_index==mouseSlotIndex){
				gpu_set_blendmode(bm_add);
				draw_sprite_ext(spr_inventorySlot,0,slot_x,slot_y,INVENTORY_SCALE,INVENTORY_SCALE,0,c_white,0.5);
				gpu_set_blendmode(bm_normal);
			}
			
		}
		else{
			//draw locked slot
			draw_sprite_ext(spr_inventorySlot,1,slot_x,slot_y,INVENTORY_SCALE,INVENTORY_SCALE,0,c_white,1);
		}
	}
}
#endregion

#region draw holding item
if(m_pickUpSlotIndex!=-1){
	slot_index=m_pickUpSlotIndex;
	itemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,slot_index];
	itemNum=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,slot_index];
	item_x_of_sprite=(itemType mod manager.ITEMS_SPR_NUM_COLUMN)*UNIT;
	item_y_of_sprite=(itemType div manager.ITEMS_SPR_NUM_COLUMN)*UNIT;
	var draw_pick_x=device_mouse_x_to_gui(0)-UNIT/2*INVENTORY_SCALE;//pick the center of slot
	var draw_pick_y=device_mouse_y_to_gui(0)-UNIT/2*INVENTORY_SCALE;
	draw_sprite_part_ext(spr_items,0,item_x_of_sprite,item_y_of_sprite,UNIT,UNIT,draw_pick_x,draw_pick_y,INVENTORY_SCALE,INVENTORY_SCALE,c_white,1);
	draw_text(draw_pick_x+SLOT_INSIDE_TEXT_OFFSET_X,draw_pick_y+SLOT_INSIDE_TEXT_OFFSET_Y,string(itemNum));
}
#endregion

#region draw info board
//draw only when not pick up
if(mouseSlotIndex!=-1&&m_pickUpSlotIndex==-1){
	var mouseItemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,mouseSlotIndex];
	if(mouseItemType!=ItemType.NONE){
		var descriprion=manager.grid_itemInfo[# ITEM_INFO_COLUMN_DESCRIPTION,mouseItemType];	
		draw_text(mouseGUI_x+UNIT/2*INVENTORY_SCALE,mouseGUI_y+UNIT/2*INVENTORY_SCALE,descriprion);
	}
}
#endregion