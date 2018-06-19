//draw self
var height=ds_grid_height(grid_notificationContent);

draw_set_font(fnt_notification);

var space=string_height("I");

for(var i=0;i<height;i++){
	var numChangeSign;
	if(grid_notificationContent[# NOTIFICATION_CONTENT_COLUMN_NUM_CHANGE,i]>0)
		numChangeSign="+";
	else
		numChangeSign="-";
	var text=numChangeSign
			 +grid_notificationContent[# NOTIFICATION_CONTENT_COLUMN_NAME,i]+" x"
			 +string(abs(grid_notificationContent[# NOTIFICATION_CONTENT_COLUMN_NUM_CHANGE,i]));
	draw_text_color(100,GAME_HEIGHT+(i-height-1)*space,text,c_black,c_black,c_black,c_black,alpha);
}

//fade away
if(isFadeAway){
	alpha-=0.1;
	if(alpha==0) 
		instance_destroy();
}
