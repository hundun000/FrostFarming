//------ input ----------
input_up=keyboard_check(vk_up);
input_down=keyboard_check(vk_down);
input_left=keyboard_check(vk_left);
input_right=keyboard_check(vk_right);
input_walk=keyboard_check(vk_shift);
input_run=keyboard_check(vk_space);

move_x=0;
move_y=0;

// Inherit the parent event
event_inherited();

//Objects
var ins_transition=instance_place(x,y,obj_tansition);
if(ins_transition!=noone&&m_facing==ins_transition.FACING_BRFORE&&global.thisGame.tansitionAlpha<0){
	global.thisGame.spawnRoom=ins_transition.TARGET_ROOM;	
	global.thisGame.spawnX=ins_transition.TARGET_X;
	global.thisGame.spawnY=ins_transition.TARGET_Y;
	global.thisGame.spawnFacing=ins_transition.FACING_AFTER;
	global.thisGame.tansitionAlpha=0;
}
