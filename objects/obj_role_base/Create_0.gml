/// @description Insert description here
// You can write your code in this editor
WALK_SPEED=1;
NORMAL_SPEED=2;
RUN_SPEED=3;
DEFAULT_SPEED=WALK_SPEED;

m_speed=DEFAULT_SPEED;

m_x_frame=1;
m_y_frame=2;

MAX_X_FRAME=8;
FRAME_SIZE=64;

var i=0;
ROLE_SPRITE_PART[i++]=noone;
ROLE_SPRITE_PART[i++]=noone;
ROLE_SPRITE_PART[i++]=noone;
ROLE_SPRITE_PART[i++]=noone;
ROLE_SPRITE_PART[i++]=noone;
ANI_SPEED=16;

X_OFFSET=sprite_get_xoffset(sprite_index);
Y_OFFSET=sprite_get_yoffset(sprite_index);

move_x=0;
move_y=0;

m_facing=DirectionType.DOWN;