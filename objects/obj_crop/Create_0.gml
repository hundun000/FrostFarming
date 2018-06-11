FRAME_WIDTH=32;
FRAME_HEIGHT=64;
ALARM_INDEX_SPARKLE=1;

//------- unnecessary  init -----------
m_cropType=noone;
growthStage=-1;
HARVEST_NAME=noone;
GROWTHSTAGE_DURATION=-1;



//------- effective  init -----------
MAX_GRAWTHSTAGE=sprite_get_width(spr_crops)/FRAME_WIDTH-1;

m_dayOld=0;


isHarvestable=false;
isSparkle=false;
sparkleFrame=-1;
