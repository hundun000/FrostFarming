///@arg array2D
var array2D=argument0;

var height=array_length_1d(array2D);
var maxWidth=0;

for(var i=0;i<height;i++){
	var questDataArray=array2D[i];
	var curWidth=array_length_1d(questDataArray);
	if(curWidth>maxWidth)
		maxWidth=curWidth;
}

var ansGrid=ds_grid_create(maxWidth,height);

for(var i=0;i<height;i++){
	var questDataArray=array2D[i];
	var curWidth=array_length_1d(questDataArray);
	for(var j=0;j<curWidth;j++){
		ansGrid[# j,i]=questDataArray[j];
	}
}

return ansGrid;