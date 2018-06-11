///@argument0 name
///@argument1 grownthStageDuration
///@argument1 value


var manager=argument[NUM_COLUMN_CROPS_INFO];
var nextRow;

if(!ds_exists(manager.cropsInfoTable,ds_type_grid)){
	manager.cropsInfoTable=ds_grid_create(NUM_COLUMN_CROPS_INFO,1);
	nextRow=0;
}
else{
	var height=ds_grid_height(manager.cropsInfoTable);
	ds_grid_resize(manager.cropsInfoTable,NUM_COLUMN_CROPS_INFO,++height);
	nextRow=height-1;
}

var i;
for(i=0;i<NUM_COLUMN_CROPS_INFO;i++){
	manager.cropsInfoTable[# i,nextRow]=argument[i];	
}