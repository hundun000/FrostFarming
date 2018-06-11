///@argument0 row_of_grid
///@argument1 day_of_grow

var row=argument0;
var day=argument1;
var gird=global.thisGame.cropsManager.cropsDataStorage;

if(day>=0){//day==0 as renew
	gird[# CROPS_STORAGE_COLUMN_DAYS_OLD,row]+=day;
}