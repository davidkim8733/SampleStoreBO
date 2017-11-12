/**
 * common-ui.js 
 * 
 */

function setPaging(totalCount, countPage, curPage, pageGroupSize) {
			
	//pagination list setting.
	var pageNum = 0;
	var totalIndex = totalCount % countPage; //3
	
	if (totalIndex == 0) {
		totalIndex = parseInt(totalCount/countPage);
	} else {
		totalIndex = parseInt(totalCount/countPage) + 1;
	}
	
	var startIndex = parseInt(curPage / pageGroupSize);
	if (curPage % pageGroupSize == 0) {
		startIndex = parseInt(curPage / pageGroupSize) - 1;
	}
	
	if (curPage > pageGroupSize) {
		
		var prePageIndex;
		if(curPage % pageGroupSize == 0) {
			
			prePageIndex = curPage - pageGroupSize;
		} else {
			
			prePageIndex = curPage - curPage % pageGroupSize;
		}
		
		$("#pagination").append("<li><a href='javascript:search(" + prePageIndex +")' aria-label='Previous' ><span aria-hidden='true'>&laquo;</span></a></li>");
		
	} else {
		$("#pagination").append("<li><span aria-hidden='true'>&laquo;</span></li>");
	}
	
	
	for (var i = startIndex * countPage + 1; i < (startIndex + 1) * countPage + 1; i++) {
		
		pageNum = i;
		if(curPage == pageNum){

			$("#pagination").append("<li class='active'><a href='javascript:search(" + pageNum + ")'>" + pageNum +"</a></li>");
		} else {
			
			$("#pagination").append("<li><a href='javascript:search(" + pageNum + ")'>" + pageNum +"</a></li>");
		}
		
		if (pageNum == totalIndex) {
			break;
		}
		
		
	}
	
	if (totalIndex > (startIndex + 1) * countPage) {
	
		$("#pagination").append("<li><a href='javascript:search(" + (startIndex + 1) * Number(countPage) + 1 + ")' aria-label='Next' ><span aria-hidden='true'>&raquo;</span></a></li>");
		
	} else {
		$("#pagination").append("<li><span aria-hidden='true'>&raquo;</span></li>");
	}
	
}