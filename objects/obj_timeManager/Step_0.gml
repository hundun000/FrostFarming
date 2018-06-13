if(keyboard_check_pressed(ord("T"))) m_isTimeGoes=!m_isTimeGoes;
if(!m_isTimeGoes) exit;
	
m_sumMinute+=TIME_SPEED;
timeMinute=m_sumMinute mod 60;
timeHour=m_sumMinute div 60;


#region set sky darkness and color
if(!isInsideHouse){
	var skyDarks,skyColors;
	var timeStart,timeEnd;
	
	
	if(timeHour>DayPhaseThreshold.SUNRISE&&timeHour<=DayPhaseThreshold.DAY_START){
		timeStart=DayPhaseThreshold.SUNRISE;
		timeEnd=DayPhaseThreshold.DAY_START;
		skyDarks=[MAX_DARKNESS,0.2];
		skyColors=[c_night,c_orange];
	}
	else if(timeHour>DayPhaseThreshold.DAY_START&&timeHour<=DayPhaseThreshold.SUNSET){
		timeStart=DayPhaseThreshold.DAY_START;
		timeEnd=DayPhaseThreshold.SUNSET;
		skyDarks=[0.2,0,0,0,0.2];
		skyColors=[c_orange,c_orange,c_white,c_orange,c_orange];
	}
	else if(timeHour>DayPhaseThreshold.SUNSET&&timeHour<=DayPhaseThreshold.NIGHT_START){
		timeStart=DayPhaseThreshold.SUNSET;
		timeEnd=DayPhaseThreshold.NIGHT_START;
		skyDarks=[0.2,MAX_DARKNESS];
		skyColors=[c_orange,c_navy ,c_night];
	}
	else{
		timeStart=DayPhaseThreshold.NIGHT_START;
		timeEnd=DayPhaseThreshold.SUNRISE+24;//new day
		skyDarks=[MAX_DARKNESS];
		skyColors=[c_night];
	}
	
	var phaseRate=((timeHour-timeStart+24) mod 24)/(timeEnd-timeStart);
	
	var colorIndex=phaseRate*(array_length_1d(skyColors)-1);
	skyColor=merge_color(skyColors[floor(colorIndex)],skyColors[ceil(colorIndex)],colorIndex-floor(colorIndex));
	
	var darkIndex=phaseRate*(array_length_1d(skyDarks)-1);
	skyDarkness=merge_number(skyDarks[floor(darkIndex)],skyDarks[ceil(darkIndex)],darkIndex-floor(darkIndex));
	
	
}
#endregion


#region one day pass
if(timeHour==24){
	m_sumMinute=0;
	m_day++;
	
	//month pass
	if(m_day>NUM_DAY_PER_SEASON){
		m_day=1;
		
		switch(m_season){
			case SeasonType.SPRING:
				m_season=SeasonType.SUMMER;
				break;
			case SeasonType.SUMMER:
				m_season=SeasonType.AUTUMN;
				break;
			case SeasonType.AUTUMN:
				m_season=SeasonType.WINTER;
				break;
			case SeasonType.WINTER:
				m_season=SeasonType.SPRING;
				m_year++;
				break;
		}
	}
	
	//crps grow
	if(room==rm_farm){
		with(obj_crop){
			crop_grow(self.id,1);
		}		
	}
	else{
		if(global.thisGame.cropsManager.cropsDataStorage[# 0,0]!=noone){
			var numCrop=ds_grid_height(global.thisGame.cropsManager.cropsDataStorage);
			for(var i=0;i<numCrop;i++){
				crop_datastruct_grow(i,1);
			}
		}
	}
	
	
	
	
}
#endregion



