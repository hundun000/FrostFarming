///@arg string
var str=argument0;

var charPerLine=23;

var length=string_length(str);
var ans=string_copy(str,1,length);
var numLine=length div charPerLine;
var i;
for(i=0;i<numLine;i++){
	var nextLinePosition=(i+1)*(charPerLine+1);
	ans=string_insert("\n",ans,nextLinePosition);
}

return ans;