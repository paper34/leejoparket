<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>이조박마켓</title>

<!-- Custom fonts for this template-->
<link href="../resources/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../resources/bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

	<script type="text/javascript" src="../resources/js/jquery-3.5.1.js"></script>
	<script type="text/javascript">
		$(function() {
		$('.detail').click(function() {
			idValue = $(this).attr('id') //id값 얻어오기
		$.ajax({
		    url:"admin_reportajax.do",
		    data: {
		       user_id: idValue
		    },
		    success: function(result) {
		    	$("#modalcontent").empty();
		       	$("#modalcontent").append(result);
		     }//detailsuccess
		  })//detailajax
		 })//detailclick
		 
		   $('.black').click(function() {
			 result = confirm('해당 아이디를 블랙하시겠습니까?');
			 var report_id = $(this).attr('id')
			 if(result == true){
			  	location.href = 'admin_user_report.do?report_id='+report_id
			  }
			  else{ 
				  return false;
			  } 
			})
			
			$('.release').click(function() {
			 result = confirm('해당 아이디를  블랙해제하시겠습니까?');
			 var report_id = $(this).attr('id')
			 if(result == true){
			  	location.href = 'admin_user_release.do?report_id='+report_id
			  }
			  else{
				  return false;
			  } 
			})
			
			
		
		})//jquery ready
	
 
	
</script> 

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/project/user/login/user_login.jsp">
				<div class="sidebar-brand-icon rotate-n-15"> <i class="fas fa-shopping-basket"></i></div>
				<div class="sidebar-brand-text mx-3">이조박 마켓</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

           <!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading"><h4 style="font-weight:bold">관리자페이지</h4></div>

			<!-- 좌측 네비 메뉴선택 중고거래 카테고리 -->
			<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> 
				<i class="fas fa-store-alt-slash"></i> <span>관리자 카테고리</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						
						<a class="collapse-item" href="admin_user.do">회원정보</a> 
						<a class="collapse-item" href="admin_bedal.do">배달내역관리</a> 
						<a class="collapse-item" href="admin_question.do">Q/A게시판관리</a> 
						<a class="collapse-item" href="admin_report.do">신고내역</a> 
						 
					</div>
				</div>
				</li>



			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

           <!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- 여기까지가 좌측 네비 -->

	<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<!-- <form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="동네이름,물품명등을 검색해보세요!" aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form> 
 -->
					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>


						<!-- 회원프로필 -->
						<!-- Nav Item - User Information -->
						
						
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">
									<p style="margin-top: 20px; font-size: 20px; font-weight: bold; color: black">admin</p>
							</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 내정보
								</a> <a class="dropdown-item" href="#"> <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 관리자
								</a>
								<!-- <div class="dropdown-divider"></div>
								<a class="dropdown-item" href="login.html">  
									<i class="glyphicon glyphicon-log-in"></i>로그인
								</a> -->
								
								
								<!-- <a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									로그아웃
								</a> -->
							</div></li>
							
													
					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- 중앙 메인컨텐츠 시작 -->
				<!-- Begin Page Content -->
				<div class="container">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">신고내역</h1>
					</div>
					
					
					

					<!-- Content Row -->
					
					<div class="row" style="height: 1000px">
						<!-- 일단 높이 1000px로 임시 잡아준거 -->
						<table class="table table-hover" style="text-align: center; border: 1px solid #dddddd">
					<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">카테고리</th>
						<th style="background-color: #eeeeee; text-align: center;">신고자</th>
						<th style="background-color: #eeeeee; text-align: center;">피신고자</th>
						<th style="background-color: #eeeeee; text-align: center;">기록일</th>
						<th style="background-color: #eeeeee; text-align: center;">처리</th>

                  </tr>
                  </thead>
                  <tbody>
				<c:forEach var="vo" items="${list}">
				 <c:choose>
					<c:when test="${vo.qa_service == '1'}">
						<c:set var="service" value="유저신고"></c:set>
					</c:when>
					<c:otherwise>
						<c:set var="service" value="문의"></c:set>
					</c:otherwise>
					</c:choose>
					<tr>
					  <td>${vo.admin_report_no}</td>
					  <td>${service}</td>
					  <td>${vo.user_id}</td>
					  <td>${vo.report_id}</td>
					  <td>${vo.qa_date}</td>
					  <td>
					  <button class="btn btn-success detail" data-toggle="modal"  href="#listModal" id="${vo.user_id}">상세</button>
					  <button class="btn btn-danger black"  id="${vo.report_id}">블랙</button>
					  <button class="btn btn-primary release" id="${vo.report_id}">해제</button>
					  </td>
                    </tr>
                 </c:forEach>   
                   
				</tbody>
				</table>
				
				
				
				<!--Modal-->
				<div class="modal fade" id="listModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
				 	<div class="modal-dialog">
				 		<div class="modal-content" id="modalcontent">
				 			<div class="modal-header">
				 					<h5 class="modal-title" id="modal">Q/A게시판관리</h5>
				 						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				 							<span aria-hidden="true">&times;</span>
				 						</button>
				 			</div>
				 				
				 		</div>
				 	</div>
				</div>
				 
				
				
				
					
					
					
				<%-- <jsp:include page="index.jsp"></jsp:include> --%>

						

					</div>
					<!-- End of Main Content -->

					<!-- Footer  하단 최종 끝-->
					<!-- <footer class="sticky-footer bg-white">
						<div class="container my-auto">
							<div class="copyright text-center my-auto">
								<span>Copyright &copy; 이조박마켓</span>
							</div>
						</div>
					</footer> -->
					<!-- End of Footer -->

				</div>
				<!-- End of Content Wrapper -->


			
			</div>
			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<!-- Logout Modal-->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="login.html">Logout</a>
						</div>
					</div>
				</div>
			</div>

			<!-- Bootstrap core JavaScript-->
			<script src="../resources/bootstrap/vendor/jquery/jquery.min.js"></script>
			<script src="../resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript -->
			<script src="../resources/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages -->
			<script src="../resources/bootstrap/js/sb-admin-2.min.js"></script>

			<!-- Page level plugins -->
			<script src="../resources/bootstrap/vendor/chart.js/Chart.min.js"></script> 

			<!-- Page level custom scripts -->
			<script src="../resources/bootstrap/js/demo/chart-area-demo.js"></script>
			<script src="../resources/bootstrap/js/demo/chart-pie-demo.js"></script> 
</body>

</html>