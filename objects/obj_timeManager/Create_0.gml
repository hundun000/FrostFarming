m_sumMinute=0;
timeMinute=-1;
timeHour=-1;

skyDarkness=0;
MAX_DARKNESS=0.8;
skyColor=c_black
c_night=merge_color(c_black,c_navy,0.3);

enum SeasonType{
	SPRING,
	SUMMER,
	AUTUMN,
	WINTER
}

enum DayPhaseThreshold{
	SUNRISE=6,
	DAY_START=8,
	SUNSET=18,
	NIGHT_START=20
}
m_day=1;
m_year=1;
m_season=SeasonType.SPRING;

TIME_SPEED=5; //game second per frame 

GUI_WIDTH=display_get_gui_width();
GUI_HEIGHT=display_get_gui_height();

NUM_DAY_PER_SEASON=28;

isInsideHouse=false;

m_isTimeGoes=true;