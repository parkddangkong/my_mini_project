<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<style>
.header_member_select {
	font-family: 'Gilroy', 'NotoSansKR', Malgun Gothic, '맑은 고딕', Dotum, '돋움', sans-serif;
	justify-content: space-between;
	align-items: center;
	display: flex;
	width: 170px;
	font-size: 10px;
	margin-left: 1060px;
	padding-top: 13px;
}

.header_member_select>.header_login>a, .header_member_select>.header_customer_service>a
	{
	text-decoration: none;
	color: black; /* 글자색을 검은색으로 설정 */
}

.header_member_select>.header_join>a {
	text-decoration: none;
	color: brown; /* 글자색을 검은색으로 설정 */
}

.header_line {
	color: gray;
	opacity: 0.5;
}

.header_menu_all {
	display: flex;
	padding-top: 10px;
	border: 1px solid black;
	justify-content: center;
}

.andar_logo img {
	max-width: 100%;
	width: 80px;
	padding-right: 20px;
}

.header_dropdown {
	position: relative;
	display: inline-block;
	text-align: center; /* 버튼 내용 중앙 배치 */
}

.header_dropdown>button {
	border: none;
	background-color: white;
	cursor: pointer;
}
.header_dropdown_festival_btn{
	color: #E55427;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 110px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	left: 50%; /* 현재 위치에서 왼쪽으로 50% 이동 */
    transform: translateX(-50%); /* 요소 자체를 왼쪽으로 50% 이동 */
}

.dropdown-content a {
	color: black;
	padding: 10px 12px;
	text-decoration: none;
	display: block;
	font-size: 12px;
	justify-content: center;
	text-align: center;
}
.dropdown-content_best{
	min-width: 130px;
}
.dropdown-content_man{
	min-width: 150px;
}

.dropdown-content a:hover {
	color: #c24017;
	font-weight: bold;
}

.header_dropdown_festival:hover .dropdown-content_festival, .header_dropdown_best:hover .dropdown-content_best, .header_dropdown_new:hover .dropdown-content_new
 ,.header_dropdown_woman:hover .dropdown-content_woman, .header_dropdown_man:hover .dropdown-content_man, .header_dropdown_water:hover .dropdown-content_water,
 .header_dropdown_fitness_accessory:hover .dropdown-content_fitness_accessory
 {
	display: block;
}

.dropdown-content>.header_category_fall_festival_all {
	color: #c24017;
}
.maketing_banner{
	position: relative;
    border: 1px solid black;
    background-color: black;
    margin: -10px;
    height: 25px;
    text-align: center;
    font-weight: bold;
    padding-top: 10px;
    font-size: 10px;
    text-decoration: none;
    
}
.maketing_banner > a{
 	display: block;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    text-decoration: none;
    color: white;
    line-height: 25px; /* 텍스트를 수직 중앙으로 위치시키기 위해 높이와 동일하게 설정 */
    padding: 5px 0;
}
</style>
<meta charset="UTF-8">
<title>여긴 안다르 헤더</title>
</head>
<body>

	<div class="maketing_banner">
		<a href="${cpath }/">
			일단 모르겠다 아무거나 사세요 >
		</a>
	</div>

	<div class="header_member_select">
		<div class="header_login">
			<a href="${cpath }/member/login">로그인</a>
		</div>
		<br>
		<div class="header_line">|</div>
		<br>
		<div class="header_join">
			<a href="${cpath }/member/join">회원가입</a>
		</div>
		<br>
		<div class="header_line">|</div>
		<br>
		<div class="header_customer_service">
			<a href="${cpath }/member/customer_service">고객센터</a>
		</div>
	</div>
	<br>
	<div class="header_menu_all">
		<div class="andar_logo">
			<a href="${cpath }">
				<img src="https://www.andar.co.kr/web/upload/logo/main_logo.svg">
			</a>
		</div>

		<div class="header_dropdown header_dropdown_festival">
			<button class="header_dropdown_festival_btn"
				onclick="window.location.href='${cpath}/category/fall_festival'">가을 페스티벌</button>
			<div class="dropdown-content dropdown-content_festival">
				<a href="${cpath}/category/fall_festival" class="header_category_fall_festival_all">전체</a> 
				<a href="${cpath}/category/woman">우먼즈</a> 
				<a href="${cpath}/category/man">맨즈</a>
			</div>
		</div>

		<div class="header_dropdown header_dropdown_best">
			<button class="header_dropdown_best_btn"
				onclick="window.location.href='${cpath}/category/best'">베스트</button>
			<div class="dropdown-content dropdown-content_best">
				<a href="${cpath}/category/best">전체</a>
				<a href="${cpath}/category/best_woman">우먼즈</a> 
				<a href="${cpath}/category/best_men">맨즈</a> 
				<a href="${cpath}/category/best_junior">주니어</a>
				<a href="${cpath}/category/best_fitness_accessory">홈트용품/액세사리</a>
			</div>
		</div>
		
		<div class="header_dropdown header_dropdown_new">
			<button class="header_dropdown_new_btn"
				onclick="window.location.href='${cpath}/category/new'">신상</button>
			<div class="dropdown-content dropdown-content_new">
				<a href="${cpath}/category/new">전체</a>
				<a href="${cpath}/category/new_woman">우먼즈</a> 
				<a href="${cpath}/category/new_men">맨즈</a> 
					<a href="${cpath}/category/new_date">신상 기간할인</a> 
			</div>
		</div>
		
		<div class="header_dropdown header_dropdown_woman">
			<button class="header_dropdown_woman_btn"
				onclick="window.location.href='${cpath}/category/woman'">우먼즈</button>
			<div class="dropdown-content dropdown-content_woman">
				<a href="${cpath}/category/woman">전체</a>
				<a href="${cpath}/category/woman_bottom">하의</a>
				<a href="${cpath}/category/woman_top">상의</a> 
				<a href="${cpath}/category/woman_leggings">레깅스</a> 
				<a href="${cpath}/category/woman_jogger">조거팬츠</a> 
				<a href="${cpath}/category/woman_t-shirt">티셔츠</a> 
				<a href="${cpath}/category/woman_sports_bra_top">스포츠 브라탑</a> 
				<a href="${cpath}/category/woman_skirt">원피스/스커트</a> 
				<a href="${cpath}/category/woman_outer">아우터</a> 
				<a href="${cpath}/category/woman_set">세트</a> 
				<a href="${cpath}/category/woman_recommend">운동별추천</a> 
				<a href="${cpath}/category/woman_swimwear">스윔웨어</a> 
			</div>
		</div>
		
		<div class="header_dropdown header_dropdown_man">
			<button class="header_dropdown_man_btn"
				onclick="window.location.href='${cpath}/category/man'">맨즈</button>
			<div class="dropdown-content dropdown-content_man">
				<a href="${cpath}/category/man">전체</a>
				<a href="${cpath}/category/man_bottom">하의</a>
				<a href="${cpath}/category/man_top">상의</a> 
				<a href="${cpath}/category/man_t-shirt">티셔츠</a> 
				<a href="${cpath}/category/man_slacks">슬랙스</a> 
				<a href="${cpath}/category/man_jeans">청바지</a> 
				<a href="${cpath}/category/man_jogger">조거팬츠</a> 
				<a href="${cpath}/category/man_shirt">셔츠</a> 
				<a href="${cpath}/category/man_business wear">애슬레저 비즈니스웨어</a> 
				<a href="${cpath}/category/man_outer">아우터</a> 
				<a href="${cpath}/category/man_set">세트</a> 
				<a href="${cpath}/category/man_ARM">A.R.M</a> 
				<a href="${cpath}/category/man_swimwear">스윔웨어</a> 
			</div>
		</div>
		
		<div class="header_dropdown header_dropdown_junior">
			<button class="header_dropdown_junior_btn"
				onclick="window.location.href='${cpath}/category/junior'">주니어</button>
			<div class="dropdown-content dropdown-content_junior">
				<a href="${cpath}/category/junior">전체</a>
				<a href="${cpath}/category/junior_boy">남</a> 
				<a href="${cpath}/category/junior_girl">여</a>
				<a href="${cpath}/category/junior_story">주니어 스토리</a>  
			</div>
		</div>
		
		<div class="header_dropdown header_dropdown_thanksgiving">
			<button class="header_dropdown_thanksgiving_btn"
				onclick="window.location.href='${cpath}/category/thanksgiving'">추석선물 상품권</button>
		</div>
		
		<div class="header_dropdown header_dropdown_new_airact">
			<button class="header_dropdown_new_airact_btn"
				onclick="window.location.href='${cpath}/category/new_airact'">New 에어엑스퍼트</button>
		</div>
		
		<div class="header_dropdown header_dropdown_water">
			<button class="header_dropdown_water_btn"
				onclick="window.location.href='${cpath}/category/water'">워터 컬렉션</button>
			<div class="dropdown-content dropdown-content_water">
				<a href="${cpath}/category/water">전체</a>
				<a href="${cpath}/category/water_woman">남</a> 
				<a href="${cpath}/category/water_man">여</a>
			</div>
		</div>
		
		<div class="header_dropdown header_dropdown_fitness_accessory">
			<button class="header_dropdown_fitness_accessory_btn"
				onclick="window.location.href='${cpath}/category/fitness_accessory'">워터 컬렉션</button>
			<div class="dropdown-content dropdown-content_fitness_accessory">
				<a href="${cpath}/category/fitness_accessory">전체</a>
				<a href="${cpath}/category/fitness_accessory_home">홈트용품</a> 
				<a href="${cpath}/category/fitness_accessory_socks_sneakers">삭스/운동화</a>
				<a href="${cpath}/category/fitness_accessory_bag">가방</a>
				<a href="${cpath}/category/fitness_accessory_head_band">모자/헤어밴드</a>
				<a href="${cpath}/category/fitness_accessory_marsk">마스크</a>
			</div>
		</div>
		
		<div class="sreach_product">
			<input type="text" placeholder="원하는 상품을 검색하세요!"><img src="https://www.andar.co.kr/iv/Icon_search.png">	
		</div>	
		<div class="product_basket">
			<img src="https://www.andar.co.kr/iv/Icon_basket.png">
		</div>
		
		<div class="header_manu_all">
			<img src="https://www.andar.co.kr/iv/icon_menu.png">
		</div>
		
		
	</div>



</body>
</html>