enum CropType{
	PARSNIP		=0,
	CAULIFLOWER	=1,
	GARLIC		=2,
	RHABARB		=3,
	TOMATO		=4,
	HOTPEPPER	=5,
	RADISH		=6,
	STARFRUIT	=7,
	EGGPLANT	=8,
	PUMPKIN		=9,
	YAM			=10,
	BEET		=11

}
#macro NUM_COLUMN_CROPS_INFO 3

#macro INFO_COLUMN_HARVEST_NAME 0
#macro INFO_COLUMN_GROWTHSTAGE_DURATION 1
#macro INFO_COLUMN_VALUE 2

/*
DS of cropsInfoTable

property\index		0		1		2		3	.....
	name			n0		n1		n2		n3	.....
	value			v0		v1		v2		v3	.....
	.....
	
*/


cropsInfoTable=noone;
gridsOfSoil=noone;

registCropType("parsnip",1,10,id);
registCropType("cauliflower",3,50,id);
registCropType("garlic",2,25,id);
registCropType("Rhabarb",1,12,id);

registCropType("tomato",1,12,id);
registCropType("hotPepper",1,12,id);
registCropType("radish",1,12,id);
registCropType("starfriut",1,12,id);
registCropType("eggplant",1,12,id);
registCropType("pumpkin",1,12,id);
registCropType("yam",1,12,id);
registCropType("beet",1,12,id);



debug_isPlanting=false;
debug_curCrop=CropType.PARSNIP;
debug_curX=-1;
debug_curY=-1;

#macro NUM_COLUMN_CROPS_STORAGE 4

#macro CROPS_STORAGE_COLUMN_GRID_X 0
#macro CROPS_STORAGE_COLUMN_GRID_Y 1
#macro CROPS_STORAGE_COLUMN_TYPE 2
#macro CROPS_STORAGE_COLUMN_DAYS_OLD 3

cropsDataStorage=ds_grid_create(NUM_COLUMN_CROPS_STORAGE,1);
ds_grid_clear(cropsDataStorage,noone);