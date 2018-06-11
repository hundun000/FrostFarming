
#region Planting
if(keyboard_check_pressed(ord("P")))
	debug_isPlanting=!debug_isPlanting;
	
if(debug_isPlanting){
	debug_curX=mouse_x;
	debug_curY=mouse_y;
	
	if(mouse_wheel_up()) debug_curCrop++;
	if(mouse_wheel_down()) debug_curCrop--;
	debug_curCrop=clamp(debug_curCrop,0,sprite_get_number(spr_harvest)-1);
	
	
	if(mouse_check_button_pressed(mb_left)){
		//plant to grid center
		var plant_x=(debug_curX div UNIT)*UNIT+UNIT/2;
		var plant_y=(debug_curY div UNIT)*UNIT+UNIT/2;
	
		creatCropByPos(plant_x,plant_y,debug_curCrop,0);
	}
}
#endregion

#region Growing
if(instance_exists(obj_crop)&&keyboard_check_pressed(ord("G"))){
	with(obj_crop){
		crop_grow(self.id,1);
	}
}
#endregion