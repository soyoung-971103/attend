<%@ page contentType="text/html;charset=utf-8" %>
<%@ include file="main_top.jsp" %>
<!------------------------------------------------------------------------------>
<!-- ë´ì© ìì -->
<!------------------------------------------------------------------------------>
				<div class="row">
					<div class="col-xl-12">
						<div class="breadcrumb-holder">
							<h1 class="main-title float-left">교무처</h1>
							<ol class="breadcrumb float-right">
								<li class="breadcrumb-item">Home</li>
								<li class="breadcrumb-item">직원</li>
								<li class="breadcrumb-item active">조교</li>
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

								<form name="form1" method="get" action="AssistInsert" enctype="multipart/form-data"">

								<table class="table table-bordered mytable-centermiddle" style="width:100%;">
									<tr>
										<td class="mycolor2" style="vertical-align:middle;width:60px">학과</td>
										<td>
											<div class="form-inline">
												<select name="depart_id" class="form-control form-control-sm">
													<option value="0" selected></option>
													<option value='1'>컴퓨터소프트에어학과</option>
													<option value='2'>전자과</option>
													<option value='3'>영어과</option>
													<option value='99'>교양과</option>
													<option value='999'>교무처</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">아이디</td>
										<td>
											<div class="form-inline">
												<input type="text" name="uid" value="" class="form-control form-control-sm" required>
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">암호</td>
										<td>
											<div class="form-inline">
												<input type="text" name="pwd" value="" class="form-control form-control-sm" required>
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
										<td class="mycolor2">전화</td>
										<td>
											<div class="form-inline">
												<input type="text" name="tel1" size="3" value="010" class="form-control form-control-sm" style="width:50px">-
												<input type="text" name="tel2" size="4" value=""	class="form-control form-control-sm" style="width:50px">-
												<input type="text" name="tel3" size="4" value="" class="form-control form-control-sm" style="width:50px">
											</div>
										</td>
									</tr>
									<tr>
										<td class="mycolor2">핸드폰</td>
										<td>
											<div class="form-inline">
												<input type="text" name="phone1" size="3" value="010" class="form-control form-control-sm" style="width:50px">-
												<input type="text" name="phone2" size="4" value=""	class="form-control form-control-sm" style="width:50px">-
												<input type="text" name="phone3" size="4" value="" class="form-control form-control-sm" style="width:50px">
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
										<td class="mycolor2">사진</td>
										<td style="text-align:left">
											<div class="form-inline mymargin5">
												<input type="file" name="pic" value="" class="form-control form-control-sm">
											</div>
											<img src="pic/as/hgd.bmp" class="img-thumbnail" width="120" height="150" border="1">
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
<!-- ë´ì© ë -->
<!------------------------------------------------------------------------------>
<%@ include file="main_bottom.jsp" %>