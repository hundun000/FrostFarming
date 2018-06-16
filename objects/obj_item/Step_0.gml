if(m_isDropMoving){
	x=lerp(x,m_moveTarget_x,0.5);
	y=lerp(y,m_moveTarget_y,0.5);
	
	if(abs(x-m_moveTarget_x)<1&&abs(y-m_moveTarget_y)<1)
		m_isDropMoving=false;
}
else{
	
	var r=UNIT*0.75;
	//pull to player area check
	if(point_in_rectangle(global.thisPlayer.x,global.thisPlayer.y,x-r,y-r,x+r,y+r)){
		
		r=2;
		//player pick up area check
		if(!point_in_rectangle(global.thisPlayer.x,global.thisPlayer.y,x-r,y-r,x+r,y+r)){
			x=lerp(x,global.thisPlayer.x,0.3);
			y=lerp(y,global.thisPlayer.y,0.3);	
		}
		else{
			var pickUpSlotIndex=(backpack_addItem(m_itemType,1)!=-1);
			if(pickUpSlotIndex!=-1){
				instance_destroy();
				show_debug_message("pick up item "+string(backpack_getItemTypeBySlot(pickUpSlotIndex)));
			}
		}
	}
	
	
	
}
