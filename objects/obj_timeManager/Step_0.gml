if(keyboard_check_pressed(ord("T"))) m_isTimeGoes=!m_isTimeGoes;
if(!m_isTimeGoes) exit;
	
m_sumMinute+=TIME_SPEED;
timeMinute=m_sumMinute mod 60;
timeHour=m_sumMinute div 60;

//----------- day pass -------------
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

darkness=MIN_DARKNESS*(abs(timeHour-12)/12);

