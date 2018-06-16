///@arg itemType
var itemType=argument0;

var ins_item=instance_create_depth(global.thisPlayer.x,global.thisPlayer.y,LAYER_INSTANCE,obj_item);
ins_item.m_itemType=itemType;
item_setSpriteByType(ins_item);


var moveDir=irandom_range(0,359);
var len=UNIT;
ins_item.m_isDropMoving=true;
ins_item.m_moveTarget_x+=lengthdir_x(len,moveDir);
ins_item.m_moveTarget_y+=lengthdir_y(len,moveDir);


return ins_item;