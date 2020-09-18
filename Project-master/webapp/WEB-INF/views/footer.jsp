<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value="${path}/res/css/footer.css"/>"/>
</head>
<body>
<!-- footer -->
<div id="footer_wrap">
	<div id="download">
	<span>밥풀 앱 다운로드</span>
	<a id="android" href="">
		<div id="download_img">
		<img src="<c:url value="${path}/res/image/androidapp.png"/>" height="40px"/>
		</div>
	</a>
	</div>
	<div id="footer_container">
		<div id="footer_logo">
		<a href="">
			밥풀
        </a>
        </div>
		<div id="footer_slogan">
		밥풀은 맛있다.<br>
		바밤바도 맛있다.
		</div>
		
		<div id="footer_count">
		지금까지 총 0000000명의 사용자가 00000개의 정성스런 리뷰를 남기셨고,<br>
		밥풀 예약 서비스를 이용하여 00000번의 식사를 하셨습니다.
		</div>
		
		<div id="footer_explan">
		(주) 밥풀 대표이사: 이예찬
		<span>|</span>
		사업자등록번호: 1111111<br>
		주소: 서울시 금천구 가산동
		<span>|</span>
		대표번호: 02-111-1111
		<span>|</span>
		이메일: Team1@bobpool.com				
		</div>
		
		<div id="info">
			<a href="">밥풀소개</a>
			<a href="term">
			<span>|</span>
			개인정보 취급방침</a>
			<a href="notice">
			<span>|</span>
			공지사항</a>
		</div>
	</div>
</div>
</body>
</html>