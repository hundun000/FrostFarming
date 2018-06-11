///@arg x
///@arg y
///@arg cropType
///@arg daysOld

var creatX=argument0;//input is grid center
var creaty=argument1;
var type=argument2;
var daysOld=argument3;
var manager=global.thisGame.cropsManager;


if(!canPlantNewCrop(creatX,creaty))
	return noone;
show_debug_message("Plant in soil.");

var ins_crop=instance_create_layer(creatX,creaty,LAYER_INSTANCE,obj_crop);
manager.gridsOfSoil[# creatX div UNIT,creaty div UNIT]=ins_crop;
//set from storage
ins_crop.m_cropType=type;
ins_crop.m_dayOld=daysOld;
//set from info table
ins_crop.GROWTHSTAGE_DURATION=manager.cropsInfoTable[# INFO_COLUMN_GROWTHSTAGE_DURATION,ins_crop.m_cropType];
ins_crop.HARVEST_NAME=manager.cropsInfoTable[# INFO_COLUMN_HARVEST_NAME,ins_crop.m_cropType];

crop_renewByDayold(ins_crop);

return ins_crop;