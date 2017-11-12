<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>​


<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
<script src="../js/common-ui.js" type="text/javascript"></script>
<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="../vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="../vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">

			<c:import url="/jsp/common/TOP.jsp"></c:import>
			<c:import url="/jsp/common/LNB.jsp"></c:import>
		</nav>
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">섹션템플릿관리</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">

					<div class="panel panel-default">
						<div class="panel-heading">
													
							<form id="searchForm" class="form-inline" method="POST" action="/BO/display/getSectionTemplateList.odn">
									
									<input type="hidden" name="curPage" id="curPage" value=""/>
									<input type="hidden" name="countPage" id="countPage" value=""/>
									<input type="hidden" name="totalCount" id="totalCount" value=""/>
									
									
									<div class="form-group text-left">
										<div class="form-group">
											<label>섹션템플릿번호 : </label> 
											<input type="text" class="form-control" id="sectTmplNo" name="sectTmplNo">
											
										</div>
										<div class="form-group">
											<label>섹션템플릿명 : </label> 
											<input type="text" class="form-control" id="sectTmplNm" name="sectTmplNm">
										</div>
								
										<label>사용여부 : </label>
										<select id="useYn" class="form-control" name="useYn" >
											<option value="">전체</option>
											<option value="Y">Y</option>
											<option value="N">N</option>
										</select>
										<label>섹션템플릿구분 : </label>
										<select id="sectTmplTpCd" class="form-control" name="sectTmplTpCd">
											<option value="">전체</option>
											<option value="01">01</option>
											<option value="02">02</option>
										</select> 
									</div>
									<div class="form-group pull-right">
										<button id="searchBtn" type="submit"
											class="btn btn-primary btn-sm" value="submit">
											검    색
										</button>
										&nbsp;
										<button id="regBtn" type="button"
											class="btn btn-warning btn-sm" value="button">
											등    록
										</button>
										&nbsp;
										<button id="delBtn" type="button"
											class="btn btn-danger btn-sm" value="button">
											삭    제
										</button>
									</div>
									<span class="clearfix"></span>
		
							</form>
							
					
						</div>


						<!-- /.panel-heading -->
						<div class="panel-body">
							<table 
								class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
										<th class="text-center">#</th>
										<th class="text-center">섹션템플릿번호</th>
										<th class="text-center">연결템플릿</th>
										<th class="text-center">섹션템플릿명</th>
										<th class="text-center">섹션템플릿구분</th>
										<th class="text-center">섹션템플릿파일</th>
										<th class="text-center">사용여부</th>
										<th class="text-center">등록자</th>
										<th class="text-center">등록일시</th>
										<th class="text-center">수정자</th>
										<th class="text-center">수정일시</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${not empty dispSectTmplDtoList}">
	
										<c:forEach var="dispSectTmplDtoList" items="${dispSectTmplDtoList}">
									
											<tr class="odd gradeX">
									
												<td><input type="checkbox" id="chksectTmplNo" value="${dispSectTmplDtoList.sectTmplNo}"></td>
												<td class="text-center"><a href='javascript:viewDtl(${dispSectTmplDtoList.sectTmplNo})'>${dispSectTmplDtoList.sectTmplNo}</a></td>
												<td class="text-center"><a href='javascript:viewDtl(${dispSectTmplDtoList.sectTmplNo})'>${dispSectTmplDtoList.sectTmplNo}</a></td>
												<td class="text-center">${dispSectTmplDtoList.sectTmplNm}</td>
												<td class="text-center">${dispSectTmplDtoList.sectTmplTpCd}</td>
												<td class="text-center">${dispSectTmplDtoList.sectTmplFile}</td>
												<td class="text-center">${dispSectTmplDtoList.useYn}</td>
												<td class="text-center">${dispSectTmplDtoList.sysRegUsrNm}</td>
												<td class="text-center"><fmt:formatDate value="${dispSectTmplDtoList.sysRegDt}" pattern="yyyy-MM-dd  HH:mm:ss"/></td>
												<td class="text-center">${dispSectTmplDtoList.sysModUsrNm}</td>
												<td class="text-center"><fmt:formatDate value="${dispSectTmplDtoList.sysModDt}" pattern="yyyy-MM-dd  HH:mm:ss"/></td> 
												
											</tr>	
										</c:forEach>
									
									</c:if>
								
									
								</tbody>
							</table>
							
							<div class="form-inline">
								<div class="form-group pull-left">
									<nav>
									  <ul class="pagination" id="pagination">
										
									  </ul>
									</nav>
								</div>
								
								<div class="form-group pull-right">
									
									조회수 : 
									<select id="selectedCountPage" name="selectedCountPage" class="form-control">
									  <option value="10">10</option>
									  <option value="20">20</option>
									  <option value="30">30</option>
									  <option value="40">40</option>
									  <option value="50">50</option>
									</select>
								</div>
							</div>
					
						</div>
						<!-- /.panel-body -->
						
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<div id="modalDialog" class="modal fade">
	  <div class="modal-dialog">
	    <div id ="modalContent" class="modal-content">
	   		    
	   	</div>
	  </div>
	</div>
	


	<!-- jQuery 
	<script src="../vendor/jquery/jquery.min.js"></script>
	-->
	<!-- Bootstrap Core JavaScript -->
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../vendor/metisMenu/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="../vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="../vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="../vendor/datatables-responsive/dataTables.responsive.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js"></script>


	<script>
		
		// 화면 로딩 시점
		$(document).ready(function(){
			
			
			var conrTmplTrgtHtml;
		
			// 화면구성을 위한 기초데이터 pagination포함 셋팅.
			if("${paramDispSectTmplDto.pagingDto.curPage}" == null || "${paramDispSectTmplDto.pagingDto.curPage}" == "") {
				
				$("#curPage").val("1");
			} else {

				$("#curPage").val("${paramDispSectTmplDto.pagingDto.curPage}");	
			}
			
			
			if("${paramDispSectTmplDto.pagingDto.countPage}" == null || "${paramDispSectTmplDto.pagingDto.countPage}" == "") {
				
				$("#countPage").val("10");
				$("#selectedCountPage").val("10");
			} else {

				$("#countPage").val("${paramDispSectTmplDto.pagingDto.countPage}");
				$("#selectedCountPage").val("${paramDispSectTmplDto.pagingDto.countPage}");
			}		
			
			// req Dto 에서 전시 조건들 셋팅. 
			$("#sectTmplNo").val("${paramDispSectTmplDto.sectTmplNo}");
			$("#sectTmplNm").val("${paramDispSectTmplDto.sectTmplNm}");
			
			if("${paramDispSectTmplDto.useYn}" != null || "${paramDispSectTmplDto.useYn}" != "") {
				
				$("#useYn option:eq(0)").attr("selected", "selected");
			} else {	
				$("#useYn").val("${paramDispSectTmplDto.useYn}");
			}
			
			if("${paramDispSectTmplDto.sectTmplTpCd}" == null || "${paramDispSectTmplDto.sectTmplTpCd}" == "") {
				
				$("#sectTmplTpCd option:eq(0)").attr("selected", "selected");
			} else {
				$("#sectTmplTpCd").val("${paramDispSectTmplDto.sectTmplTpCd}");		
			}
			
			var totalCount = "${paramDispSectTmplDto.pagingDto.totalCount}"; // 6
			var countPage = $("#countPage").val(); //10
			var curPage = $("#curPage").val(); //13
			var pageGroupSize = 10;
			
			// Paging 영역 그리기.
			setPaging(totalCount, countPage, curPage, pageGroupSize); 
		
		}); // document로드
	
		
		// 조회수가 변경되면 from의 hidden값을 변경 한다. 
		$("#selectedCountPage").change(function(){
			
			$("#countPage").val($("#selectedCountPage").val());
		});
		

		// Paging 번호 클릭 시, 검색 결과와 form submit.		
		function search(pageNo) {
		

			$("#curPage").val(pageNo);
			$("#countPage").val($("#selectedCountPage").val());
			$("#searchForm").submit();
		}
		
		
		// 등록 레에이 팝업.
		$("#regBtn").click(function() {
			
			$("#modalContent").load("/BO/display/sectTmplMgmtViewDetail.odn");
			
			$("#modalDialog").modal("show");
			
		}); 

		// 상세보기 레이어팝
		function viewDtl(trgtNo) {
			
			$("#modalContent").load("/BO/display/sectTmplMgmtViewDetail.odn?sectTmplNo=" + trgtNo);
			
			$("#modalDialog").modal("show");
			
			
		}

		// 삭제	
		$("#delBtn").click(function() {
			
			var arrsectTmplNo = Array();
			var cnt = 0;
			var chkBox = $("input:checkbox[id^='chksectTmplNo']:checked");
			
			for(i=0 ; i<chkBox.length;i++) {
			    
				arrsectTmplNo[cnt] = chkBox[ i].value;
				console.log(arrsectTmplNo[cnt]);
				cnt++;	
		    
			}
			
			if (confirm("정말 삭제하시겠습니까??") == true){				
				
				var arrData = {'arrSectTmplNo' : arrSectTmplNo};
			
				
				$.ajax({
					type	 	: 'post',
					url		 	: '/BO/display/deleteTmpl.odn',
					dataType 	: 'json',
					data	 	: arrData,
					cache	 	: false,
					traditional	: true,
					success	 	: function(data){
	 					console.log(data)
						
						if (data.procRsltCd != '200') {
							alert("삭제에 실패하였습니다.");
							return;
						} else {
							
							alert("삭제 되었습니다.");
							history.go(0);
						
						} 
							
					},
					error	 : function(request, status, error){
						console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});	
				
			}else{   
			    
				return;
			}

		}); // 삭제
		
		
	</script>




</body>

</html>
