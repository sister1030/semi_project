<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&display=swap" rel="stylesheet">
  
  <link rel="stylesheet" href="<%=request.getContextPath()%>/main/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/main/fonts/icomoon/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/main/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/main/css/aos.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/main/css/login.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/main/css/style.css">
	
<title>Bon voyage</title>
</head>

<body style="background-color: #f8f8f8">
	<nav class="navbar navbar-expand-lg navbar-light">
	  	<div class="container">
			    <a class="navbar-brand" href="<%=request.getContextPath()%>/main/index.jsp">Bon voyage</a>
					<c:if test="${empty sessionScope.id}">     
				      	<ul class="navbar-nav ml-auto">
							<li class="nav-item">
								<a class="nav-link" href="<%=request.getContextPath()%>/loginform.m">
									<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-box-arrow-in-left" viewBox="0 0 16 16">
									  <path fill-rule="evenodd" d="M10 3.5a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-2a.5.5 0 0 1 1 0v2A1.5 1.5 0 0 1 9.5 14h-8A1.5 1.5 0 0 1 0 12.5v-9A1.5 1.5 0 0 1 1.5 2h8A1.5 1.5 0 0 1 11 3.5v2a.5.5 0 0 1-1 0v-2z"/>
									  <path fill-rule="evenodd" d="M4.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H14.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
									</svg><b>로그인</b>
								</a>
			    			</li>
			    			
						    <li class="nav-item">
								      <a class="nav-link" href="<%=request.getContextPath()%>/joinform.m">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
								  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
								</svg><b>회원가입</b>
								</a>
						    </li>
				    	</ul>
					</c:if>
				    
				    <c:if test="${!empty sessionScope.id}">     
					    <ul class="navbar-nav ml-auto">
							<li class="nav-item">
								      <a class="nav-link" href="<%=request.getContextPath()%>/Logout.m">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
								  <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
								</svg><b>&nbsp;로그아웃</b>
								</a>
						    </li>
						    <li class="nav-item">
								      <a class="nav-link" href="<%=request.getContextPath()%>/Mypage.m">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
								  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
								</svg><b>마이페이지</b>
								</a>
						    </li>
					    </ul>
				    </c:if>
			    </div>
			</nav>
			
		<div class="container">
		<br><br><h3 style="text-align: center"><b>Q&A 게시판</b></h3>
		</div>
		<br><br>
	
	<body class="text-left">
		<div class="container">
	        <div class="row gutter-v1 align-items-stretch mb-5">
	          <div class="col-12">
					<!-- <h2 class="section-title">Q&A 게시판</h2> -->
					<c:if test="${!empty sessionScope.id && sessionScope.seller eq 'normal' }"> 
				    <div class="text-right">
							<button class="btn btn-default btn-sm" type=submit
							onclick="location.href='<%=request.getContextPath()%>/Q_QnaForm.q' ">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
								  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"></path>
								  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"></path>
								</svg>&nbsp;글작성&nbsp;</button>
						</div><br>
						</c:if>
					
						<table class="table" align="center">
							<thead>
								<tr>
									<th>No</th>
									<th>제목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th>날짜</th>
								</tr>
					
<c:set var="num" value="${listcount - (page-1) * 10}" />
	<c:forEach var="b" items="${boardlist}">
	<tr>
		<td>${num}
	<c:set var="num" value="${num-1}" />
	</td>
		<td>
		<!-- 댓글 제목 앞에 여백 처리 -->
		<c:if test="${b.q_lvl > 0}">
			└&nbsp;
			<c:forEach var="i" begin="0" end="${b.q_lvl}">
			</c:forEach>
		</c:if>
				
	<a href="./Q_DetailAction.q?q_num=${b.q_num}&page=${page}">			
	${b.q_title}
	</a>	
		
	</td>
	<td>${b.id}</td>
	<td>${b.q_readcnt}</td>
	<td>
		<fmt:formatDate value="${b.q_reg}"
	pattern="yyyy-MM-dd HH:mm:ss EEE요일"/>
		</td>
	</tr>
	</c:forEach>
					</thead>
				<tbody>
			</table>
	
	<hr class="mb-4">
	
		</div>		
	</div>
</div>

<!-- 페이지 처리 -->
<c:if test="${listcount >0 }">
	<nav aria-label="Page navigation example">
	        <ul class="pagination justify-content-center">
	
	<!-- 1페이지로 이동 -->
	<li class="page-item">
	       <a class="page-link" href="./Q_ListAction.q?page=1" style="text-decoration:none" tabindex="-1" aria-disabled="true"><<</a>
	</li>
	
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${startPage > 10}">
		<li class="page-link">
		<a href="./Q_ListAction.q?page=${startPage-10}">[이전]</a>
		</li>
	</c:if>
	
	<!-- 각 블럭에 10개의 페이지 출력 -->
	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<c:if test="${i == page}">	<!-- 현재 페이지 -->
			<ul class="pagination justify-content-end">
				<li class="page-item disabled"><li class="page-item active">
				<a class="page-link" href="#">${i}</a>
				</li>
		    </ul>
		</c:if>
	
	<c:if test="${i != page}">	<!-- 현재 페이지가 아닌 경우 -->
		<li class="page-item">
			<a class="page-link" href="./Q_ListAction.q?page=${i}">${i}</a>
		</li>
	</c:if>
	</c:forEach>
	
	<!-- 다음 블럭으로 이동  -->
	<c:if test="${endPage < pageCount}">
	<a href="./Q_ListAction.q?page=${startPage+10}">[다음]</a>
	</c:if>
	       
	<!-- 마지막 페이지로 이동 -->
		<li class="page-item"> 
			<a class="page-link" href="./Q_ListAction.q?page=${pageCount}" style="text-decoration:none">>></a>
			</li>
		</ul>
	</nav>
</c:if>

	<div class="site-footer">
      <div class="container">
        <div class="row justify-content-center copyright">
          <div class="col-lg-7 text-center">
            <div class="widget">
              <ul class="social list-unstyled">
                <li><a href="#"><span class="icon-facebook"></span></a></li>
                <li><a href="#"><span class="icon-twitter"></span></a></li>
                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                <li><a href="#"><span class="icon-youtube-play"></span></a></li>
              </ul>
            </div>

            <div class="widget">
                <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" target="_blank" rel="nofollow noopener">Untree.co</a> &bullet; <a href="https://untree.co/license" target="_blank" rel="nofollow noopener">License</a>
                </p>
            </div>
            	</div>
			</div>
		</div>
	</div>

    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    
    <script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>
    <script src="<%=request.getContextPath()%>/main/js/jquery-3.4.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/aos.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/imagesloaded.pkgd.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/isotope.pkgd.min.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/jquery.animateNumber.min.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/jquery.waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/main/js/custom.js"></script>

  </body>
</html>