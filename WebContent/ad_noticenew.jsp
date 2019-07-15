<!-------------------------------------------------------------------------------->	
<!-- 프로그램 : 인덕대학교 컴퓨터소프트웨어학과 전자출석 Demo                              -->
<!--                                                                                                                  -->
<!-- 소속 : 인덕대학교  컴퓨터소프트웨어학과  창업동아리 겜지기                              -->
<!-- 교수 : 윤형태 (2019.5 -        )                                                                         -->
<!-- 학생 : 유소영(3), 김해리(3), 이민호(2), 김진혁(2)                                              -->
<!-------------------------------------------------------------------------------->	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="main_top.jsp" %>
				<div class="row">
					<div class="col-xl-12">
						<div class="breadcrumb-holder">
							<h1 class="main-title float-left">교무처</h1>
							<ol class="breadcrumb float-right">
								<li class="breadcrumb-item">Home</li>
								<li class="breadcrumb-item">직원</li>
								<li class="breadcrumb-item active">공지사항</li>
							</ol>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="row">
				
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
						<div class="card mb-3">
							<div class="card-header mycolor3" style="padding:10px">
								<h3><i class="fa fa-table"></i> 공지사항 입력</h3>
							</div>
								
							<div class="card-body" style="padding:10px">

								<form action="notice-register.do" method="post" enctype="multipart/form-data">

								<table class="table table-bordered mytable-centermiddle" style="width:100%;">
									<tr>
										<td class="mycolor2">날짜</td>
										<td>
											<div class="form-inline">
												<input type="text" name="writeday" type="date" size="10" class="form-control form-control-sm" readonly>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">제목</td>
										<td>
											<input type="text" name="title" class="form-control form-control-sm" required>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">내용</td>
										<td>
											<textarea type="text" rows="10" name="txt1" class="form-control form-control-sm"></textarea>
										</td>
									</tr>
								</table>

								<div align="center">
									<input type="submit" value="저장" class="btn btn-sm mycolor1">&nbsp;
									<input type="button" value="이전화면" class="btn btn-sm mycolor1" onclick="history.back();">
								</div>

								</form>

							</div>		<!-- card body end -->
						</div>		<!-- card end -->
					</div>
						
				</div>	<!-- row end -->
<!------------------------------------------------------------------------------>
<!-- 내용 끝 -->
<!------------------------------------------------------------------------------>
<%@ include file="main_bottom.jsp" %>