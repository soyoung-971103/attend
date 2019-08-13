<!-------------------------------------------------------------------------------->
<!-- 프로그램 : 인덕대학교 컴퓨터소프트웨어학과 전자출석 Demo                              -->
<!--                                                                                                                  -->
<!-- 소속 : 인덕대학교  컴퓨터소프트웨어학과  창업동아리 겜지기                              -->
<!-- 교수 : 윤형태 (2019.5 -        )                                                                         -->
<!-- 학생 : 유소영(3), 김해리(3), 이민호(2), 김진혁(2)                                              -->
<!-------------------------------------------------------------------------------->	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>인덕대학교 전자출석 Demo (겜지기)</title>

	<link rel="shortcut icon" href="my/images/favicon.ico">

	<!-- css 선언부 ---------------------------------------------------------------->
	<link href="my/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="my/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="my/css/style.css" rel="stylesheet" type="text/css" />		

	<link href="my/css/my.css" rel="stylesheet" type="text/css">
		
</head>

<body class="adminbody">

<div id="main">

	<%@ include file="main_menu.jsp" %>

    <div class="content-page">
	    <div class="content">
			<div class="container-fluid">
<!------------------------------------------------------------------------------>
<!-- 내용 시작 -->
<!------------------------------------------------------------------------------>
				<div class="row">
					<div class="col-xl-12">
						<div class="breadcrumb-holder">
							<h1 class="main-title float-left">컴퓨터소프트웨어학과</h1>
							<ol class="breadcrumb float-right">
								<li class="breadcrumb-item">Home</li>
								<li class="breadcrumb-item active">수강신청</li>
							</ol>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<!--- My JS  --------------------------------------------------->
				<script>
				
				$(function(){
					$("#save_button").click(function(){ //지정한 아이디의 버튼 클릭하면시작
						var nodes=document.getElementById("mylecture_list").childNodes;
						for(i=0;i<nodes.length;i++)
						{
							var node=nodes[i].childNodes;
							for(j=0;j<node.length;j++)
							{
								var idname=node[j].id;
								if (idname != undefined && idname.indexOf("rowno")==0)
								{
									$.ajax({
										url:"lecture-save.do",
										type:"POST 또는 GET",
										data:{
										 "데이터 이름":값,
										 "데이터 이름":값,
										},
										
									});
									alert(idname+" "+idname.substr(5));
								}
							}
						}						
					});
				});
		
				
				
					// 강의번호, 학과명, 학년, 반, 전공일반/교양, 선택/필수, 과목코드, 과목명, 학점, 시간, 교수님, 수강구분
					function add_mylecture(lec0,lec1,lec2,lec3,lec4,lec5,lec6,lec7,lec8,lec9,lec10,lec11)
					{
						if ($("#rowno"+lec0).length!=0) { alert("동일과목이 있습니다."); return; }
						$("#mylecture_list").append("<tr id='rowno"+lec0+"'><td>"+lec1+"</td><td>"+lec2+"</td><td>"+lec3+"</td><td>"+lec4+"</td><td>"+lec5+"</td><td>"+lec6+"</td><td>"+lec7+"</td><td>"+lec8+"</td><td>"+lec9+"</td><td>"+lec10+"</td><td>"+lec11+"</td><td><a href='javascript:del_mylecture(\""+lec0+"\");' class='btn btn-xs btn-outline-danger'>삭제</a></td></tr>");
					}

					function del_mylecture(lec0)
					{
						$("#rowno"+lec0).remove();
					}

					function save_mylecture()
					{
						var nodes=document.getElementById("mylecture_list").childNodes;
						for(i=0;i<nodes.length;i++)
						{
							var node=nodes[i].childNodes;
							for(j=0;j<node.length;j++)
							{
								var idname=node[j].id;
								if (idname != undefined && idname.indexOf("rowno")==0)
								{
									alert(idname+" "+idname.substr(5));
								}
							}
						}
					}

					function filter_lecture(kind)
					{
						var nodes=document.getElementById("lecture_list").childNodes;
						for(i=0;i<nodes.length;i++)
						{
							var node=nodes[i].childNodes;
							for(j=0;j<node.length;j++)
							{
								var idname=node[j].id;
								if (idname != undefined && idname.indexOf("row1")==0)
								{										
									str=idname.split("^");
									if (str[1]==kind)
									{
										document.getElementById(idname).style.display="table-row";
										document.getElementById(idname).style.visibility="visible";										
									}
									else
									{
										document.getElementById(idname).style.display="none";
										document.getElementById(idname).style.visibility="hidden";
									}
								}
							}
						}
					}
					

				</script>

				<div class="row">
				
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
						<div class="card mb-3">
							<div class="card-header mycolor3" style="padding:10px">
								<div class="row">
									<div class="col" align="left">
										<h3><i class="fa fa-table"></i> 수강신청</h3>
									</div>
								</div>
							</div>

							<div class="card-body" style="padding:10px">

								<div class="row" style="margin-bottom:10px">
									<div class="col-auto" align="left">
										<h6>&nbsp;<font color="gray">2019년 1학기</font></h6>
									</div>
									<div class="col" align="right">
										<h6>&nbsp;<font color="gray">201912001 홍길동</font>&nbsp;</h6>
									</div>
								</div>

								<form name="form1" action="" method="post">
								<div class="row">
									<div class="col" align="left">
										<div class="form-inline">
											<div class="input-group input-group-sm">
												<div class="input-group-prepend">
													&nbsp;<span class="input-group-text">교과목</span>
												</div>
												&nbsp;
												<input type="button" class="btn btn-sm btn-primary" value="1학년" onclick="filter_lecture(1);">&nbsp;
												<input type="button" class="btn btn-sm btn-primary" value="2학년" onclick="filter_lecture(2);">&nbsp;
												<input type="button" class="btn btn-sm btn-primary" value="3학년" onclick="filter_lecture(3);">&nbsp;
												<input type="button" class="btn btn-sm btn-primary" value="교양" onclick="filter_lecture(0);">&nbsp;
											</div>
										</div>
									</div>
								</div>
								</form>
								<%@ page import="java.util.*,model.BuildingDTO" %>
								<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
								<div style="width:100%; height:300px; overflow:auto">	<!-- 세로스크롤바 -->
									<table id="lecture_list" class="table table-bordered table-hover mytable" style="width:100%">
									<thead>
										<tr class="mycolor1">
											<th>학과</th>
											<th>학년</th>
											<th>반</th>
											<th>전공</th>
											<th>필수</th>
											<th>과목코드</th>
											<th>과목명</th>
											<th>학점</th>
											<th>시간</th>
											<th>담당교수</th>
											<th width="110">신청</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="lecture" items="${list}">
											<tr id="row1^${lecture.subject.grade }">
												<td>${lecture.subject.depart.name }</td>
												<td>${lecture.subject.grade }</td>
												<td>${lecture.lecture_class }</td>
												<td>${lecture.subject.ismajor }</td>
												<td>${lecture.subject.ischoice }</td>
												<td>${lecture.subject.code }</td>
												<td>${lecture.subject.name }</td>
												<td>${lecture.subject.ipoint }</td>
												<td>${lecture.subject.ihour }</td>
												<td>${lecture.teacher.name }</td>
												<td>
													<a href="javascript:add_mylecture('1','컴소과','2','A','전공','선택','CS1','PHP','3','4','교수님1','정상')" class="btn btn-xs btn-outline-primary">정상</a>
													<a href="javascript:add_mylecture('1','컴소과','2','A','전공','선택','CS1','PHP','3','4','교수님1','재수강')" class="btn btn-xs btn-outline-warning">재수강</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									</table>
								</div>
								<br>


								<div class="row">
									<div class="col" align="left">
										<h5 style="color:gray"><i class="fa fa-table"></i> 신청과목 </h5>
									</div>
									<div class="col" align="right">
										<button class="btn btn-sm btn-primary" type="button" onClick="save_mylecture();" id="save_button">신청과목 저장</button>
									</div>
								</div>
								<table id="mylecture_list" class="table table-bordered table-responsive-sm mytable mb-0" style="width:100%;padding:0px">
									<tr class="mycolor1">
										<td>학과</td>
										<td>학년</td>
										<td>반</td>
										<td>전공</td>
										<td>필수</td>
										<td>과목코드</td>
										<td>과목명</td>
										<td>학점</td>
										<td>시간</td>
										<td>교수님</td>
										<td>구분</td>
										<td width="60"></td>
									</tr>
									<tr id="rowno1">
										<td>컴소과</td>
										<td>2</td>
										<td>A</td>
										<td>전공</td>
										<td>선택</td>
										<td>CS1</td>
										<td>PHP</td>
										<td>3</td>
										<td>4</td>
										<td>교수님1</td>
										<td>정상</td>
										<td>
											<a href="javascript:del_mylecture('1');" class="btn btn-xs btn-outline-danger">삭제</a>
										</td>
									</tr>
									<tr id="rowno2">
										<td>컴소과</td>
										<td>2</td>
										<td>B</td>
										<td>전공</td>
										<td>선택</td>
										<td>CS1</td>
										<td>PHP</td>
										<td>3</td>
										<td>4</td>
										<td>교수님1</td>
										<td>재수강</td>
										<td>
											<a href="javascript:del_mylecture('2');" class="btn btn-xs btn-outline-danger">삭제</a>
										</td>
									</tr>
								</table>

							</div>		<!-- card body end -->
						</div>		<!-- card end -->
					</div>
						
				</div>	<!-- row end -->
<!------------------------------------------------------------------------------>
<!-- 내용 끝 -->
<!------------------------------------------------------------------------------>
			</div>
		</div>
	</div>

	<!-- 하단 정보 -->
	<footer class="footer">
		<span class="text-right">	Copyright <a target="_blank" href="#">Induk University</a></span>
		<span class="float-right">Programmed by <a target="_blank" href="#"><b>Gamejigi</b></a></span>
	</footer>

</div>

<!-- js 선언부 ----------------------------------------------------------------->
<script src="my/js/my.js"></script>

<script src="my/js/jquery.min.js"></script>
<script src="my/js/moment.min.js"></script>

<script src="my/js/popper.min.js"></script>
<script src="my/js/bootstrap.min.js"></script>

<script src="my/js/detect.js"></script>
<script src="my/js/fastclick.js"></script>
<script src="my/js/jquery.blockUI.js"></script>
<script src="my/js/jquery.nicescroll.js"></script>

<script src="my/js/pikeadmin.js"></script>

</body>
</html>