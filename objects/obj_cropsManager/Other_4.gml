if(room==rm_farm){
	gridsOfSoil=ds_grid_create(room_width div UNIT,room_height div UNIT);
	
	
	if(cropsDataStorage[# 0,0]!=noone){
		var numCrop=ds_grid_height(cropsDataStorage);
		for(var i=0;i<numCrop;i++){
			var ins_crop=creatCropByGrid(
				cropsDataStorage[# CROPS_STORAGE_COLUMN_GRID_X,i],
				cropsDataStorage[# CROPS_STORAGE_COLUMN_GRID_Y,i],
				cropsDataStorage[# CROPS_STORAGE_COLUMN_TYPE,i],
				cropsDataStorage[# CROPS_STORAGE_COLUMN_DAYS_OLD,i]
			);
		}
		show_debug_message("Respawn crops in room_farm.");
	}
	
}
else{
	debug_isPlanting=false;
	
}