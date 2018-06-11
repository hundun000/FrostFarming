///@arg x
///@arg y
///@arg cropType
///@arg daysOld
var gridX=argument0;
var gridY=argument1;
var type=argument2;
var daysOld=argument3;

return creatCropByPos((gridX+0.5)*UNIT,(gridY+0.5)*UNIT,type,daysOld);