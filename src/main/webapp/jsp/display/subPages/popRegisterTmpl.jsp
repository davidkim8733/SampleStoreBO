<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
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
	<!-- header -->
	<div class="modal-header">
		<!-- 닫기(x) 버튼 -->
		<button type="button" class="close" data-dismiss="modal">×</button>
		<!-- header title -->
		<h4 class="modal-title">템플릿관리</h4>
	</div>
	<!-- body -->
	<div class="modal-body">
		
		<form id="saveForm" class="form-horizontal" >
		  
		  <input type = "hidden" id="popCurPage"/>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">템플릿번호</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="inputTmplNo" name="inputTmplNo" disabled>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">템플릿명</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="inputTmplNm" name="inputTmplNm">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">파일경로</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="inputTmplFilePathNm" name="inputTmplFilePathNm" placeholder="ex) /index/">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">파일명</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="inputTmplFileNm" name="inputTmplFileNm" placeholder="ex) index.jsp">
		    </div>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2 control-label">템플릿구분</label> 
				<div class="col-sm-10">
					<select id="selectTmplTpCd" name="selectTmplTpCd" class="form-control" >
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
			<label class="col-sm-2 control-label">사용여부</label> 
				<div class="col-sm-10">
					<select id="selectUseYn" name="selectUseYn" class="form-control" >
					<option>Y</option>
					<option>N</option>
				</select>
				</div>
			</div>
	
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10 text-right">
		      <button id="savePopBtn" type="button" class="btn btn-warning" >저 장 하 기</button>
		    </div>
		  </div>
		</form>
	</div>
	<!-- Footer -->
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	</div>

	<script>
	
	
		$(document).ready(function(){
			
			if ("${dispTmplDto}" != null) {

				//alert("${dispTmplDto.tmplNo}");	
				$("#inputTmplNo").val("${dispTmplDto.tmplNo}");
				$("#inputTmplNm").val("${dispTmplDto.tmplNm}");
				$("#inputTmplFilePathNm").val("${dispTmplDto.tmplFilePathNm}");
				$("#inputTmplFileNm").val("${dispTmplDto.tmplFileNm}");
				$("#selectUseYn").val("${dispTmplDto.useYn}");
				$("#selectTmplTpCd").val("${dispTmplDto.tmplTpCd}");
				
			}
		});
	
		$("#savePopBtn").click(function() {
			
			 
			var tmplNo = $('#inputTmplNo').val();
			var tmplNm = $('#inputTmplNm').val();
			var tmplFilePathNm = $('#inputTmplFilePathNm').val();
			var tmplFileNm = $('#inputTmplFileNm').val();
			var useYn = $('#selectUseYn').val();
			var tmplTpCd = $('#selectTmplTpCd').val();
			
		
			
			if(tmplNm == null || tmplNm == "") {
				
				alert("템플릿명은 필수 값입니다.");
				$('#inputTmplNm').focus();
				return false;
			}
			
			if(tmplFilePathNm == null  || tmplFilePathNm == "") {
				
				alert("템플릿파일경로명은 필수 값입니다.");
				$('#inputTmplFilePathNm').focus();
				return false;
			}
			
			if(tmplFileNm == null  || tmplFileNm == "") {
				
				alert("템플릿파일경로명은 필수 값입니다.");
				$('#inputTmplFileNm').focus();
				return false;
			}
			
			if(tmplTpCd == null  || tmplTpCd == "") {
				
				alert("템플릿 유형 구분값은 반드시 선택 하셔야 합니다.");
				$('#selectTmplTpCd').focus();
				return false;
			}
			
			
			var param = $('#saveForm').serialize();
			
			$.ajax({
				type	 	: 'post',
				url		 	: '/BO/display/saveTemplateInfo.odn',
				dataType 	: 'json',
				data	 	: param,
				cache	 	: false,
				traditional	: true,
				success	 	: function(data){
 					console.log(data)
					
					if (data.procRsltCd != '200') {
						alert("등록에 실패하였습니다.");
						return;
					};
					
					if ($("#saveForm input[name=inputTmplNo]").val() == "") {
						
						alert("등록 되었습니다.");
						search('1');
					}else {
						alert("수정 되었습니다.");
						history.go(0);
					}
					
					$("#modalDialog").modal("hide");
				},
				error	 : function(request, status, error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
	
			
			
		});
	
	</script>

</body>
</html>