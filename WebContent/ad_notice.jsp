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
								<div class="row">
									<div class="col" align="left">
										<h3><i class="fa fa-table"></i> 공지사항 </h3>
									</div>
									<div class="col" align="right">
										<h3></h3>
									</div>
								</div>
							</div>
							<div class="card-body" style="padding:10px">

								<script>
									function find_text()
									{
										if (!form1.text1.value)
											form1.action="/member/lists/page";
										else
											form1.action="/member/lists/text1/" + form1.text1.value+"/page";
										form1.submit();
									}
								</script>
								<form method="post" action="notice-list.do">
								<div class="row" style="margin-bottom:5px">
									<div class="col-auto" align="left">
										<div class="form-inline">
											<div class="input-group input-group-sm">
												<div class="input-group-prepend">
													<span class="input-group-text">제목</span>
												</div>
												<input type="text" name="text1" size="10" value="" class="form-control" 
													onKeydown="if (event.keyCode == 13) { find_text(); }" >
												<div class="input-group-append">
													<button class="btn btn-sm mycolor1" type="button" onClick="find_text();">검색</button>
												</div>
											</div>
										</div>
									</div>
									<div class="col" align="right">
										<a href="ad_noticenew.jsp" class="btn btn-sm mycolor1">추가</a>
									</div>
								</div>
								</form>

								<table class="table table-bordered mytable" style="width:100%;">
									<tr class="mycolor1">
										<td>날짜</td>
										<td>제목</td>
										<td width="95"></td>
									</tr>
									<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
									<c:forEach var="dto" items="${ noticelist }">
									<tr>
										<td>${dto. id }</td>
										<td>${ dto.writeday }</td>
										<td style="text-align:left">${ dto.title }</td>
										<td>
											<a href="notice-update.do" class="btn btn-xs btn-outline-primary">수정</a>
											<a href="notice-delete.do?id=${ dto.id }" class="btn btn-xs btn-outline-danger" onClick="return confirm('삭제할까요 ?');">삭제</a>
										</td>
									</tr>
									</c:forEach>
								</table>

								<nav>
									<ul class="pagination pagination-sm justify-content-center">
										<li class="page-item"><a class="page-link" href="#">◀</a></li>
										<li class="page-item"><a class="page-link" href="#">◁</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item active"><span class="page-link" style="background-color:steelblue">4</span></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" href="#">6</a></li>
										<li class="page-item"><a class="page-link" href="#">▷</a></li>
										<li class="page-item"><a class="page-link" href="#">▶</a></li>
									</ul>
								</nav>

							</div>		<!-- card body end -->
						</div>		<!-- card end -->
					</div>
						
				</div>	<!-- row end -->


<!------------------------------------------------------------------------------>
<!-- 내용 끝 -->
<!------------------------------------------------------------------------------>
<%@ include file="main_bottom.jsp" %>