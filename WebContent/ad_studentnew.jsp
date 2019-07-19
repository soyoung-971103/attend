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
								<li class="breadcrumb-item active">학생 정보</li>
							</ol>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="row">
				
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
						<div class="card mb-3">
							<div class="card-header mycolor3" style="padding:10px">
								<h3><i class="fa fa-table"></i> 학생 입력</h3>
							</div>
								
							<div class="card-body" style="padding:10px">

								<form method="get" action="student-register.do" enctype="multipart/form-data">

								<table class="table table-bordered mytable-centermiddle" style="width:100%;">
									<tr>
										<td class="mycolor2" style="vertical-align:middle;width:60px">상태</td>
										<td>
											<div class="form-inline">
												<select name="state" class="form-control form-control-sm" style="width:80px">
													<option value="재학" selected>재학</option>
													<option value="휴학">휴학</option>
													<option value="자퇴">자퇴</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">학과</td>
										<td>
											<div class="form-inline">
												<select name="depart_id" class="form-control form-control-sm">
													<option value='0' selected></option>
													<option value='1'>컴퓨터소프트에어학과</option>
													<option value='2'>전자과</option>
													<option value='3'>영어과</option>
													<option value='4'>교무처</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">학년/반</td>
										<td>
											<div class="form-inline">
												<select name="grade" class="form-control form-control-sm" style="width:80px">
													<option value='1'>1학년</option>
													<option value='2'>2학년</option>
													<option value='3'>3학년</option>
												</select>
												&nbsp;
												<select name="student_class" class="form-control form-control-sm" style="width:80px">
													<option value="A">A 반</option>
													<option value="B">B 반</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">학번</td>
										<td>
											<div class="form-inline">
												<input type="text" name="schoolno" value="" class="form-control form-control-sm" required>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">이름</td>
										<td>
											<div class="form-inline">
												<input type="text" name="name" value="" class="form-control form-control-sm" required>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">핸드폰</td>
										<td>
											<div class="form-inline">
												<input type="text" name="phone1" size="3" maxlength="3" value="010" class="form-control form-control-sm">-
												<input type="text" name="phone2" size="4" maxlength="4" value=""	class="form-control form-control-sm">-
												<input type="text" name="phone3" size="4" maxlength="4" value="" class="form-control form-control-sm">
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">성별</td>
										<td>
											<div class="form-inline">
												<input type="radio" name="sex" value="0" checked> &nbsp; 남자 &nbsp;&nbsp;
												<input type="radio" name="sex" value="1"> &nbsp; 여자
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">E-Mail</td>
										<td>
											<input type="text" name="email" value="" class="form-control form-control-sm">
										</td>
									</tr>
									<tr>
										<td class="mycolor2">암호</td>
										<td>
											<div class="form-inline">
												<input type="text" name="pwd" value="" class="form-control form-control-sm">
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">생일</td>
										<td>
											<div class="form-inline">
												<input type="text" name="birthday1" size="3" maxlength="4" value="" class="form-control form-control-sm">-
												<input type="text" name="birthday2" size="4" maxlength="2" value=""	class="form-control form-control-sm">-
												<input type="text" name="birthday3" size="4" maxlength="2" value="" class="form-control form-control-sm">
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">사진</td>
										<td style="text-align:left">
											<div class="form-inline mymargin5">
												<input type="file" name="pic" value="" class="form-control form-control-sm">
											</div>
											<img src="pic/st/hgd.bmp" class="img-thumbnail" width="120" height="160" border="1">
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
<%@ include file="main_bottom.jsp" %>