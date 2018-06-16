//override
event_inherited();
m_isCollision=false;

//------- unnecessary  init -----------
m_itemType=noone;
x_of_sprite=-1;
y_of_sprite=-1;


//------- effective  init -----------
X_DRAW_OFFSET=UNIT/2;
Y_DRAW_OFFSET=UNIT*0.75;
SCALE=0.75;

m_isDropMoving=false;
m_moveTarget_x=x;
m_moveTarget_y=y;