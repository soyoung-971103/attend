<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.*, java.sql.*, java.io.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="common.jsp" %>
<%@ include file="main_top.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!------------------------------------------------------------------------------>
<!-- 내용 시작 -->
<!------------------------------------------------------------------------------>
				<div class="row">
					<div class="col-xl-12">
						<div class="breadcrumb-holder">
							<h1 class="main-title float-left">교무처</h1>
							<ol class="breadcrumb float-right">
								<li class="breadcrumb-item">Home</li>
								<li class="breadcrumb-item">직원</li>
								<li class="breadcrumb-item active">교수</li>
							</ol>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="row">

					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
						<div class="card mb-3">
							<div class="card-header mycolor3" style="padding:10px">
								<h3><i class="fa fa-table"></i> 조교 입력</h3>
							</div>

							<div class="card-body" style="padding:10px">

								<form name="form1" method="get" action="AssistUpdate" enctype="multipart/form-data"">
								
								<table class="table table-bordered mytable-centermiddle" style="width:100%;">
									<tr>
										<td class="mycolor2" style="width:70px">학과</td>
										<td>
											<div class="form-inline">
												<select name="depart_id" class="form-control form-control-sm">
													<option value="1">1</option>
													<%/*
														for(int i = 0; i < DepKindsN; i++)
														{
															if(depart_id.equals(Integer.toString(i)))
																out.println("<option value='"+i+"' selected>"+DepKinds[i]+"</option>");
															else
																out.println("<option value='"+i+"'>"+DepKinds[i]+"</option>");
														}*/
													%>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">아이디</td>
										<td>
											<div class="form-inline">
												<input type="text" name="uid" value="${member.getUid()}" class="form-control form-control-sm" required>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">암호</td>
										<td>
											<div class="form-inline">
												<input type="text" name="pwd" value="${member.getPwd() }" class="form-control form-control-sm" required>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">이름</td>
										<td>
											<div class="form-inline">
												<input type="text" name="name" value="${member.getName()}" class="form-control form-control-sm" required>
											</div>
										</td>
									</tr>
									<tr>
	
											<td class="mycolor2">전화</td>
											<td>
												<div class="form-inline">
													<input type="text" name="tel1" size="3" value="${fn:trim(fn:substring(member.tel,0,3))}" class="form-control form-control-sm" style="width:55px">-
													<input type="text" name="tel2" size="4" value="${fn:trim(fn:substring(member.tel,3,7))}"	class="form-control form-control-sm" style="width:55px">-
													<input type="text" name="tel3" size="4" value="${fn:trim(fn:substring(member.tel,7,11))}" class="form-control form-control-sm" style="width:55px">
												</div>
											</td>
										</tr>
										<tr>
											<td class="mycolor2">핸드폰</td>
											<td>
												<div class="form-inline">
													<input type="text" name="phone1" size="3" value="${fn:trim(fn:substring(member.phone,0,3))}" class="form-control form-control-sm" style="width:55px">-
													<input type="text" name="phone2" size="4" value="${fn:trim(fn:substring(member.phone,3,7))}"	class="form-control form-control-sm" style="width:55px">-
													<input type="text" name="phone3" size="4" value="${fn:trim(fn:substring(member.phone,7,11))}" class="form-control form-control-sm" style="width:55px">
												</div>
											</td>
										</tr>
										<tr>
											<td class="mycolor2">E-Mail</td>
											<td>
												<input type="text" name="email" value="${member.getEmail()}" class="form-control form-control-sm">
											</td>
									</tr>
									<tr>
										<td class="mycolor2">사진</td>
										<td style="text-align:left">
											<div class="form-inline mymargin5" >
												<input type="file" name="pic" value="${member.getPic() }" class="form-control form-control-sm">
											</div>
											<img src="pic/te/hgd.bmp" class="img-thumbnail" width="120" height="150" border="1">
										</td>
									</tr>
								</table>
								<div align="center">
									<input type="submit" value="수정" class="btn btn-sm mycolor1">&nbsp;
									<input type="button" value="이전화면" class="btn btn-sm mycolor1" onclick="history.back();">
								</div>
								<input type="hidden" name="id" value="${member.id}">
								</form>


							</div>		<!-- card body end -->
						</div>		<!-- card end -->
					</div>

				</div>	<!-- row end -->
<!------------------------------------------------------------------------------>
<!-- 내용 끝 -->
<!------------------------------------------------------------------------------>
<%@ include file="main_bottom.jsp" %>
