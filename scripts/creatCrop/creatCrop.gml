///@arg x
///@arg y
///@arg cropType
var creatX=argument0;//input is grid center
var creaty=argument1;
var type=argument2;
var manager=global.thisGame.cropsManager;


if(!canPlantNewCrop(creatX,creaty))
	return noone;



show_debug_message("Plant in soil.");

var ins_crop=instance_create_layer(creatX,creaty,LAYER_INSTANCE_PICKABLE,obj_crop);
manager.gridOfSoil[# creatX div UNIT,creaty div UNIT]=ins_crop;

ins_crop.m_cropType=type;
ins_crop.GRAWTHSTAGE_DURATION=manager.cropsInfoTable[# ins_crop.m_cropType,INFO_COLUMN_GRAWTHSTAGE_DURATION];
ins_crop.HARVEST_NAME=manager.cropsInfoTable[# ins_crop.m_cropType,INFO_COLUMN_HARVEST_NAME];

return ins_crop;