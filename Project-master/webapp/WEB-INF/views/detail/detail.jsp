<%@page import="com.javaex.model.ShopVo"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>밥풀 - 카페/베이커리</title>

<link rel="stylesheet" href="<c:url value='${path}/res/css/detail.css?ver=1'/>">
<link rel="stylesheet" href="<c:url value='${path}/res/css/bootstrap.min.css'/>">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<%@include file="../top_bar.jsp"%>
<body>

	<!-- container -->
	<div id="container">
		<%
			ShopVo shopvo = (ShopVo) request.getAttribute("shopOne");
		
			pageContext.setAttribute("star", shopvo.getShop_score());
			pageContext.setAttribute("shopidx", shopvo.getShop_idx());
		%>

		<!-- 상단에 배너가 있는 레이아웃 -->
		<div id="banner_wrap">
			<div id="banner" class="restaurant_detail">
				<div class="i_wrap background">
					<div class="film"></div>
					<img src="<c:url value='${path}/res/image/walkerhill.jpg'/>" alt="">
				</div>
				<div class="inner_wrap">
					<div class="inner">
						<div class="title">
							<span class="name"><%=shopvo.getShop_title()%></span> <span
								class="info"><%=shopvo.getShop_location()%> · <%=shopvo.getFood_type()%>
							</span>
							<div class="count border_radius soft">
								예약
								<%=shopvo.getShop_reserve()%>건/ 리뷰
								<%=shopvo.getShop_review()%>건 / 조회
								<%=shopvo.getShop_view()%>건
							</div>
							<button class="empty " data-type="poing.restaurants.favorite"
								data-id="28654">
								찜하기<i class="icon heart large "></i>
							</button>
						</div>
						<ul class="info_list">
							<li class="item grade">
								<div class="name">별점</div>
								<div class="text">
									<div id="star_score"></div>
									<div id="shop_score">
										<span><%=shopvo.getShop_score()%></span>
									</div>
								</div>
							</li>
							<li class="item">
								<div class="name">전화번호</div>
								<div class="text">
									<%=shopvo.getShop_phone()%>
								</div>
							</li>
							<li class="item">
								<div class="name">주소</div>
								<div class="text" id="shop_addr">
									<%=shopvo.getShop_addr()%></div>
							</li>
							<li class="item">
								<div class="name">영업시간</div>
								<div class="text">
									<%=shopvo.getShop_time()%>
								</div>
							</li>
							<li class="item">
								<div class="name">휴무일</div>
								<div class="text"><%=shopvo.getShop_close()%></div>
							</li>

							<li class="item">
								<div class="name">예산</div>
								<div class="text"><%=shopvo.getBudget()%></div>
							</li>
							<li class="item description">
								<div class="name">한줄 설명</div>
								<div class="text"><%=shopvo.getShop_comment()%></div>
							</li>
						</ul>
						<div class="slider">
							<div id="detail_slider">
								<div class="i_wrap">
									<div class="image" data-index="0" id="shop_photo"
										style="width:319px; height:213px; background-image:url(<c:url value='${path}/res/image/walkerhill1.jpg'/>)"
										title="양재해장국 매장 이미지"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<script>/*$.ajax({url: '/restaurant/AjaxRestaurantInfo', type:'POST', data:{id:"28654", t:true} });*/</script>
		</div>
		<div id="content_wrap">
			<div id="content" class="detail review">
				<ul class="tab">
					<li class="item selected" id="info"><span>정보</span></li>
					<li class="item" id="photo"><span>포토</span></li>
					<li class="item" id="review"><span>리뷰</span></li>
					<li class="item" id="menu"><span>메뉴</span></li>
					<li class="item" id="map"><span>지도</span></li>
				</ul>
			</div>

			<div id="detail_content">
				<div id="import"></div>
				<div id="naverMap"></div>
			</div>
			<div id="sidebar_wrap" class="detail">
				<div class="container">

               <!-- Button to Open the Modal -->
               <button type="button" class="btn btn-primary" data-toggle="modal"
                  data-target="#myModal" id="reservation_btn">예약 하기</button>

               <!-- The Modal -->
               <div class="modal fade" id="myModal">
                  <div class="modal-dialog modal-dialog-centered">
                     <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                           <h4 class="modal-title">예약하기</h4>
                           <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body" id="modal-body">
                           <form action="" method="" class="a">
                              <div class="shop_title_detail_div">가게 이름</div>
                              <input type="text" class="shop_title_detail" name="shop_title">
                              <div class="res_date_detail_div">예약 날짜</div>
                              <select class="res_date_detail" name="res_date">
                                 <option value="2020">2020
                                 <option value="2021">2021
                                 <option value="2022">2022
                                 <option value="2023">2023
                                 <option value="2024">2024
                                 <option value="2025">2025
                                 <option value="2026">2026
                                 <option value="2027">2027
                                 <option value="2028">2028
                                 <option value="2029">2029
                                 <option value="2030">2030
                              </select>
                              <div class="res_date_detail_div2">년</div>
                              <select class="res_date_detail2" name="res_date">
                                 <option value="1">1
                                 <option value="2">2
                                 <option value="3">3
                                 <option value="4">4
                                 <option value="5">5
                                 <option value="6">6
                                 <option value="7">7
                                 <option value="8">8
                                 <option value="9">9
                                 <option value="10">10
                                 <option value="11">11
                                 <option value="12">12
                              </select>
                              <div class="res_date_detail_div3">월</div>
                              <select class="res_date_detail3" name="res_date">
                                 <option value="0">0
                                 <option value="1">1
                                 <option value="2">2
                                 <option value="3">3
                                 <option value="4">4
                                 <option value="5">5
                                 <option value="6">6
                                 <option value="7">7
                                 <option value="8">8
                                 <option value="9">9
                                 <option value="10">10
                                 <option value="11">11
                                 <option value="12">12
                                 <option value="13">13
                                 <option value="14">14
                                 <option value="15">15
                                 <option value="16">16
                                 <option value="17">17
                                 <option value="18">18
                                 <option value="19">19
                                 <option value="20">20
                                 <option value="21">21
                                 <option value="22">22
                                 <option value="23">23
                                 <option value="23">24
                                 <option value="23">25
                                 <option value="23">26
                                 <option value="23">27
                                 <option value="23">28
                                 <option value="23">29
                                 <option value="23">30
                                 <option value="23">31
                              </select>
                              <div class="res_date_detail_div4">일</div>
                              <div class="res_time_detail_div">예약 시간</div>
                              <select class="res_time_detail" name="res_date">
                                 <option value="0">0
                                 <option value="1">1
                                 <option value="2">2
                                 <option value="3">3
                                 <option value="4">4
                                 <option value="5">5
                                 <option value="6">6
                                 <option value="7">7
                                 <option value="8">8
                                 <option value="9">9
                                 <option value="10">10
                                 <option value="11">11
                                 <option value="12">12
                                 <option value="13">13
                                 <option value="14">14
                                 <option value="15">15
                                 <option value="16">16
                                 <option value="17">17
                                 <option value="18">18
                                 <option value="19">19
                                 <option value="20">20
                                 <option value="21">21
                                 <option value="22">22
                                 <option value="23">23
                              </select>
                              <div class="res_time_detail_div2">시</div>
                              <select class="res_time_detail2" name="res_date">
                                 <option value="00">00
                                 <option value="10">10
                                 <option value="20">20
                                 <option value="30">30
                                 <option value="40">40
                                 <option value="50">50
                              </select>
                              <div class="res_time_detail_div3">분</div>
                              <div class="res_customer_detail_div">예약 인원</div>
                              <input type="text" class="res_customer_detail"
                                 name="res_customer">
                              <div class="res_customer_detail_div2">명</div>
                              <input type="submit" value="예약하기" class="reservation_submit">
                           </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                           <button type="button" class="btn btn-secondary"
                              data-dismiss="modal">Close</button>
                        </div>

                     </div>
                  </div>
               </div>

            </div>
				<div id="editor_recommend_restaurant" class="sidebar">
					<div class="title">추천 리뷰어</div>
					<ul class="list">
						<li class="item"><a class="i_wrap" href="/timeline/236031">
								<i class="image border_radius circle"
								style="background-image:url(<c:url value="${path}/res/image/lee.jpg"/>)"></i>
						</a>
							<div class="detail">
								<div class="name">
									<a href="/timeline/236031">이수진</a>
								</div>
								<div class="info">
									101 리뷰, <span data-type="poing.user.follow" data-id="236031">113</span>
								</div>

							</div></li>
						<li class="item"><a class="i_wrap" href="/timeline/336595">
								<i class="image border_radius circle"
								style="background-image: url(../pics/detail/lee.jpg)"></i>
						</a>
							<div class="detail">
								<div class="name">
									<a href="/timeline/336595">박소은</a>
								</div>
								<div class="info">
									120 리뷰, <span data-type="poing.user.follow" data-id="336595">64</span>
								</div>

							</div></li>
						<li class="item"><a class="i_wrap" href="/timeline/611090">
								<i class="image border_radius circle"
								style="background-image: url(../pics/detail/lee.jpg)"></i>
						</a>
							<div class="detail">
								<div class="name">
									<a href="/timeline/611090">jy</a>
								</div>
								<div class="info">
									455 리뷰, <span data-type="poing.user.follow" data-id="611090">142</span>
								</div>

							</div></li>
						<li class="item"><a class="i_wrap" href="/timeline/537740">
								<i class="image border_radius circle"
								style="background-image: url(../pics/detail/lee.jpg)"></i>
						</a>
							<div class="detail">
								<div class="name">
									<a href="/timeline/537740">김규철</a>
								</div>
								<div class="info">
									35 리뷰, <span data-type="poing.user.follow" data-id="537740">14</span>
								</div>

							</div></li>
						<li class="item"><a class="i_wrap" href="/timeline/599857">
								<i class="image border_radius circle"
								style="background-image: url(../pics/detail/lee.jpg)"></i>
						</a>
							<div class="detail">
								<div class="name">
									<a href="/timeline/599857">양정아</a>
								</div>
								<div class="info">
									67 리뷰, <span data-type="poing.user.follow" data-id="599857">24</span>
								</div>

							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
	<script>
        $(document).ready(function(){     		
            $("#content > ul > li > span").mouseover(function(){
            	$(this).css('cursor','pointer');
            	console.log($(this).parent());
            	console.dir($(this).parent());
            });
            
            
            $("#content > ul > li > span").on("click", function(){
            	$(this).parent().addClass("selected").siblings().removeClass("selected");
                
            	loadPage();
            });
            
            $("#import").load("detail/info.do", {"shopidx" : ${shopidx}});
            
            function loadPage(){
            	
            	if($("#content > ul > .item.selected")[0] == $("#info")[0]) {
            		$("#naverMap").hide();
            		$("#import").unload();
            		$("#import").load("detail/info.do", {"shopidx" : ${shopidx}});
            		$("#import").show();
            	}
            	else if($("#content > ul > .item.selected")[0] == $("#photo")[0]) {
            		$("#naverMap").hide();
            		$("#import").unload();
            		$("#import").load("detail/photo.do")
            		$("#import").show();
            	}
				else if($("#content > ul > .item.selected")[0] == $("#review")[0]){
					$("#naverMap").hide();
					$("#import").unload();
            		$("#import").load("detail/review.do")
            		$("#import").show();
            	}
            	else if($("#content > ul > .item.selected")[0] == $("#menu")[0]){
            		$("#naverMap").hide();
            		$("#import").unload();
            		$("#import").load("detail/menu.do")
            		$("#import").show();
            	}
            	else if($("#content > ul > .item.selected")[0] == $("#map")[0]){
            		$("#import").hide();
            		$("#import").unload();
            		$("#naverMap").show();
            	} 
            }
            
            //지도 관련
$.getScript('https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=cyozvucbzs', function(){
	var cityhall = new naver.maps.LatLng(37.5666805, 126.9784147),
    map = new naver.maps.Map('naverMap', {
        center: cityhall,
        zoom: 15
    }),
    marker = new naver.maps.Marker({
        map: map,
        position: cityhall,
    });

 		var contentString = [
    '<div class="iw_inner">',
    '   <h3>${shopOne.shop_title}</h3>',
    '   <p>${shopOne.shop_addr}<br/>',
    '       <img src="<c:url value='${path}/res/image/walkerhill1.jpg'/>" width="55" height="55" alt="서울시청" class="thumb" /><br />',
    '       ${shopOne.shop_phone} | ${shopOne.shop_time} | ${shopOne.shop_close}<br/>',
    '   </p>',
    '</div>'
].join('');

var infowindow = new naver.maps.InfoWindow({
content: contentString
});

naver.maps.Event.addListener(marker, "click", function(e) {
if (infowindow.getMap()) {
    infowindow.close();
} else {
    infowindow.open(map, marker);
}
}); 

			});
        //지도관련 끝
});
    </script>
</body>
</html>
