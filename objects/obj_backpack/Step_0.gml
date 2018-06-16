if(keyboard_check_pressed(ord("E")))
	isShowBackpack=!isShowBackpack;
if(!isShowBackpack) exit;

#region get mouse slot

mouseGUI_x=device_mouse_x_to_gui(0);
mouseGUI_y=device_mouse_y_to_gui(0);

var diff_x=mouseGUI_x-SLOTS_X+SLOTS_NORMAL_SPACE*INVENTORY_SCALE/2;//threhold is middle of space,so start from more half space
var diff_y=mouseGUI_y-SLOTS_Y+SLOTS_NORMAL_SPACE*INVENTORY_SCALE/2;
var cellSize=(UNIT+SLOTS_NORMAL_SPACE)*INVENTORY_SCALE;
var bigCellSize=(UNIT+SLOTS_BIG_SPACE)*INVENTORY_SCALE;

var mouseSlotGrid_x;
var mouseSlotGrid_y;

mouseSlotGrid_x=diff_x div cellSize;
if(diff_y<=cellSize*(BACKPACK_SLOTS_HEIGHT-1))
	mouseSlotGrid_y=diff_y div cellSize;
else if(diff_y<=cellSize*(BACKPACK_SLOTS_HEIGHT-1)+bigCellSize)
	mouseSlotGrid_y=BACKPACK_SLOTS_HEIGHT-1;
else
	mouseSlotGrid_y=-1;
	


if(diff_x>=0&&mouseSlotGrid_x<BACKPACK_SLOTS_WIDTH
	&&diff_y>=0&&mouseSlotGrid_y<BACKPACK_SLOTS_HEIGHT&&mouseSlotGrid_y>=BACKPACK_SLOTS_USABLE_ROW_START)
	mouseSlotIndex=mouseSlotGrid_y*BACKPACK_SLOTS_WIDTH+mouseSlotGrid_x;
else
	mouseSlotIndex=-1;
	
show_debug_message(string(mouseSlotGrid_x)+","+string(mouseSlotGrid_y)+","+string(mouseSlotIndex));

#endregion

#region operate item

//release holdind
if(mouse_check_button_pressed(mb_right))
	m_pickUpSlotIndex=-1;

//--------- hold/holding item ----------

if(mouse_check_button_pressed(mb_left)){
	

	if(mouseSlotIndex!=-1){
		#region target position is slot
		var mouseItemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,mouseSlotIndex];
		var mouseItemNum=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,mouseSlotIndex];	
	
		//is holding something
		if(m_pickUpSlotIndex!=-1){
			var pickUpItemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,m_pickUpSlotIndex];
			var pickUpItemNum=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,m_pickUpSlotIndex];
		
			if(m_pickUpSlotIndex==mouseSlotIndex){
				//put down as before
				m_pickUpSlotIndex=-1;
			}
			else if(mouseItemType==ItemType.NONE){
			//put down other slot	
				backpack_setItem(pickUpItemType,pickUpItemNum,mouseSlotIndex);
				backpack_setItem(ItemType.NONE,0,m_pickUpSlotIndex);
				m_pickUpSlotIndex=-1;
			}
			//merge to same type
			else if(mouseItemType==pickUpItemType){
				backpack_setItem(pickUpItemType,pickUpItemNum+mouseItemNum,mouseSlotIndex);
				backpack_setItem(ItemType.NONE,0,m_pickUpSlotIndex);
				m_pickUpSlotIndex=-1;
			}
			//switch with other slot item
			else{
				backpack_setItem(pickUpItemType,pickUpItemNum,mouseSlotIndex);
				backpack_setItem(mouseItemType,mouseItemNum,m_pickUpSlotIndex);
				m_pickUpSlotIndex=-1;
			}
		}
		else{
			//no holding,try to pick up
			if(mouseItemType!=ItemType.NONE)
				m_pickUpSlotIndex=mouseSlotIndex;
		}		
		#endregion
	}
	else{
		#region target position is outside board
		//is holding something,try to drop one item
		if(m_pickUpSlotIndex!=-1){
			backpack_dropItem(m_pickUpSlotIndex,1);
			if(grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,m_pickUpSlotIndex]==0)
				m_pickUpSlotIndex=-1;
		}
		#endregion

	}
	
}



#endregion