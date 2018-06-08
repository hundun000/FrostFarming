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
#macro INFO_COLUMN_HARVEST_NAME 0
#macro INFO_COLUMN_GRAWTHSTAGE_DURATION 1
#macro INFO_COLUMN_VALUE 2

cropsInfoTable=noone;
gridOfSoil=noone;

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
debug_curCrop=CropType.STARFRUIT;
debug_curX=-1;
debug_curY=-1;