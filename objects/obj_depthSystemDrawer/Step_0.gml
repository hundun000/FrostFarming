m_numInstance=instance_number(absObj_depth_collisionable);

ds_grid_resize(m_grid_depthOfInstance,GRID_DEPTH_WIDTH,m_numInstance);

for(var i=0;i<m_numInstance;i++){
	var ins_obj=instance_find(absObj_depth_collisionable,i);
	m_grid_depthOfInstance[# DEPTH_COLUMN_INSTANCE_ID,i]=ins_obj.id;
	m_grid_depthOfInstance[# DEPTH_COLUMN_INSTANCE_DEPTH,i]=ins_obj.y;
}

ds_grid_sort(m_grid_depthOfInstance,DEPTH_COLUMN_INSTANCE_DEPTH,true);
