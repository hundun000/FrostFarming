m_sumMinute=0;
timeMinute=-1;
timeHour=-1;

darkness=0;
MIN_DARKNESS=0.8;
DARKNESS_COLOR=c_black

enum SeasonType{
	SPRING,
	SUMMER,
	AUTUMN,
	WINTER
}
m_day=1;
m_year=1;
m_season=SeasonType.SPRING;

TIME_SPEED=2; //game second per frame 

GUI_WIDTH=display_get_gui_width();
GUI_HEIGHT=display_get_gui_height();

NUM_DAY_PER_SEASON=28;

isInsideHouse=false;

m_isTimeGoes=true;