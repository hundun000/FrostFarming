///@argument0 name
///@argument1 grownthStageDuration
///@argument1 value
#macro NUM_ROW_CROPS_INFO 3

var manager=argument[NUM_ROW_CROPS_INFO];

var nextColumn;
if(!ds_exists(cropsInfoTable,ds_type_grid)){
	manager.cropsInfoTable=ds_grid_create(1,NUM_ROW_CROPS_INFO);
	nextColumn=0;
}
else{
	var height=ds_grid_height(manager.cropsInfoTable);
	ds_grid_resize(manager.cropsInfoTable,++height,NUM_ROW_CROPS_INFO);
	nextColumn=height-1;
}

var i;
for(i=0;i<NUM_ROW_CROPS_INFO;i++){
	manager.cropsInfoTable[# nextColumn,i]=argument[i];	
}