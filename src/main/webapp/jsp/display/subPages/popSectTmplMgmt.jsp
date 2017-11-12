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
		<h4 class="modal-title">섹션템플릿관리</h4>
	</div>
	<!-- body -->
	<div class="modal-body">

		<form id="saveForm" class="form-horizontal">
			
			
			<input type="hidden" id="conrTmplIdxNo"/>
			<input type="hidden" id="popCurPage" />
			<div class="form-group">
				<label class="col-sm-2 control-label">섹션템플릿번호</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputSectTmplNo" name="sectTmplNo" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">섹션템플릿명</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputSectTmplNm" name="sectTmplNm">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">파일경로</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputSectTmplFilePathNm" name="sectTmplFilePathNm" placeholder="ex) /index/">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">파일명</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputSectTmplFileNm" name="sectTmplFileNm" placeholder="ex) index.jsp">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">섹션템플릿구분</label>
				<div class="col-sm-10">
					<select id="selectSectTmplTpCd" name="sectTmplTpCd" class="form-control">
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
					<select id="selectUseYn" name="useYn" class="form-control">
						<option>Y</option>
						<option>N</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">섹션템플릿설명</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="sectTmplDesc"></textarea>
				</div>
			</div>
			
			
			<hr class="one">
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					
					<button id="addConrTmplBtn" type="button" class="btn btn-warning">코너템플릿추가</button>
				</div>
			</div>
			
			<hr class="one">
		
		
		
		
		
		
		
		
		
		
			<div id="conrTmplFormGrp"></div>
			<!--  
			<div id="conrTmplForm" class="panel panel-default">
				<div class="panel-heading">
					<a>
					<label id="conrTmplLabel" class="col-6 control-label vertical-align-bottom">코너템플릿대상</label>
					</a>
				</div>
				<div class="panel-body" id="collapse">
					<ul class="list-group">
						<li class="list-group-item"><label class="control-label">코너템플릿명</label>
							<div class="col-10">
								<input type="hidden" class="form-control" name="dispSectTmplDto.dispConrTmplDto.conrTmplNo">
								<input type="text" class="form-control" name="dispSectTmplDto.dispConrTmplDto.conrTmplNm">
							</div>
						</li>
						<li class="list-group-item"><label class="control-label">사용여부</label>
							<div class="col-10">
								<select name="dispSectTmplDto.dispConrTmplDto.useYn" class="form-control">
									<option>사용</option>
									<option>사용안함</option>
								</select>
							</div>
						</li>
						<li class="list-group-item"><label class="control-label">코너템플릿설명</label>
							<div class="col-10">
								<textarea name="dispSectTmplDto.dispConrTmplDto.conrTmplDesc" class="form-control" rows="2"></textarea>
							</div>
						</li>
						<li class="list-group-item">
							<div class="form-group">
								<div class="col-sm-6">
									<label class="col-6 control-label">코너템플릿대상</label>
								</div>
								<div class="col-sm-offset-4 text-right">
									<button id="addConrTmplTrgtAddBtn" type="button" class="btn sm btn-warning btn-sm">추가</button>
									<button id="deleteConrTmplTrgtBtn" type="button" class="btn sm btn-warning btn-sm">삭제</button>&nbsp;&nbsp;&nbsp;
								</div>
							</div>
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="text-center" style="width: 5%">#</th>
										<th class="text-center" style="width: 40%">대상이름</th>
										<th class="text-center" style="width: 20%">컨텐츠유형</th>
										<th class="text-center" style="width: 15%">사용여부</th>
										<th class="text-center" style="width: 15%">최대수량</th>
									</tr>
								</thead>
								<tbody>
									<tr class="odd gradeX">
										<td class="text-center">
											<input type="checkbox" name="dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNo">
											<input type="hidden" name="dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplNo"">
										</td>
										<td class="text-center"><input type="text" class="form-control" name="dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNm"></td>
										<td class="text-center">
											<select id="selectSectTmplTpCd" name="dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrContsTpCd" class="form-control">
												<option value="Y">사용</option>
												<option value="N">사용안함</option>
											</select>
										</td>
										<td class="text-center">
											<select id="selectSectTmplTpCd" name="dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.useYn" class="form-control">
												<option value="Y">사용</option>
												<option value="N">사용안함</option>
											</select>
										</td>
										<td class="text-center"><input type="text" class="form-control" width="20px" name="dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNm"></td>
									</tr>
								</tbody>
							</table>
						</li>
					</ul>
				</div>
			</div>
			 -->
			
			
			
			
			
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10 text-right">
					<button id="savePopBtn" type="button" class="btn btn-warning">저장</button>
				</div>
			</div>
			
		
		</form>
	</div>
	<!-- Footer -->
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	</div>

	<script>
		

		
		$("#addConrTmplBtn").click(function() {
				
			var conrTmplIdxNo = $("#conrTmplIdxNo").val();
			
			if (conrTmplIdxNo == "" || conrTmplIdxNo == null) {
				conrTmplIdxNo = 0;
			} else {
				conrTmplIdxNo++;
			}
			
			console.log(conrTmplIdxNo);
			
			$("#conrTmplIdxNo").val(conrTmplIdxNo);
			
			var conrTmplHtml = "";
			conrTmplHtml += "<div id='conrTmplForm' class='panel panel-default'>																																			";
			conrTmplHtml += "	<div class='panel-heading'>																																									";
			conrTmplHtml += "		<a>																																														";
			conrTmplHtml += "		<label id='conrTmplLabel' class='col-6 control-label vertical-align-bottom'>코너템플릿대상</label>																							";
			conrTmplHtml += "		</a>																																													";
			conrTmplHtml += "	</div>																																														";
			conrTmplHtml += "	<div class='panel-body' id='collapse'>																																						";	
			conrTmplHtml += "		<ul class='list-group'>																																									";
			conrTmplHtml += "			<li class='list-group-item'><label class='control-label'>코너템플릿명</label>																											";	
			conrTmplHtml += "				<div class='col-10'>																																							";
			conrTmplHtml += "					<input type='hidden' class='form-control' name='dispConrTmplDto.conrTmplNo' value='" + conrTmplIdxNo + "'>																				";
			conrTmplHtml += "					<input type='text' class='form-control' name='dispConrTmplDto.conrTmplNm'>																					";
			conrTmplHtml += "				</div>																																											";
			conrTmplHtml += "			</li>																																												";
			conrTmplHtml += "			<li class='list-group-item'><label class='control-label'>사용여부</label>																												";
			conrTmplHtml += "				<div class='col-10'>																																							";
			conrTmplHtml += "					<select name='dispConrTmplDto.useYn' class='form-control'>																									";
			conrTmplHtml += "						<option>사용</option>																																						";
			conrTmplHtml += "						<option>사용안함</option>																																					";
			conrTmplHtml += "					</select>																																									";
			conrTmplHtml += "				</div>																																											";
			conrTmplHtml += "			</li>																																												";	
			conrTmplHtml += "			<li class='list-group-item'><label class='control-label'>코너템플릿설명</label>																											";
			conrTmplHtml += "				<div class='col-10'>																																							";
			conrTmplHtml += "					<textarea name='dispConrTmplDto.conrTmplDesc' class='form-control' rows='2'></textarea>																		";
			conrTmplHtml += "				</div>																																											";
			conrTmplHtml += "			</li>																																												";
			conrTmplHtml += "			<li class='list-group-item'>																																						";
			conrTmplHtml += "				<div class='form-group'>																																						";
			conrTmplHtml += "					<div class='col-sm-6'>																																						";
			conrTmplHtml += "						<label class='col-6 control-label'>코너템플릿대상</label>																													";
			conrTmplHtml += "					</div>																																										";
			conrTmplHtml += "					<div class='col-sm-offset-4 text-right'>																																	";		
			conrTmplHtml += "						<button id='addConrTmplTrgtAddBtn' type='button' class='btn sm btn-warning btn-sm'>추가</button>																			";	
			conrTmplHtml += "						<button id='deleteConrTmplTrgtBtn' type='button' class='btn sm btn-warning btn-sm'>삭제</button>&nbsp;&nbsp;&nbsp;														";
			conrTmplHtml += "					</div>																																										";
			conrTmplHtml += "				</div>																																											";
			conrTmplHtml += "				<table class='table table-striped table-bordered table-hover'>																													";
			conrTmplHtml += "					<thead>																																										";
			conrTmplHtml += "						<tr>																																									";
			conrTmplHtml += "							<th class='text-center' style='width: 5%'>#</th>																													";
			conrTmplHtml += "							<th class='text-center' style='width: 40%'>대상이름</th>																												";		
			conrTmplHtml += "							<th class='text-center' style='width: 20%'>컨텐츠유형</th>																												";			
			conrTmplHtml += "							<th class='text-center' style='width: 15%'>사용여부</th>																												";
			conrTmplHtml += "							<th class='text-center' style='width: 15%'>최대수량</th>																												";
			conrTmplHtml += "						</tr>																																									";
			conrTmplHtml += "					</thead>																																									";
			conrTmplHtml += "					<tbody>																																										";
			conrTmplHtml += "						<tr class='odd gradeX'>																																					";
			conrTmplHtml += "							<td class='text-center'>																																			";
			conrTmplHtml += "								<input type='checkbox' name='dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNo'>																";
			conrTmplHtml += "								<input type='hidden' name='dispConrTmplDto.dispConrTmplTrgtDto.conrTmplNo'>																		";
			conrTmplHtml += "							</td>																																								";
			conrTmplHtml += "							<td class='text-center'><input type='text' class='form-control' name='dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNm'></td>						";	
			conrTmplHtml += "							<td class='text-center'>																																			";
			conrTmplHtml += "								<select id='selectSectTmplTpCd' name='dispConrTmplDto.dispConrTmplTrgtDto.conrContsTpCd' class='form-control'>									";
			conrTmplHtml += "									<option value='Y'>사용</option>																																";
			conrTmplHtml += "									<option value='N'>사용안함</option>																															";
			conrTmplHtml += "								</select>																																						";
			conrTmplHtml += "							</td>																																								";
			conrTmplHtml += "							<td class='text-center'>																																			";
			conrTmplHtml += "								<select id='selectSectTmplTpCd' name='dispConrTmplDto.dispConrTmplTrgtDto.useYn' class='form-control'>											";
			conrTmplHtml += "									<option value='Y'>사용</option>																																";
			conrTmplHtml += "									<option value='N'>사용안함</option>																															";
			conrTmplHtml += "								</select>																																						";
			conrTmplHtml += "							</td>																																								";
			conrTmplHtml += "							<td class='text-center'><input type='text' class='form-control' width='20px' name='dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNm'></td>		";
			conrTmplHtml += "						</tr>																																									";
			conrTmplHtml += "					</tbody>																																									";
			conrTmplHtml += "				</table>																																										";
			conrTmplHtml += "			</li>																																												";
			conrTmplHtml += "		</ul>																																													";
			conrTmplHtml += "	</div>																																														";
			conrTmplHtml += "</div>																																															";
			conrTmplHtml += "<hr class='one'>																																												";
			
			
			$("#conrTmplFormGrp").prepend(conrTmplHtml);
			
		});
		
		
		//코너템플릿 div toogle
		$(document).on("click", "label#conrTmplLabel", function(){
				
				$(this).parent().parent().parent().children(".panel-body").collapse("toggle");
			}	
		);
				
		
		//코너템플릿대상 삭제
		$(document).on("click", "button#deleteConrTmplTrgtBtn", function(){
		
		
				var obj = $(this).parents("li").children("table").children("tbody").children("tr").find("input[type='checkbox']");
				var checkedCnt = obj.size();
				
				for (var i=0; i < checkedCnt; i++) {
					
					if(obj.eq(i).is(":checked")){
						obj.eq(i).parent().parent().remove();
					}		
				}
			}
		);
		
		//코너템플릿대상 추가	
		
		$(document).on("click", "button#addConrTmplTrgtAddBtn", function(){
				
				var conrTmplNo = $(this).parents("ul").children("div").find("input[type='hidden']").val();
				
				console.log("conrTmplNo  :  " + conrTmplNo);
				
				conrTmplTrgtHtml = "";
				conrTmplTrgtHtml += "						<tr class='odd gradeX'>																																					";
				conrTmplTrgtHtml += "							<td class='text-center'>																																			";
				conrTmplTrgtHtml += "								<input type='checkbox' name='dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNo'>																";
				conrTmplTrgtHtml += "								<input type='hidden' name='dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplNo'>																		";
				conrTmplTrgtHtml += "							</td>																																								";
				conrTmplTrgtHtml += "							<td class='text-center'><input type='text' class='form-control' name='dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNm'></td>						";	
				conrTmplTrgtHtml += "							<td class='text-center'>																																			";
				conrTmplTrgtHtml += "								<select id='selectSectTmplTpCd' name='dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrContsTpCd' class='form-control'>									";
				conrTmplTrgtHtml += "									<option value='Y'>사용</option>																																";
				conrTmplTrgtHtml += "									<option value='N'>사용안함</option>																															";
				conrTmplTrgtHtml += "								</select>																																						";
				conrTmplTrgtHtml += "							</td>																																								";
				conrTmplTrgtHtml += "							<td class='text-center'>																																			";
				conrTmplTrgtHtml += "								<select id='selectSectTmplTpCd' name='dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.useYn' class='form-control'>											";
				conrTmplTrgtHtml += "									<option value='Y'>사용</option>																																";
				conrTmplTrgtHtml += "									<option value='N'>사용안함</option>																															";
				conrTmplTrgtHtml += "								</select>																																						";
				conrTmplTrgtHtml += "							</td>																																								";
				conrTmplTrgtHtml += "							<td class='text-center'><input type='text' class='form-control' width='20px' name='dispSectTmplDto.dispConrTmplDto.dispConrTmplTrgtDto.conrTmplTrgtNm'></td>		";
				conrTmplTrgtHtml += "						</tr>																																									";

				console.log(conrTmplTrgtHtml);
				$(this).parents("li").children("table").children("tbody").prepend(conrTmplTrgtHtml);
				
				
			}
		
		);
		
		
		jQuery.fn.serializeObject = function() {
			  var arrayData, objectData;
			  arrayData = this.serializeArray();
			  objectData = {};

			  $.each(arrayData, function() {
			    var value;

			    if (this.value != null) {
			      value = this.value;
			    } else {
			      value = '';
			    }

			    if (objectData[this.name] != null) {
			      if (!objectData[this.name].push) {
			        objectData[this.name] = [objectData[this.name]];
			      }

			      objectData[this.name].push(value);
			    } else {
			      objectData[this.name] = value;
			    }
			  });

			  return objectData;
			};
		
		
		$("#savePopBtn").click(
				
				
				
				
			function() {
				
				var dispSectTmplDto = JSON.stringify($('#saveForm').serializeObject());
				
				console.log(dispSectTmplDto);
				
				$.ajax({
					
					contentType : "application/json;charset=UTF-8",
					method : "POST",
					url : "/BO/display/setSectionTmplInfo.odn",
					dataType : "json",
					data : dispSectTmplDto,
					cache : false,
					traditional : true,
					success : function(data) {
						console.log(data)

						if (data.procRsltCd != '200') {
							alert("등록에 실패하였습니다.");
							return;
						}
						;

						if ($("#saveForm input[name=inputSectTmplNo]")
								.val() == "") {

							alert("등록 되었습니다.");
							search('1');
						} else {
							alert("수정 되었습니다.");
							history.go(0);
						}

						$("#modalDialog").modal("hide");
					},
					error : function(request, status, error) {
						console.log("code:" + request.status + "\n"
								+ "message:" + request.responseText + "\n"
								+ "error:" + error);
					}
				});
	
				
			}
		
		);
		
		$("#addConrTmplBtn11").click(
				function() {

					var tmplNo = $('#inputSectTmplNo').val();
					var tmplNm = $('#inputSectTmplNm').val();
					var tmplFilePathNm = $('#inputSectTmplFilePathNm').val();
					var tmplFileNm = $('#inputSectTmplFileNm').val();
					var useYn = $('#selectUseYn').val();
					var tmplTpCd = $('#selectSectTmplTpCd').val();

					if (tmplNm == null || tmplNm == "") {

						alert("섹션템플릿명은 필수 값입니다.");
						$('#inputSectTmplNm').focus();
						return false;
					}

					if (tmplFilePathNm == null || tmplFilePathNm == "") {

						alert("섹션템플릿파일경로명은 필수 값입니다.");
						$('#inputSectTmplFilePathNm').focus();
						return false;
					}

					if (tmplFileNm == null || tmplFileNm == "") {

						alert("섹션템플릿파일경로명은 필수 값입니다.");
						$('#inputSectTmplFileNm').focus();
						return false;
					}

					if (tmplTpCd == null || tmplTpCd == "") {

						alert("섹션템플릿 유형 구분값은 반드시 선택 하셔야 합니다.");
						$('#selectSectTmplTpCd').focus();
						return false;
					}

					var param = $('#saveForm').serialize();

					$.ajax({
						type : 'post',
						url : '/BO/display/saveTemplateInfo.odn',
						dataType : 'json',
						data : param,
						cache : false,
						traditional : true,
						success : function(data) {
							console.log(data)

							if (data.procRsltCd != '200') {
								alert("등록에 실패하였습니다.");
								return;
							}
							;

							if ($("#saveForm input[name=inputSectTmplNo]")
									.val() == "") {

								alert("등록 되었습니다.");
								search('1');
							} else {
								alert("수정 되었습니다.");
								history.go(0);
							}

							$("#modalDialog").modal("hide");
						},
						error : function(request, status, error) {
							console.log("code:" + request.status + "\n"
									+ "message:" + request.responseText + "\n"
									+ "error:" + error);
						}
					});

				});
	</script>

</body>
</html>