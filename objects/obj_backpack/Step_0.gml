if(keyboard_check_pressed(ord("E")))
	isShowBackpack=!isShowBackpack;
if(!isShowBackpack) exit;

#region get mouse slot

var diff_x=device_mouse_x_to_gui(0)-SLOTS_X+SLOTS_NORMAL_SPACE*INVENTORY_SCALE/2;//threhold is middle of space,so start from more half space
var diff_y=device_mouse_y_to_gui(0)-SLOTS_Y+SLOTS_NORMAL_SPACE*INVENTORY_SCALE/2;
var cellSize=(UNIT+SLOTS_NORMAL_SPACE)*INVENTORY_SCALE;
var bigCellSize=(UNIT+SLOTS_BIG_SPACE)*INVENTORY_SCALE;

m_mouseSlotGrid_x=diff_x div cellSize;
if(diff_y<=cellSize*(BACKPACK_SLOTS_HEIGHT-1))
	m_mouseSlotGrid_y=diff_y div cellSize;
else if(diff_y<=cellSize*(BACKPACK_SLOTS_HEIGHT-1)+bigCellSize)
	m_mouseSlotGrid_y=BACKPACK_SLOTS_HEIGHT-1;
else
	m_mouseSlotGrid_y=-1;
	


if(diff_x>=0&&m_mouseSlotGrid_x<BACKPACK_SLOTS_WIDTH
	&&diff_y>=0&&m_mouseSlotGrid_y<BACKPACK_SLOTS_HEIGHT&&m_mouseSlotGrid_y>=BACKPACK_SLOTS_USABLE_ROW_START)
	mouseSlotIndex=m_mouseSlotGrid_y*BACKPACK_SLOTS_WIDTH+m_mouseSlotGrid_x;
else
	mouseSlotIndex=-1;
	
show_debug_message(string(m_mouseSlotGrid_x)+","+string(m_mouseSlotGrid_y)+","+string(mouseSlotIndex));

#endregion

#region operate item
if(mouse_check_button_pressed(mb_right))
	m_pickUpSlotIndex=-1;

if(mouse_check_button_pressed(mb_left)&&mouseSlotIndex!=-1){
	var mouseItemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,mouseSlotIndex];
	var mouseItemNum=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,mouseSlotIndex];	
	
	if(m_pickUpSlotIndex!=-1){
		var pickUpItemType=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_ITEM_TYPE,m_pickUpSlotIndex];
		var pickUpItemNum=grid_backpackSlots[# BACKPACK_SLOTS_COLUMN_NUM,m_pickUpSlotIndex];
		
		if(m_pickUpSlotIndex==mouseSlotIndex){
			//put down
			m_pickUpSlotIndex=-1;
		}
		else{
			//put down
			if(mouseItemType==ItemType.NONE){
				backpack_setItem(pickUpItemType,pickUpItemNum,mouseSlotIndex);
				backpack_setItem(ItemType.NONE,0,m_pickUpSlotIndex);
				m_pickUpSlotIndex=-1;
			}
			//merge
			else if(mouseItemType==pickUpItemType){
				backpack_setItem(pickUpItemType,pickUpItemNum+mouseItemNum,mouseSlotIndex);
				backpack_setItem(ItemType.NONE,0,m_pickUpSlotIndex);
				m_pickUpSlotIndex=-1;
			}
			//switch
			else{
				backpack_setItem(pickUpItemType,pickUpItemNum,mouseSlotIndex);
				backpack_setItem(mouseItemType,mouseItemNum,m_pickUpSlotIndex);
				m_pickUpSlotIndex=mouseSlotIndex;
			}
		}
		
	}
	else{
		//try pick up
		if(mouseItemType!=ItemType.NONE){
				m_pickUpSlotIndex=mouseSlotIndex;
		}
	
	}
}




#endregion