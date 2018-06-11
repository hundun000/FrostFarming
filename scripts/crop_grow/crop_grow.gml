///@argument0 ins_crop
///@argument1 day_of_grow

var ins_crop=argument0;
var day=argument1;

if(day>=0){//day==0 as renew
	ins_crop.m_dayOld+=day;
	ins_crop.growthStage=ins_crop.m_dayOld div ins_crop.GROWTHSTAGE_DURATION;
	if(ins_crop.growthStage>=ins_crop.MAX_GRAWTHSTAGE){
		ins_crop.growthStage=ins_crop.MAX_GRAWTHSTAGE;
		ins_crop.isHarvestable=true;
		ins_crop.alarm[ins_crop.ALARM_INDEX_SPARKLE]=1;
	}
}