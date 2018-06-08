var x_draw=x-X_OFFSET;
var y_draw=y-Y_OFFSET;

if(m_x_frame+(ANI_SPEED/GAME_FPS)<MAX_X_FRAME)
	m_x_frame+=ANI_SPEED/GAME_FPS;
else
	m_x_frame=0;

#macro Y_FRAME_MOVE_UP 8
#macro Y_FRAME_MOVE_LEFT 9
#macro Y_FRAME_MOVE_DOWN 10
#macro Y_FRAME_MOVE_RIGHT 11	
#macro NUM_ROLE_SPRITE_PART	5

renewRoleFrameByFacing(id);

draw_sprite(spr_role_shadow,0,x,y);
var i;
for(i=0;i<NUM_ROLE_SPRITE_PART;i++)
	if(ROLE_SPRITE_PART[i]!=noone)
		draw_sprite_part(ROLE_SPRITE_PART[i],0,floor(m_x_frame)*FRAME_SIZE,floor(m_y_frame)*FRAME_SIZE,FRAME_SIZE,FRAME_SIZE,x_draw,y_draw);

draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
