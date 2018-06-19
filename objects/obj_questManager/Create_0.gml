#macro QUEST_DATA_INDEX_NAME 0
#macro QUEST_DATA_INDEX_DESCRIPTION 0

enum QuestType{
	DELIVERY,
	GATHERING
}


var array_questData=[
	[
		"背包问题",
		"获得第一个物品"
	],

	
];

grid_questData=createGridBy_ArrayOfArray(array_questData);