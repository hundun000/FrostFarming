if(room==rm_farm){
	var num_crop=instance_number(obj_crop);
	if(num_crop>0){
		ds_grid_resize(cropsDataStorage,NUM_COLUMN_CROPS_STORAGE,num_crop);
		
		//scan grids of Soil and get crops
		var gridWidth=ds_grid_width(gridsOfSoil);
		var gridHeight=ds_grid_height(gridsOfSoil);
		var slot=0;
		
		var i,j;
		for(i=0;i<gridWidth;i++){
			for(j=0;j<gridHeight;j++){
				var ins_crop=gridsOfSoil[# i,j];
				if(ins_crop!=0){
					cropsDataStorage[# CROPS_STORAGE_COLUMN_GRID_X,slot]=i;
					cropsDataStorage[# CROPS_STORAGE_COLUMN_GRID_Y,slot]=j;
					cropsDataStorage[# CROPS_STORAGE_COLUMN_TYPE,slot]=ins_crop.m_cropType;
					cropsDataStorage[# CROPS_STORAGE_COLUMN_DAYS_OLD,slot]=ins_crop.m_dayOld;
					slot++;
				}
			}	
		}
		
	}
	else{
		ds_grid_clear(cropsDataStorage,noone);
	}

	ds_grid_destroy(gridsOfSoil);
	
}
