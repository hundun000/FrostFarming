///@arg itemType
///@arg itemNumchange
var itemType=argument0;
var itemNumchange=argument1;

var itemName=global.thisGame.itemManager.grid_itemInfo[# ITEM_INFO_COLUMN_NAME,itemType];

//get ins_notification
var ins_notification;
if(instance_exists(obj_notification))
	ins_notification=instance_find(obj_notification,0);
else
	ins_notification=instance_create_layer(0,0,LAYER_INSTANCE,obj_notification);


//get targetRow
var targetRow=-1;
if(ins_notification.grid_notificationContent==noone){
	ins_notification.grid_notificationContent=ds_grid_create(NUM_COLUMN_NOTIFICATION_CONTENT,1);
	targetRow=0;
}
else{
	var height=ds_grid_height(ins_notification.grid_notificationContent);
	for(var i=0;i<height;i++)
		if(ins_notification.grid_notificationContent[# NOTIFICATION_CONTENT_COLUMN_NAME,i]==itemName){
			targetRow=i;
			break;
		}
	
	if(targetRow==-1){
		ds_grid_resize(ins_notification.grid_notificationContent,NUM_COLUMN_NOTIFICATION_CONTENT,++height);
		targetRow=height-1;
	}
}

//init notification content
ins_notification.grid_notificationContent[# NOTIFICATION_CONTENT_COLUMN_NAME,targetRow]=itemName;
ins_notification.grid_notificationContent[# NOTIFICATION_CONTENT_COLUMN_NUM_CHANGE,targetRow]+=itemNumchange;
//reset fade away
ins_notification.alpha=1;
ins_notification.alarm[0]=GAME_FPS*1.5;